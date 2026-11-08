# Parcial 2 - Monitor de Señal Analógica con Alarma
## 💻 Acceso Directo al Código
**[➡️ Haz clic aquí para evaluar el código fuente principal (`Main.c`)](./Codigo_Fuente/frdm_mcxa156_blank/Main.c)**

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

## 4. Cálculo del TIMER
Para lograr una temporización exacta y asíncrona de 1 ms, se utilizó el periférico `CTIMER0`. El reloj principal de la placa está configurado a 12 MHz (12,000,000 Hz). 
Para obtener una interrupción cada 1 milisegundo (1/1000 de segundo), el valor de coincidencia (*match value*) se calculó dividiendo la frecuencia base entre 1000:
* **Fórmula:** `12,000,000 / 1000 = 12,000 ciclos`.

## 5. Instrucciones de Compilación y Ejecución
1. Clonar este repositorio y abrir la carpeta raíz en **VS Code**.
2. Asegurarse de tener instalada la extensión **MCUXpresso for VS Code** (v26.9.44).
3. En el panel lateral de MCUXpresso, hacer clic en **Build** (icono de martillo) para compilar el proyecto.
4. Conectar la placa NXP FRDM-MCXA156 a la computadora a través del puerto USB (MCU-Link).
5. En la sección "Debug Configurations", hacer clic en **Debug** (icono de play) para grabar el firmware en el microcontrolador.
6. Abrir una terminal serial (como el Serial Monitor integrado, PuTTY o TeraTerm) conectada al puerto COM de la placa configurado a **115200 baudios, 8N1**.