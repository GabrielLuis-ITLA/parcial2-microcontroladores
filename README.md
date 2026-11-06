# Parcial 2 - Monitor de Señal Analógica con Alarma

**Autor:** [Gabriel Isac Luis Fernandez]
**Matrícula:** [2024-0990]
**Fecha:** Noviembre 2026

## 1. Hardware y Herramientas
* **Placa de Desarrollo:** NXP FRDM-MCXA156
* **Microcontrolador:** [MCXA156]
* **Entorno de Desarrollo (IDE):** [VS Code con extension MCUXpresso v26.9.44]
* **Otras herramientas:** MCUXpresso Config Tools, terminal serial (PuTTY/TeraTerm).

## 2. Mapa de Pines y Esquema de Conexiones
| Componente | Pin del Microcontrolador | Conexión / Nivel Eléctrico |
| :--- | :--- | :--- |
| Potenciómetro (Cursor) | `P1_10 (A0)` | Conectado a canal ADC. Extremos a GND y VREF (3.3V). |
| Pulsador Integrado | `P1_7 (SW2)` | Entrada GPIO, botón en placa. Nivel activo: Bajo. |
| LED de Actividad | `P3_1 (D2)` | Salida GPIO. Conectado con resistencia limitadora a GND. |
| LED de Alarma | `P3_31 (D4)` | Salida GPIO. Conectado con resistencia limitadora a GND. |
| Consola UART (TX) | `P0_3` | Hacia la PC vía MCU-Link. |
| Consola UART (RX) | `P0_2` | Desde la PC vía MCU-Link. |

## 3. Parámetros de Configuración Básica
* **UART:** 115200 baudios, 8 bits de datos, sin paridad, 1 bit de parada (8N1).
* **ADC:** 
  * Tensión de Referencia (VREF): `3.3V`
  * Resolución configurada: `12 bits`
