################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_draw/lv_draw.c \
../Core/lvgl/src/lv_draw/lv_draw_arc.c \
../Core/lvgl/src/lv_draw/lv_draw_basic.c \
../Core/lvgl/src/lv_draw/lv_draw_img.c \
../Core/lvgl/src/lv_draw/lv_draw_label.c \
../Core/lvgl/src/lv_draw/lv_draw_line.c \
../Core/lvgl/src/lv_draw/lv_draw_rect.c \
../Core/lvgl/src/lv_draw/lv_draw_triangle.c \
../Core/lvgl/src/lv_draw/lv_img_cache.c \
../Core/lvgl/src/lv_draw/lv_img_decoder.c 

OBJS += \
./Core/lvgl/src/lv_draw/lv_draw.o \
./Core/lvgl/src/lv_draw/lv_draw_arc.o \
./Core/lvgl/src/lv_draw/lv_draw_basic.o \
./Core/lvgl/src/lv_draw/lv_draw_img.o \
./Core/lvgl/src/lv_draw/lv_draw_label.o \
./Core/lvgl/src/lv_draw/lv_draw_line.o \
./Core/lvgl/src/lv_draw/lv_draw_rect.o \
./Core/lvgl/src/lv_draw/lv_draw_triangle.o \
./Core/lvgl/src/lv_draw/lv_img_cache.o \
./Core/lvgl/src/lv_draw/lv_img_decoder.o 

C_DEPS += \
./Core/lvgl/src/lv_draw/lv_draw.d \
./Core/lvgl/src/lv_draw/lv_draw_arc.d \
./Core/lvgl/src/lv_draw/lv_draw_basic.d \
./Core/lvgl/src/lv_draw/lv_draw_img.d \
./Core/lvgl/src/lv_draw/lv_draw_label.d \
./Core/lvgl/src/lv_draw/lv_draw_line.d \
./Core/lvgl/src/lv_draw/lv_draw_rect.d \
./Core/lvgl/src/lv_draw/lv_draw_triangle.d \
./Core/lvgl/src/lv_draw/lv_img_cache.d \
./Core/lvgl/src/lv_draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_draw/%.o Core/lvgl/src/lv_draw/%.su Core/lvgl/src/lv_draw/%.cyclo: ../Core/lvgl/src/lv_draw/%.c Core/lvgl/src/lv_draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-lv_draw

clean-Core-2f-lvgl-2f-src-2f-lv_draw:
	-$(RM) ./Core/lvgl/src/lv_draw/lv_draw.cyclo ./Core/lvgl/src/lv_draw/lv_draw.d ./Core/lvgl/src/lv_draw/lv_draw.o ./Core/lvgl/src/lv_draw/lv_draw.su ./Core/lvgl/src/lv_draw/lv_draw_arc.cyclo ./Core/lvgl/src/lv_draw/lv_draw_arc.d ./Core/lvgl/src/lv_draw/lv_draw_arc.o ./Core/lvgl/src/lv_draw/lv_draw_arc.su ./Core/lvgl/src/lv_draw/lv_draw_basic.cyclo ./Core/lvgl/src/lv_draw/lv_draw_basic.d ./Core/lvgl/src/lv_draw/lv_draw_basic.o ./Core/lvgl/src/lv_draw/lv_draw_basic.su ./Core/lvgl/src/lv_draw/lv_draw_img.cyclo ./Core/lvgl/src/lv_draw/lv_draw_img.d ./Core/lvgl/src/lv_draw/lv_draw_img.o ./Core/lvgl/src/lv_draw/lv_draw_img.su ./Core/lvgl/src/lv_draw/lv_draw_label.cyclo ./Core/lvgl/src/lv_draw/lv_draw_label.d ./Core/lvgl/src/lv_draw/lv_draw_label.o ./Core/lvgl/src/lv_draw/lv_draw_label.su ./Core/lvgl/src/lv_draw/lv_draw_line.cyclo ./Core/lvgl/src/lv_draw/lv_draw_line.d ./Core/lvgl/src/lv_draw/lv_draw_line.o ./Core/lvgl/src/lv_draw/lv_draw_line.su ./Core/lvgl/src/lv_draw/lv_draw_rect.cyclo ./Core/lvgl/src/lv_draw/lv_draw_rect.d ./Core/lvgl/src/lv_draw/lv_draw_rect.o ./Core/lvgl/src/lv_draw/lv_draw_rect.su ./Core/lvgl/src/lv_draw/lv_draw_triangle.cyclo ./Core/lvgl/src/lv_draw/lv_draw_triangle.d ./Core/lvgl/src/lv_draw/lv_draw_triangle.o ./Core/lvgl/src/lv_draw/lv_draw_triangle.su ./Core/lvgl/src/lv_draw/lv_img_cache.cyclo ./Core/lvgl/src/lv_draw/lv_img_cache.d ./Core/lvgl/src/lv_draw/lv_img_cache.o ./Core/lvgl/src/lv_draw/lv_img_cache.su ./Core/lvgl/src/lv_draw/lv_img_decoder.cyclo ./Core/lvgl/src/lv_draw/lv_img_decoder.d ./Core/lvgl/src/lv_draw/lv_img_decoder.o ./Core/lvgl/src/lv_draw/lv_img_decoder.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-lv_draw

