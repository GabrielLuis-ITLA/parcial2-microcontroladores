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

#define UMBRAL_REBOTES 30
#define CTIMER_FREQ_1MS (96000000/1000)

volatile uint32_t milisegundos_totales = 0;
volatile uint8_t contador_rebotes = 0;
volatile bool boton_presionado = false;

void Init_LEDs(void);

void Init_Hardware_Base(void);
void Init_Boton_SW2(void);
void Init_Filtro_Ctimer(void);

void CTIMER0_IRQHandler(void)
{
    uint32_t banderas = CTIMER_GetStatusFlags(CTIMER0);
    CTIMER_ClearStatusFlags(CTIMER0, banderas);

    milisegundos_totales++;

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
        if (boton_presionado)
        {
            LPADC_DoSoftwareTrigger(ADC1, 1U);
            lpadc_conv_result_t resultado_adc;

            while (!LPADC_GetConvResult(ADC1, &resultado_adc))
            {
            }
                uint16_t valor_bruto = resultado_adc.convValue >> 3;
                PRINTF("Boton presionado! Valor Potenciometro: %d\r\n", valor_bruto);

                GPIO_PortToggle(GPIO3, 1u << 1); // Toggle LED de Actividad
                boton_presionado = false;
            
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