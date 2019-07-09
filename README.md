# [ESP8266](https://github.com/sochub/ESP8266) 
[![sites](SoC/SoC.png)](http://www.qitas.cn) 
#### 厂商：[espressif](https://github.com/sochub/espressif)
#### 架构：[MIPS](https://github.com/sochub/MIPS)
#### 收录芯片定级：[Level](https://github.com/sochub/Level)
## [ESP8266描述](https://github.com/sochub/ESP8266/wiki) 

ESP8266内置超低功耗 Tensilica L106 32 位 RISC 处理器，CPU 时钟速度最高可达 160 MHz，可将高达 80% 的处理能力留给应用编程和开发。

#### IRAM 空间为 64 KB：

前 32 KB 用作 IRAM，用来存放没有加 ICACHE_FLASH_ATTR 的代码，即 .text 段，会通过 ROM code 或二级 boot 从 SPI Flash 中的 BIN 中加载到 IRAM。

后 32 KB 被映射作为 iCache，放在 SPI Flash 中的，加了 ICACHE_FLASH_ATTR 的代码会被从 SPI Flash 自动动态加载到 iCache。

#### DRAM 空间为 96 KB：

对于 Non-OS_SDK，前 80 KB 用来存放 .data/.bss/.rodata/heap，heap 区的大小取决于 .data/.bss/.rodata 的大小；还有 16 KB 给 ROM code 使用。

对于 RTOS_SDK，96 KB 用来存放 .data/.bss/.rodata/heap，heap 区的大小取决于 .data/.bss/.rodata 的大小。

[![sites](SoC/ESP8266.jpg)](https://www.espressif.com/zh-hans/products/hardware/esp8266ex/overview) 

#### 相关参数

* 802.11 b/g/n，WiFi 2.4 GHz, support WPA/WPA2，Support STA/AP/STA+AP
* +20 dBm output power in 802.11b mode
* Integrated 10-bit ADC
* Integrated TCP/IP protocol stack
* Integrated TR switch, balun, LNA, power amplifier and matching network
* Integrated PLL, regulators, and power management units
* Support Smart Link Function for both Android and iOS devices
* SDIO 2.0, (H) SPI, UART, I2C, I2S, IR Remote Control, PWM, GPIO
* STBC, 1x1 MIMO, 2x1 MIMO
* Deep sleep power <10uA, Power down leakage current < 5uA，Standby power consumption of < 1.0mW (DTIM3)，Wake up and transmit packets in < 2ms
* Operating temperature range -40C ~ 125C
* FCC, CE, TELEC, WiFi Alliance, and SRRC certified

主要特点：低成本高集成度WiFi SoC，开源资源丰富

器件封装： QFN32 (5mm x 5mm)

### [收录资源](https://github.com/sochub/ESP8266)

* [文档](docs/)
* [工程](project/)
* [工具](tools/)
* [环境](env/)

### [关联资源](https://github.com/sochub)

* [xtensa开发环境](https://github.com/sochub/xtensa)
* [xtensa-lx106编译](https://github.com/sochub/xtensa-lx106)

### [选型建议](https://github.com/sochub)

[ESP8266](https://github.com/sochub/ESP8266)是物联网市场现象级处理器，发布多年任然风靡全球创客圈，拥有大量的经典案例和开源资源，包括从编译器的源码构建到各种成熟的产品功能代码，十分适合深度定制和挖掘相应的潜力。其功能增强的[ESP32](https://github.com/sochub/ESP32)同样拥有不俗的表现，更多是在简易的音视频上的应用。

相应的后起之秀包括 [RTL8710](https://github.com/sochub/RTL8710)和 [RDA5981](https://github.com/sochub/RDA5981)，都是基于[Cortex M](https://github.com/sochub/CM) 系列内核开发，更偏向主流的开发群体。

###  [SoC资源平台](http://www.qitas.cn)
