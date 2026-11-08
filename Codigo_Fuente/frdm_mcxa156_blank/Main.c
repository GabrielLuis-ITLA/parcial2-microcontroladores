#include "stdint.h"
#include "stdbool.h"
#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_ctimer.h"
#include "fsl_gpio.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "fsl_reset.h"
#include "peripherals.h"
#include "fsl_lpadc.h"
#include "fsl_lpuart.h"
#include <string.h>
#include <stdio.h>

#define UMBRAL_REBOTES 30
#define CTIMER_FREQ_1MS (12000000/1000)

volatile uint32_t milisegundos_totales = 0;
volatile uint8_t contador_rebotes = 0;
volatile bool boton_presionado = false;
volatile uint16_t valor_bruto = 0;
volatile uint8_t PCT = 0;
volatile uint8_t THR = 70; // Umbral del 70%

typedef enum { PAUSE, RUN } system_state_t;
volatile system_state_t system_state = RUN;

volatile bool flag_100ms_adc = false;
volatile bool flag_500ms_led = false;
volatile bool flag_1000ms_telemetry = false;

volatile uint16_t count_100ms = 0;
volatile uint16_t count_500ms = 0;
volatile uint16_t count_1000ms = 0;

volatile char rx_buffer[35];
volatile uint8_t rx_index = 0;

void Init_LEDs(void);

void Init_Hardware_Base(void);
void Init_Boton_SW2(void);
void Init_Filtro_Ctimer(void);

void CTIMER0_IRQHandler(void)
{
    uint32_t banderas = CTIMER_GetStatusFlags(CTIMER0);
    CTIMER_ClearStatusFlags(CTIMER0, banderas);

    milisegundos_totales++;

    count_100ms++;
    if (count_100ms >= 100)
    {
        count_100ms = 0;
        flag_100ms_adc = true;
    }

    count_500ms++;
    if (count_500ms >= 500)
    {
        count_500ms = 0;
        flag_500ms_led = true;
    }

    count_1000ms++;
    if (count_1000ms >= 1000)
    {
        count_1000ms = 0;
        flag_1000ms_telemetry = true;
    }   

    if (GPIO_PinRead(GPIO1, 7) == 0)
    {
        if (contador_rebotes < UMBRAL_REBOTES)
        {
            contador_rebotes++;
        }
        else if (contador_rebotes == UMBRAL_REBOTES)
        {
            boton_presionado = true;
            contador_rebotes++;
        }
    }
    else
    {
        contador_rebotes = 0;
    }
}

