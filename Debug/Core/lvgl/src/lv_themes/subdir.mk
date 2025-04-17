################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_themes/lv_theme.c \
../Core/lvgl/src/lv_themes/lv_theme_alien.c \
../Core/lvgl/src/lv_themes/lv_theme_default.c \
../Core/lvgl/src/lv_themes/lv_theme_material.c \
../Core/lvgl/src/lv_themes/lv_theme_mono.c \
../Core/lvgl/src/lv_themes/lv_theme_nemo.c \
../Core/lvgl/src/lv_themes/lv_theme_night.c \
../Core/lvgl/src/lv_themes/lv_theme_templ.c \
../Core/lvgl/src/lv_themes/lv_theme_zen.c 

OBJS += \
./Core/lvgl/src/lv_themes/lv_theme.o \
./Core/lvgl/src/lv_themes/lv_theme_alien.o \
./Core/lvgl/src/lv_themes/lv_theme_default.o \
./Core/lvgl/src/lv_themes/lv_theme_material.o \
./Core/lvgl/src/lv_themes/lv_theme_mono.o \
./Core/lvgl/src/lv_themes/lv_theme_nemo.o \
./Core/lvgl/src/lv_themes/lv_theme_night.o \
./Core/lvgl/src/lv_themes/lv_theme_templ.o \
./Core/lvgl/src/lv_themes/lv_theme_zen.o 

C_DEPS += \
./Core/lvgl/src/lv_themes/lv_theme.d \
./Core/lvgl/src/lv_themes/lv_theme_alien.d \
./Core/lvgl/src/lv_themes/lv_theme_default.d \
./Core/lvgl/src/lv_themes/lv_theme_material.d \
./Core/lvgl/src/lv_themes/lv_theme_mono.d \
./Core/lvgl/src/lv_themes/lv_theme_nemo.d \
./Core/lvgl/src/lv_themes/lv_theme_night.d \
./Core/lvgl/src/lv_themes/lv_theme_templ.d \
./Core/lvgl/src/lv_themes/lv_theme_zen.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_themes/%.o Core/lvgl/src/lv_themes/%.su Core/lvgl/src/lv_themes/%.cyclo: ../Core/lvgl/src/lv_themes/%.c Core/lvgl/src/lv_themes/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-lv_themes

clean-Core-2f-lvgl-2f-src-2f-lv_themes:
	-$(RM) ./Core/lvgl/src/lv_themes/lv_theme.cyclo ./Core/lvgl/src/lv_themes/lv_theme.d ./Core/lvgl/src/lv_themes/lv_theme.o ./Core/lvgl/src/lv_themes/lv_theme.su ./Core/lvgl/src/lv_themes/lv_theme_alien.cyclo ./Core/lvgl/src/lv_themes/lv_theme_alien.d ./Core/lvgl/src/lv_themes/lv_theme_alien.o ./Core/lvgl/src/lv_themes/lv_theme_alien.su ./Core/lvgl/src/lv_themes/lv_theme_default.cyclo ./Core/lvgl/src/lv_themes/lv_theme_default.d ./Core/lvgl/src/lv_themes/lv_theme_default.o ./Core/lvgl/src/lv_themes/lv_theme_default.su ./Core/lvgl/src/lv_themes/lv_theme_material.cyclo ./Core/lvgl/src/lv_themes/lv_theme_material.d ./Core/lvgl/src/lv_themes/lv_theme_material.o ./Core/lvgl/src/lv_themes/lv_theme_material.su ./Core/lvgl/src/lv_themes/lv_theme_mono.cyclo ./Core/lvgl/src/lv_themes/lv_theme_mono.d ./Core/lvgl/src/lv_themes/lv_theme_mono.o ./Core/lvgl/src/lv_themes/lv_theme_mono.su ./Core/lvgl/src/lv_themes/lv_theme_nemo.cyclo ./Core/lvgl/src/lv_themes/lv_theme_nemo.d ./Core/lvgl/src/lv_themes/lv_theme_nemo.o ./Core/lvgl/src/lv_themes/lv_theme_nemo.su ./Core/lvgl/src/lv_themes/lv_theme_night.cyclo ./Core/lvgl/src/lv_themes/lv_theme_night.d ./Core/lvgl/src/lv_themes/lv_theme_night.o ./Core/lvgl/src/lv_themes/lv_theme_night.su ./Core/lvgl/src/lv_themes/lv_theme_templ.cyclo ./Core/lvgl/src/lv_themes/lv_theme_templ.d ./Core/lvgl/src/lv_themes/lv_theme_templ.o ./Core/lvgl/src/lv_themes/lv_theme_templ.su ./Core/lvgl/src/lv_themes/lv_theme_zen.cyclo ./Core/lvgl/src/lv_themes/lv_theme_zen.d ./Core/lvgl/src/lv_themes/lv_theme_zen.o ./Core/lvgl/src/lv_themes/lv_theme_zen.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-lv_themes

