################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_core/lv_disp.c \
../Core/lvgl/src/lv_core/lv_group.c \
../Core/lvgl/src/lv_core/lv_indev.c \
../Core/lvgl/src/lv_core/lv_obj.c \
../Core/lvgl/src/lv_core/lv_refr.c \
../Core/lvgl/src/lv_core/lv_style.c 

OBJS += \
./Core/lvgl/src/lv_core/lv_disp.o \
./Core/lvgl/src/lv_core/lv_group.o \
./Core/lvgl/src/lv_core/lv_indev.o \
./Core/lvgl/src/lv_core/lv_obj.o \
./Core/lvgl/src/lv_core/lv_refr.o \
./Core/lvgl/src/lv_core/lv_style.o 

C_DEPS += \
./Core/lvgl/src/lv_core/lv_disp.d \
./Core/lvgl/src/lv_core/lv_group.d \
./Core/lvgl/src/lv_core/lv_indev.d \
./Core/lvgl/src/lv_core/lv_obj.d \
./Core/lvgl/src/lv_core/lv_refr.d \
./Core/lvgl/src/lv_core/lv_style.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_core/%.o Core/lvgl/src/lv_core/%.su Core/lvgl/src/lv_core/%.cyclo: ../Core/lvgl/src/lv_core/%.c Core/lvgl/src/lv_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-lv_core

clean-Core-2f-lvgl-2f-src-2f-lv_core:
	-$(RM) ./Core/lvgl/src/lv_core/lv_disp.cyclo ./Core/lvgl/src/lv_core/lv_disp.d ./Core/lvgl/src/lv_core/lv_disp.o ./Core/lvgl/src/lv_core/lv_disp.su ./Core/lvgl/src/lv_core/lv_group.cyclo ./Core/lvgl/src/lv_core/lv_group.d ./Core/lvgl/src/lv_core/lv_group.o ./Core/lvgl/src/lv_core/lv_group.su ./Core/lvgl/src/lv_core/lv_indev.cyclo ./Core/lvgl/src/lv_core/lv_indev.d ./Core/lvgl/src/lv_core/lv_indev.o ./Core/lvgl/src/lv_core/lv_indev.su ./Core/lvgl/src/lv_core/lv_obj.cyclo ./Core/lvgl/src/lv_core/lv_obj.d ./Core/lvgl/src/lv_core/lv_obj.o ./Core/lvgl/src/lv_core/lv_obj.su ./Core/lvgl/src/lv_core/lv_refr.cyclo ./Core/lvgl/src/lv_core/lv_refr.d ./Core/lvgl/src/lv_core/lv_refr.o ./Core/lvgl/src/lv_core/lv_refr.su ./Core/lvgl/src/lv_core/lv_style.cyclo ./Core/lvgl/src/lv_core/lv_style.d ./Core/lvgl/src/lv_core/lv_style.o ./Core/lvgl/src/lv_core/lv_style.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-lv_core

