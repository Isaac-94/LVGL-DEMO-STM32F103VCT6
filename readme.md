# **LVGL DEMO USING STM32F103VCT6**
 
 This project uses stm32f103vct6 (256Kb) which has enough memory to just run an example of LVGL version 5.3 using touch function. 
Note: This project is not created for bluepill because normally the chip they use are 64kb, although removing libraries and optimizing it correctly, it could work.

## Intro
If you are new to using graphic libraries, you should know: 
- Each lcd to show images or drawings, uses a controller chip that is embedded in the display itself, for example Ili9341, ST7789, etc.
It is also important to know that these chips can use different communication configurations with the STM32, for example: SPI, 8 bit parallel, 16 bit parallel. In our case, 16 bit parallel is used.

- Touch module uses another controller chip, for example ADS7846, XPT2046, etc. therefore the microcontroller you use, in this case STM32, should be responsible for taking the touch module signal and transmit the coordinates where it was pressed, to the LCD screen, that is why calibration is an important point.

## 🛠️ Configuration
### LCD and Touch controllers

- If you need to get the configuration details of the chip I used or even adapt them to your hardware go to the repository: https://github.com/RobertoBenjami/stm32_graphics_display_drivers
- If you want to do it using HAL libraries:https://github.com/RobertoBenjami/stm32_graphics_display_drivers 

### LVGL
1. Go to the file **Core/lv_conf.h** and edit parameters
```
#define LV_HOR_RES_MAX          320
#define LV_VER_RES_MAX          240
```  
2. Go to the file **Core/Src/App/appPaint.c** and customize your LVGL UI using code, remember that we are using LVGL 5.3 which is not compatible with others. 

3. Go to the file **Core/Src/Lcd/lvgl_flush_function.c**. This is very important to be right, because this send data directly to the display, look that the function used to send data to the lcd begins with ili9341..., because that is the driver. 

```c
#include "ili9341.h"
#include "lvgl_flush_function.h"
#include <stdio.h>

// LCD framebuffer for 1 row (can be adjusted if needed)
// This buffer temporarily holds pixel data before sending to the display
uint16_t DISP_fb[600];

/**
 * @brief Flush callback function required by LVGL to send a rendered area to the display.
 *
 * This function is called automatically by LVGL when a part of the screen needs to be redrawn.
 * It transfers the pixel data from LVGL's internal buffer to the ILI9341 display using
 * the user-implemented 'ili9341_DrawRGBImage()' function.
 *
 * @param disp Pointer to the display driver structure
 * @param area Pointer to the area of the screen to update
 * @param color_p Pointer to the pixel data (in RGB565 format) to draw
 */
void ILI9341_flush(lv_disp_drv_t *disp, const lv_area_t *area, lv_color_t *color_p)
{
    // Calculate the width and height of the area to update
    uint16_t x_size = lv_area_get_width(area);
    uint16_t y_size = lv_area_get_height(area);

    // Send pixel data to the display using custom draw function
    // This draws an RGB565 image starting at (x1, y1) with the given size
    ili9341_DrawRGBImage(area->x1, area->y1, x_size, y_size, (uint16_t *)color_p);

    // Inform LVGL that the flushing operation is complete
    // Without this, LVGL will halt further drawing operations
    lv_disp_flush_ready(disp);
}

```
If you do all good, it will shows something on the LCD.

#### Note: If you are starting your own project, you must download the LVGL library from its repository and include it in your project, in this project it is already included.


### Touchscreen LVGL
1. Once configured the flush function to show content, now the process is similar, but in this case you have to use the driver of your touchscreen IC
2. Go to the file **Core/Src/App/stm32_adafruit_ts.c** and customize the following function. If all works fine, congartulations!

```c
//------------------------------------------LVGL FUNCTION----------------------------------------------------------------

/**
 * @brief Touchscreen read function for LVGL input device driver.
 *
 * This function reads the current touch status from the XPT2046 (via BSP),
 * and reports it to LVGL, converting the coordinates as needed.
 *
 * @param drv Pointer to the LVGL input device driver (unused here).
 * @param data Pointer to the structure where touch data is stored.
 * @return Always returns false (no buffering).
 */
bool XPT2046_read(lv_indev_drv_t * drv, lv_indev_data_t* data)
{
    // Touch state structure provided by BSP
    TS_StateTypeDef ts;

    // Variables to store last known coordinates (could be used for filtering or averaging)
    static uint16_t last_x = 0;
    static uint16_t last_y = 0;

    // Read current touch state
    BSP_TS_GetState(&ts);

    // Set touch state for LVGL: PRESSED or RELEASED
    data->state = ts.TouchDetected ? LV_INDEV_STATE_PR : LV_INDEV_STATE_REL;

    if(data->state == LV_INDEV_STATE_PR)
    {
        // If screen is touched, store the coordinates
        // X and Y axes may need to be swapped or flipped depending on the orientation
        data->point.x = ts.Y;
        data->point.y = 240 - ts.X;

        // Confirm the state again as PRESSED
        data->state = LV_INDEV_STATE_PR;
    }
    else
    {
        // If not touched, set state as RELEASED
        data->state = LV_INDEV_STATE_REL;
    }

    // Return false to indicate no more data is available (non-buffered input)
    return false;
}

```
---

## 📸 Preview

> ![Demo](assets/demoLVGL.gif)

---

## 🧩 Project Features

- MCU: **STM32F103VCT6**
- Graphics Library: **LVGL v5.3**
- Display: **TFT 2.4"/2.8" (ILI9341 driver)**
- Touch Controller: **ADS7846 / XPT2046**
- IDE: **STM32CubeIDE**

---
## 🛠️ Requirements

1.
- STM32CubeMX (optional for reconfiguration)
- ST-Link or compatible programmer
- ILI9341-based SPI TFT screen
- ADS7846 or XPT2046 for resistive touch

## 🗂️ Project Structure

LVGL-DEMO-STM32F103VCT6/ 
├── Core/ # Main code (main.c, interrupts, startup) ├── Drivers/ # HAL and external peripheral drivers ├── LVGL/ # LVGL graphics library (copied or submodule) ├── .ioc # STM32CubeMX project configuration file ├── README.md # This file

---

## 🛠️ Requirements

- STM32CubeIDE (v1.11 or newer)
- STM32CubeMX (optional for reconfiguration)
- ST-Link or compatible programmer
- ILI9341-based SPI TFT screen
- ADS7846 or XPT2046 for resistive touch

---

## 🧪 How to Build & Flash

1. Open the project with STM32CubeIDE.
2. Click the "Build" button to compile.
3. Connect the ST-Link to your STM32 board.
4. Flash the firmware to the device.
5. Done! You should see the LVGL interface on the display.

---

## 🖼️ Customizing LVGL

- The `lv_conf.h` file is located in `/LVGL/` or `/Core/Inc/`.
- You can add widgets, screens, or styles directly in `main.c` or through a separate `ui.c` file.

---

## 🧠 Credits

- Project by [Isaac-94](https://github.com/Isaac-94)
- LVGL Library by [lvgl.io](https://lvgl.io)
- Touch driver based on STM32 community examples

---

## 📄 License

This project is licensed under the MIT License. See `LICENSE` for details.