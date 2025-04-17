################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/porting/lv_port_disp_template.c \
../Core/lvgl/porting/lv_port_fs_template.c \
../Core/lvgl/porting/lv_port_indev_template.c 

OBJS += \
./Core/lvgl/porting/lv_port_disp_template.o \
./Core/lvgl/porting/lv_port_fs_template.o \
./Core/lvgl/porting/lv_port_indev_template.o 

C_DEPS += \
./Core/lvgl/porting/lv_port_disp_template.d \
./Core/lvgl/porting/lv_port_fs_template.d \
./Core/lvgl/porting/lv_port_indev_template.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/porting/%.o Core/lvgl/porting/%.su Core/lvgl/porting/%.cyclo: ../Core/lvgl/porting/%.c Core/lvgl/porting/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-porting

clean-Core-2f-lvgl-2f-porting:
	-$(RM) ./Core/lvgl/porting/lv_port_disp_template.cyclo ./Core/lvgl/porting/lv_port_disp_template.d ./Core/lvgl/porting/lv_port_disp_template.o ./Core/lvgl/porting/lv_port_disp_template.su ./Core/lvgl/porting/lv_port_fs_template.cyclo ./Core/lvgl/porting/lv_port_fs_template.d ./Core/lvgl/porting/lv_port_fs_template.o ./Core/lvgl/porting/lv_port_fs_template.su ./Core/lvgl/porting/lv_port_indev_template.cyclo ./Core/lvgl/porting/lv_port_indev_template.d ./Core/lvgl/porting/lv_port_indev_template.o ./Core/lvgl/porting/lv_port_indev_template.su

.PHONY: clean-Core-2f-lvgl-2f-porting

