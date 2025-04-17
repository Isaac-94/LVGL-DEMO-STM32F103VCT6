################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_font/lv_font.c \
../Core/lvgl/src/lv_font/lv_font_fmt_txt.c \
../Core/lvgl/src/lv_font/lv_font_roboto_12.c \
../Core/lvgl/src/lv_font/lv_font_roboto_16.c \
../Core/lvgl/src/lv_font/lv_font_roboto_22.c \
../Core/lvgl/src/lv_font/lv_font_roboto_28.c \
../Core/lvgl/src/lv_font/lv_font_unscii_8.c 

OBJS += \
./Core/lvgl/src/lv_font/lv_font.o \
./Core/lvgl/src/lv_font/lv_font_fmt_txt.o \
./Core/lvgl/src/lv_font/lv_font_roboto_12.o \
./Core/lvgl/src/lv_font/lv_font_roboto_16.o \
./Core/lvgl/src/lv_font/lv_font_roboto_22.o \
./Core/lvgl/src/lv_font/lv_font_roboto_28.o \
./Core/lvgl/src/lv_font/lv_font_unscii_8.o 

C_DEPS += \
./Core/lvgl/src/lv_font/lv_font.d \
./Core/lvgl/src/lv_font/lv_font_fmt_txt.d \
./Core/lvgl/src/lv_font/lv_font_roboto_12.d \
./Core/lvgl/src/lv_font/lv_font_roboto_16.d \
./Core/lvgl/src/lv_font/lv_font_roboto_22.d \
./Core/lvgl/src/lv_font/lv_font_roboto_28.d \
./Core/lvgl/src/lv_font/lv_font_unscii_8.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_font/%.o Core/lvgl/src/lv_font/%.su Core/lvgl/src/lv_font/%.cyclo: ../Core/lvgl/src/lv_font/%.c Core/lvgl/src/lv_font/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-lv_font

clean-Core-2f-lvgl-2f-src-2f-lv_font:
	-$(RM) ./Core/lvgl/src/lv_font/lv_font.cyclo ./Core/lvgl/src/lv_font/lv_font.d ./Core/lvgl/src/lv_font/lv_font.o ./Core/lvgl/src/lv_font/lv_font.su ./Core/lvgl/src/lv_font/lv_font_fmt_txt.cyclo ./Core/lvgl/src/lv_font/lv_font_fmt_txt.d ./Core/lvgl/src/lv_font/lv_font_fmt_txt.o ./Core/lvgl/src/lv_font/lv_font_fmt_txt.su ./Core/lvgl/src/lv_font/lv_font_roboto_12.cyclo ./Core/lvgl/src/lv_font/lv_font_roboto_12.d ./Core/lvgl/src/lv_font/lv_font_roboto_12.o ./Core/lvgl/src/lv_font/lv_font_roboto_12.su ./Core/lvgl/src/lv_font/lv_font_roboto_16.cyclo ./Core/lvgl/src/lv_font/lv_font_roboto_16.d ./Core/lvgl/src/lv_font/lv_font_roboto_16.o ./Core/lvgl/src/lv_font/lv_font_roboto_16.su ./Core/lvgl/src/lv_font/lv_font_roboto_22.cyclo ./Core/lvgl/src/lv_font/lv_font_roboto_22.d ./Core/lvgl/src/lv_font/lv_font_roboto_22.o ./Core/lvgl/src/lv_font/lv_font_roboto_22.su ./Core/lvgl/src/lv_font/lv_font_roboto_28.cyclo ./Core/lvgl/src/lv_font/lv_font_roboto_28.d ./Core/lvgl/src/lv_font/lv_font_roboto_28.o ./Core/lvgl/src/lv_font/lv_font_roboto_28.su ./Core/lvgl/src/lv_font/lv_font_unscii_8.cyclo ./Core/lvgl/src/lv_font/lv_font_unscii_8.d ./Core/lvgl/src/lv_font/lv_font_unscii_8.o ./Core/lvgl/src/lv_font/lv_font_unscii_8.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-lv_font

