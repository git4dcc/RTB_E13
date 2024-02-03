# RTB_E13
[![Real-time Bus (RTB)](https://img.shields.io/badge/RTB_Project-FF6699)](https://www.rtb4dcc.de)
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%20License%202.0-blue)](https://www.apache.org/licenses/LICENSE-2.0)

This E13 module implements a 12 channel WS2811 emulator with compatible bus timing to drive multiplex (charlieplexing) LEDs. The number of LEDs is fixed to 12. The E13 may be cascaded with regular WS28xx chips.

The decoder has the following features,
- **Protocol**
  - WS2811 compatible timing
- **LED ports**
  - 12 channel output
  - Charlieplexing (Multiplexing) output
  - 128 step PWM (300Hz)
  - gamma correction (optional)
- firmware update via V24 debug interface

[more](https://rtb4dcc.de/hardware/modules/e13/)

# PCB
<img src="https://rtb4dcc.de/wp-content/uploads/2024/01/E13_1-1.png" width=500>

- 2-layer PCB, FR4, 1.6mm
- CPU: AVR64DA32
- BUS: WS28xx
- LED: Charliwplexing
<br>

[Schematic](doc/E13_schematic.pdf) | [Layout](doc/E13_layout.pdf)
