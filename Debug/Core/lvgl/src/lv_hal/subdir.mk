################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_hal/lv_hal_disp.c \
../Core/lvgl/src/lv_hal/lv_hal_indev.c \
../Core/lvgl/src/lv_hal/lv_hal_tick.c 

OBJS += \
./Core/lvgl/src/lv_hal/lv_hal_disp.o \
./Core/lvgl/src/lv_hal/lv_hal_indev.o \
./Core/lvgl/src/lv_hal/lv_hal_tick.o 

C_DEPS += \
./Core/lvgl/src/lv_hal/lv_hal_disp.d \
./Core/lvgl/src/lv_hal/lv_hal_indev.d \
./Core/lvgl/src/lv_hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_hal/%.o Core/lvgl/src/lv_hal/%.su Core/lvgl/src/lv_hal/%.cyclo: ../Core/lvgl/src/lv_hal/%.c Core/lvgl/src/lv_hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-lv_hal

clean-Core-2f-lvgl-2f-src-2f-lv_hal:
	-$(RM) ./Core/lvgl/src/lv_hal/lv_hal_disp.cyclo ./Core/lvgl/src/lv_hal/lv_hal_disp.d ./Core/lvgl/src/lv_hal/lv_hal_disp.o ./Core/lvgl/src/lv_hal/lv_hal_disp.su ./Core/lvgl/src/lv_hal/lv_hal_indev.cyclo ./Core/lvgl/src/lv_hal/lv_hal_indev.d ./Core/lvgl/src/lv_hal/lv_hal_indev.o ./Core/lvgl/src/lv_hal/lv_hal_indev.su ./Core/lvgl/src/lv_hal/lv_hal_tick.cyclo ./Core/lvgl/src/lv_hal/lv_hal_tick.d ./Core/lvgl/src/lv_hal/lv_hal_tick.o ./Core/lvgl/src/lv_hal/lv_hal_tick.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-lv_hal

