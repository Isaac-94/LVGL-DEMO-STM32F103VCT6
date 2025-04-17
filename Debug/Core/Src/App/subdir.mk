################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/App/appPaint.c 

OBJS += \
./Core/Src/App/appPaint.o 

C_DEPS += \
./Core/Src/App/appPaint.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/App/%.o Core/Src/App/%.su Core/Src/App/%.cyclo: ../Core/Src/App/%.c Core/Src/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-App

clean-Core-2f-Src-2f-App:
	-$(RM) ./Core/Src/App/appPaint.cyclo ./Core/Src/App/appPaint.d ./Core/Src/App/appPaint.o ./Core/Src/App/appPaint.su

.PHONY: clean-Core-2f-Src-2f-App

