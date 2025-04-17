################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Lcd/ili9341.c \
../Core/Src/Lcd/lcd_io_gpio16_hal.c \
../Core/Src/Lcd/lvgl_flush_fuction.c \
../Core/Src/Lcd/stm32_adafruit_lcd.c \
../Core/Src/Lcd/stm32_adafruit_ts.c \
../Core/Src/Lcd/ts_xpt2046.c 

OBJS += \
./Core/Src/Lcd/ili9341.o \
./Core/Src/Lcd/lcd_io_gpio16_hal.o \
./Core/Src/Lcd/lvgl_flush_fuction.o \
./Core/Src/Lcd/stm32_adafruit_lcd.o \
./Core/Src/Lcd/stm32_adafruit_ts.o \
./Core/Src/Lcd/ts_xpt2046.o 

C_DEPS += \
./Core/Src/Lcd/ili9341.d \
./Core/Src/Lcd/lcd_io_gpio16_hal.d \
./Core/Src/Lcd/lvgl_flush_fuction.d \
./Core/Src/Lcd/stm32_adafruit_lcd.d \
./Core/Src/Lcd/stm32_adafruit_ts.d \
./Core/Src/Lcd/ts_xpt2046.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/Lcd/%.o Core/Src/Lcd/%.su Core/Src/Lcd/%.cyclo: ../Core/Src/Lcd/%.c Core/Src/Lcd/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-Lcd

clean-Core-2f-Src-2f-Lcd:
	-$(RM) ./Core/Src/Lcd/ili9341.cyclo ./Core/Src/Lcd/ili9341.d ./Core/Src/Lcd/ili9341.o ./Core/Src/Lcd/ili9341.su ./Core/Src/Lcd/lcd_io_gpio16_hal.cyclo ./Core/Src/Lcd/lcd_io_gpio16_hal.d ./Core/Src/Lcd/lcd_io_gpio16_hal.o ./Core/Src/Lcd/lcd_io_gpio16_hal.su ./Core/Src/Lcd/lvgl_flush_fuction.cyclo ./Core/Src/Lcd/lvgl_flush_fuction.d ./Core/Src/Lcd/lvgl_flush_fuction.o ./Core/Src/Lcd/lvgl_flush_fuction.su ./Core/Src/Lcd/stm32_adafruit_lcd.cyclo ./Core/Src/Lcd/stm32_adafruit_lcd.d ./Core/Src/Lcd/stm32_adafruit_lcd.o ./Core/Src/Lcd/stm32_adafruit_lcd.su ./Core/Src/Lcd/stm32_adafruit_ts.cyclo ./Core/Src/Lcd/stm32_adafruit_ts.d ./Core/Src/Lcd/stm32_adafruit_ts.o ./Core/Src/Lcd/stm32_adafruit_ts.su ./Core/Src/Lcd/ts_xpt2046.cyclo ./Core/Src/Lcd/ts_xpt2046.d ./Core/Src/Lcd/ts_xpt2046.o ./Core/Src/Lcd/ts_xpt2046.su

.PHONY: clean-Core-2f-Src-2f-Lcd

