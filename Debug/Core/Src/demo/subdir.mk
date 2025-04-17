################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/demo/demo.c \
../Core/Src/demo/img_bubble_pattern.c 

OBJS += \
./Core/Src/demo/demo.o \
./Core/Src/demo/img_bubble_pattern.o 

C_DEPS += \
./Core/Src/demo/demo.d \
./Core/Src/demo/img_bubble_pattern.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/demo/%.o Core/Src/demo/%.su Core/Src/demo/%.cyclo: ../Core/Src/demo/%.c Core/Src/demo/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-demo

clean-Core-2f-Src-2f-demo:
	-$(RM) ./Core/Src/demo/demo.cyclo ./Core/Src/demo/demo.d ./Core/Src/demo/demo.o ./Core/Src/demo/demo.su ./Core/Src/demo/img_bubble_pattern.cyclo ./Core/Src/demo/img_bubble_pattern.d ./Core/Src/demo/img_bubble_pattern.o ./Core/Src/demo/img_bubble_pattern.su

.PHONY: clean-Core-2f-Src-2f-demo

