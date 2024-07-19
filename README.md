# RTB_E13
[![Real-time Bus (RTB)](https://img.shields.io/badge/RTB_Project-FF6699)](https://www.rtb4dcc.de)
[![Kicad_Libs](https://img.shields.io/badge/Kicad_Libs-29C7FF)](https://github.com/git4dcc/RTB_SamacSys)
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%20License%202.0-lightgray)](https://www.apache.org/licenses/LICENSE-2.0)

This E13 module implements a 12 channel WS2811 emulator with compatible bus timing to drive multiplex (charlieplexing) LEDs. The E13 may be cascaded with regular WS28xx chips. The number of LEDs is fixed to 12. The common LED voltage is recieved via the bus as well and may be adjusted dynamically.  (see also [E10](https://github.com/git4dcc/RTB_E10), [E15](https://github.com/git4dcc/RTB_E15))

```
Byte order:     {voltage} {led_0} ... {led_11}
Led Voltage:    5V * {voltage} / 255
```

The decoder has the following features,
- **Protocol**
  - WS2811 compatible timing
- **LED ports**
  - 12 channel output
  - Charlieplexing (Multiplexing) output
  - 128 step PWM (300Hz)
  - Software adjustable LED voltage (0..5V)
  - gamma correction (optional)
- firmware update via V24 debug interface

[more](https://rtb4dcc.de/hardware/modules/e13/)

# Hardware
## PCB
<img src="https://rtb4dcc.de/wp-content/uploads/2024/01/E13_1-1.png" width=500>

- 2-layer PCB, FR4, 1.6mm
- CPU: AVR64DB32
- BUS: WS28xx
- LED: Charliwplexing
<br>

[Schematic](doc/E13_schematic.pdf) | [Layout](doc/E13_layout.pdf)

## Firmware
Filename structure: { **pcb** }{ **code** }{ **version** }.hex

Example: **E13F0001**.hex

|   | Description |
| --- | --- |
| **pcb** | Name of matching hardware (**E13**) |
| **code** | Type of code contained (**R**=rom, **B**=bootloader, **F**=flash, **U**=bld update, **P**=UPDI factory code) |
| **version** | Release version (**####**) |

# Pictures
<img src=https://rtb4dcc.de/wp-content/uploads/2024/02/E13_3.jpg width=260>

This project is intended for hobby use only and is distributed in accordance with the Apache License 2.0 agreement.
