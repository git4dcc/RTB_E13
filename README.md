# RTB_E13
[![Real-time Bus (RTB)](https://img.shields.io/badge/RTB_Project-FF6699)](https://www.rtb4dcc.de)
[![Kicad_Libs](https://img.shields.io/badge/Kicad_Libs-29C7FF)](https://github.com/git4dcc/RTB_SamacSys)
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%20License%202.0-lightgray)](https://www.apache.org/licenses/LICENSE-2.0)

This E13 module implements a 12 channel WS2811 emulator with compatible bus timing to drive multiplex (charlieplexing) LEDs. The E13 may be cascaded with regular WS28xx chips. The number of LEDs attached is automatically detected (0-12). This module allows the common LED voltage be dynamically adjusted via the bus protocol. The intended use is to drive Multiplex Signals on Model Railway layouts via the WS28xx bus.

_Note: The RTB_E13 is nearly identical to the [RTB_E15](https://github.com/git4dcc/RTB_E15) but allows for variable LED voltage._

<details>
<summary>See also</summary>

- [RTB_E10](https://github.com/git4dcc/RTB_E10)
- [RTB_E15](https://github.com/git4dcc/RTB_E15)

</details>

<details>
<summary>User Guides</summary>

- [User Guide - DE](https://rtb4dcc.de/ws2811_guide_de/)
- User Guide - EN

</details>

<img src=supplemental/images/E13_main.jpg>

The decoder has the following features,
- **Protocol**
  - WS2811 compatible timing
- **LED ports**
  - 12 channel output
  - Charlieplexing (Multiplexing) output
  - 128 step PWM (300Hz)
  - Software adjustable LED voltage 0..5V (see also [RTB_E15](https://github.com/git4dcc/RTB_E15))
  - gamma correction (optional)
- firmware update via V24 debug interface


# Hardware
My current PCB layout uses SMD footprints with 0.5mm pitch and 0603 parts. Reflow soldering is my recommendation, but with some experience handsoldering is also possible.

<img src=supplemental/images/E13_top_connect.jpg>

## PCB
- 2-layer PCB, FR4, 1.6mm
- CPU: AVR64DB32
- BUS: WS28xx
- LED: Charlieplexing

## Kicad
[Schematic](doc/E13_schematic.pdf) | [Layout](doc/E13_layout.pdf) | [Gerber](gerber)

<details>
<summary>Dependency</summary>
<br>
  
:yellow_circle: Requires my Kicad project library [RTB_SamacSys](https://github.com/git4dcc/RTB_SamacSys) in the same directory tree.

</details>

## Firmware
Filename structure: { **pcb** }{ **code** }{ **version** }.hex

Example: **E13F0001**.hex

|   | Description |
| --- | --- |
| **pcb** | Name of matching hardware (**E13**) |
| **code** | Type of code contained (**R**=rom, **B**=bootloader, **F**=flash, **U**=bld update, **P**=UPDI factory code) |
| **version** | Release version (**####**) |

## UPDI
The fuse settings as well as the P-code (E13Pxxxx.hex) has to be installed by using UPDI.<br>

<details>
<summary>Details</summary>

<img src=supplemental/images/E13_updi.jpg>

| Fuse Setting | P-code Install |
| --- | --- |
|<img src=supplemental/images/E13_updi_fuses.jpg width=500>|<img src=supplemental/images/E13_updi_memory.jpg width=500>|

</details>

## Debug Interface
Subsequent code updates can be done via the built-in serial debug interface.<br>

<details>
<summary>Details</summary>

- connect the serial cable **(1Mb, 8N1, RTS/CTS)**
- press 'break' within the VT100 terminal to bump the module to console prompt
- upload the firmware file (E13Fxxxx.hex)
- for more details, refer to the 'User Guide'

  <img src=supplemental/images/E13_debugIF.jpg>

</details>

# Software
The LED common voltage must be sent as the first byte (virtual LED) over the bus followed by the intensity values for the individual LEDs, with N being the number of configured LEDs.
```
Byte order:     {voltage} {led_0} ... {led_N}
Led Voltage:    5V * {voltage} / 255
```

# Images
<img src=supplemental/images/E13_samples.jpg width=260> <img src=supplemental/images/E13_usecase.jpg width=260>

This project is intended for hobby use only and is distributed in accordance with the Apache License 2.0 agreement.
