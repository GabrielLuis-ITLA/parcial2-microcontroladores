#include "stdint.h"
#include "stdbool.h"
#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_ctimer.h"
#include "fsl_gpio.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "fsl_reset.h"


volatile uint32_t milisegundos_totales = 0;
volatile uint8_t contador_rebotes = 0;
volatile bool boton_presionado = false;

void CTIMER0_IRQHandler(void)
{
    uint32_t banderas = CTIMER_GetStatusFlags(CTIMER0);
    CTIMER_ClearStatusFlags(CTIMER0, banderas);

    milisegundos_totales++;

    if (GPIO_PinRead(GPIO1, 7) == 0)
    {
        if (contador_rebotes < 30)
        {
            contador_rebotes++;
        }
        else if (contador_rebotes == 30)
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
    BOARD_InitBootPins();
    BOARD_InitBootClocks();

    CLOCK_EnableClock(kCLOCK_GateCTIMER0);
    CLOCK_EnableClock(kCLOCK_GateGPIO1);

    RESET_ReleasePeripheralReset(kCTIMER0_RST_SHIFT_RSTn);
    RESET_ReleasePeripheralReset(kGPIO1_RST_SHIFT_RSTn);

    BOARD_InitDebugConsole();
    PRINTF("Iniciando sistema...\r\n");

    gpio_pin_config_t sw_config = {
       .pinDirection  = kGPIO_DigitalInput,
       .outputLogic = 0,
    };
    GPIO_PinInit(GPIO1, 7, &sw_config);

    ctimer_config_t config;
    CTIMER_GetDefaultConfig(&config);
    CTIMER_Init(CTIMER0, &config);
    
    ctimer_match_config_t matchConfig;
    matchConfig.enableCounterReset  = true;
    matchConfig.enableCounterStop   = false;
    matchConfig.matchValue          = (96000000/1000);
    matchConfig.outControl          = kCTIMER_Output_NoAction;
    matchConfig.outPinInitState     = false;
    matchConfig.enableInterrupt     = true;

    CTIMER_SetupMatch(CTIMER0, kCTIMER_Match_0, &matchConfig);

    EnableIRQ(CTIMER0_IRQn);
    CTIMER_StartTimer(CTIMER0);

    PRINTF("Sistema iniciado. Esperando boton...\r\n");

    while (1)
    {
        if (boton_presionado)
        {
            PRINTF("Boton presionado!(Filtro Ctimer)\r\n");
            boton_presionado = false;
        }
    }
}