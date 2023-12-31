# _LEDC Fade Example_

(See the README.md file in the upper level 'examples' directory for more information about examples.)

This example shows how to control intensity of LEDs using ESP32's on-board hardware LED PWM Controller module.

## How to use example

### Hardware Required

* A development board with ESP32 SoC (e.g., ESP32-DevKitC, ESP-WROVER-KIT, etc.)
* A USB cable for power supply and programming

Connect four LEDs to the following LEDC channels / individual GPIOs:

|ledc channel|GPIO|
|:---:|:---:|
|channel 0|GPIO18|
|channel 1|GPIO19|
|channel 2|GPIO4|
|channel 3|GPIO5|

### Configure the project

```
idf.py menuconfig
```

### Build and Flash

* [ESP-IDF Getting Started Guide on ESP32](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/index.html)
* [ESP-IDF Getting Started Guide on ESP32-S2](https://docs.espressif.com/projects/esp-idf/en/latest/esp32s2/get-started/index.html)
* [ESP-IDF Getting Started Guide on ESP32-C3](https://docs.espressif.com/projects/esp-idf/en/latest/esp32c3/get-started/index.html)

Build the project and flash it to the board, then run monitor tool to view serial output:

```
idf.py -p PORT flash monitor
```

(To exit the serial monitor, type ``Ctrl-]``.)

See the Getting Started Guide for full steps to configure and use ESP-IDF to build projects.

## Example Output

Running this example, you will see each ledc's brightness changes differently

* LEDC 1: Fade up / increase intensity
* LEDC 2: Fade down / decrease intensity
* LEDC 3: Keep a stable intensity
* LEDC 4: LED is not on

you can also see the following output log on the serial monitor:

```
1. LEDC fade up to duty = 4000
2. LEDC fade down to duty = 0
3. LEDC set duty = 4000 without fade
4. LEDC set duty = 0 without fade
...
```

## Troubleshooting

* Programming fail

    * Hardware connection is not correct: run `idf.py -p PORT monitor`, and reboot your board to see if there are any output logs.
    * The baud rate for downloading is too high: lower your baud rate in the `menuconfig` menu, and try again.

For any technical queries, please open an [issue](https://github.com/espressif/esp-idf/issues) on GitHub. We will get back to you soon.