int main(void)
{
    Init_Hardware_Base();
    Init_Boton_SW2();
    Init_Filtro_Ctimer();
    Init_LEDs();

    PRINTF("Sistema iniciado. Esperando boton...\r\n");

    while (1)
    {
        if (kLPUART_RxDataRegFullFlag & LPUART_GetStatusFlags(LPUART0))
        {
            char c = LPUART_ReadByte(LPUART0);
            if (c == '\n' || c == '\r')
            {
                if (rx_index > 0)
                {
                    rx_buffer[rx_index] = '\0';

                    if (strcmp((char*)rx_buffer, "STATUS") == 0)
                    {
                        PRINTF("t=%d;ADC=%d;PCT=%d;THR=%d;MODE=%s;ALARM=%d\r\n",
                            milisegundos_totales,
                            valor_bruto,
                            PCT,
                            THR,
                            system_state == RUN ? "RUN" : "PAUSE",
                            GPIO_PinRead(GPIO3, 31));
                    }
                    else if (strcmp((char*)rx_buffer, "START") == 0)
                    {
                        system_state = RUN;
                        if (PCT >= THR) {
                            GPIO_PinWrite(GPIO3, 31, 1); // Encender LED de Alarma
                        } else {
                            GPIO_PinWrite(GPIO3, 31, 0); // Apagar LED de Alarma
                        }
                        PRINTF("OK RUN\r\n");
                    }
                    else if (strcmp((char*)rx_buffer, "STOP") == 0)
                    {
                        system_state = PAUSE;
                        GPIO_PinWrite(GPIO3, 31, 0); // Apagar LED de Alarma
                        PRINTF("OK PAUSE\r\n");
                    }
                    else if (strncmp((char*)rx_buffer, "THR ", 4) == 0)
                    {
                        int new_thr = 0;
                        char extra[10] = "";

                        int items = sscanf((char*)rx_buffer, "THR %d%s", &new_thr, extra);
                        if (items == 1 && new_thr >= 10 && new_thr <= 95)
                        {
                            THR = (uint8_t)new_thr;
                            PRINTF("OK THR=%d\r\n", THR);
                        }
                        else
                        {
                            PRINTF("ERR\r\n");
                        }
                    }
                    else
                    {
                        PRINTF("ERR\r\n");
                    }

                    memset((void*)rx_buffer, 0, sizeof(rx_buffer));
                    rx_index = 0;
                }
            }
            else
            {
                if (!(rx_index == 0 && (c == ' ' || c == '\n' || c == '\r')))
                {
                    if (rx_index < 32) 
                    {
                        rx_buffer[rx_index] = c;
                        rx_index++;
                    }
                }
            }
        }

        if (boton_presionado)
        {
            if (system_state == RUN) {
                system_state = PAUSE;

                GPIO_PinWrite(GPIO3, 31, 0); // Apagar LED de Alarma
            } else {
                system_state = RUN;
                if (PCT >= THR) {
                    GPIO_PinWrite(GPIO3, 31, 1); // Encender LED de Alarma
                } else {
                    GPIO_PinWrite(GPIO3, 31, 0); // Apagar LED de Alarma
                }
            }
            boton_presionado = false;
        }

        if (flag_100ms_adc)
        {
            LPADC_DoSoftwareTrigger(ADC1, 1U);
            lpadc_conv_result_t result_adc;

            while (!LPADC_GetConvResult(ADC1, &result_adc)) 
            {
            }

            valor_bruto = result_adc.convValue >> 3U;
            PCT = (100 * valor_bruto) / 4095;

            if (system_state == RUN) {
                if (PCT >= THR) {
                    GPIO_PinWrite(GPIO3, 31, 1); // Encender LED de Alarma
                } else if (PCT < (THR - 5)) {
                    GPIO_PinWrite(GPIO3, 31, 0); // Apagar LED de Alarma
                }
            }

            else {
                GPIO_PinWrite(GPIO3, 31, 0); // Apagar LED de Alarma
            }

            flag_100ms_adc = false;
        }
        
        if (flag_500ms_led)
        {
            GPIO_PortToggle(GPIO3, 1U << 1U);
            flag_500ms_led = false;
        }

        if (flag_1000ms_telemetry)
        {
            PRINTF("t=%d;ADC=%d;PCT=%d;THR=%d;MODE=%s;ALARM=%d\r\n", 
            milisegundos_totales, 
            valor_bruto, 
            PCT, 
            THR, 
            system_state == RUN ? "RUN" : "PAUSE", 
            GPIO_PinRead(GPIO3, 31));
            
            flag_1000ms_telemetry = false;
        } 
    }     
}  

void Init_Hardware_Base(void)
{
    BOARD_InitBootPins();
    BOARD_InitBootClocks();

    CLOCK_EnableClock(kCLOCK_GateCTIMER0);
    CLOCK_EnableClock(kCLOCK_GateGPIO1);
    CLOCK_EnableClock(kCLOCK_GateGPIO3);

    RESET_ReleasePeripheralReset(kCTIMER0_RST_SHIFT_RSTn);
    RESET_ReleasePeripheralReset(kGPIO1_RST_SHIFT_RSTn);
    RESET_ReleasePeripheralReset(kGPIO3_RST_SHIFT_RSTn);

    BOARD_InitDebugConsole();
    PRINTF("Iniciando sistema...\r\n");
    BOARD_InitPeripherals();
}

void Init_Boton_SW2(void)
{
    gpio_pin_config_t sw_config = {
       .pinDirection  = kGPIO_DigitalInput,
       .outputLogic = 0,
    };
    GPIO_PinInit(GPIO1, 7, &sw_config);
}

void Init_Filtro_Ctimer(void)
{
    ctimer_config_t config;
    CTIMER_GetDefaultConfig(&config);
    CTIMER_Init(CTIMER0, &config);
    
    ctimer_match_config_t matchConfig;
    matchConfig.enableCounterReset  = true;
    matchConfig.enableCounterStop   = false;
    matchConfig.matchValue          = CTIMER_FREQ_1MS;
    matchConfig.outControl          = kCTIMER_Output_NoAction;
    matchConfig.outPinInitState     = false;
    matchConfig.enableInterrupt     = true;

    CTIMER_SetupMatch(CTIMER0, kCTIMER_Match_0, &matchConfig);

    EnableIRQ(CTIMER0_IRQn);
    CTIMER_StartTimer(CTIMER0);
}

void Init_LEDs(void)
{
    gpio_pin_config_t led_config = {
       .pinDirection  = kGPIO_DigitalOutput,
       .outputLogic = 0,
    };

    // P3_1 - LED de Actividad
    GPIO_PinInit(GPIO3, 1, &led_config);

    // P3_31 - LED de Alarma
    GPIO_PinInit(GPIO3, 31, &led_config);
}

void SysTick_Handler(void)
{
}