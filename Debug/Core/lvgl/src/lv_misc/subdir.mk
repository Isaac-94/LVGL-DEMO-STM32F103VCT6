################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_misc/lv_anim.c \
../Core/lvgl/src/lv_misc/lv_area.c \
../Core/lvgl/src/lv_misc/lv_circ.c \
../Core/lvgl/src/lv_misc/lv_color.c \
../Core/lvgl/src/lv_misc/lv_fs.c \
../Core/lvgl/src/lv_misc/lv_gc.c \
../Core/lvgl/src/lv_misc/lv_ll.c \
../Core/lvgl/src/lv_misc/lv_log.c \
../Core/lvgl/src/lv_misc/lv_math.c \
../Core/lvgl/src/lv_misc/lv_mem.c \
../Core/lvgl/src/lv_misc/lv_task.c \
../Core/lvgl/src/lv_misc/lv_templ.c \
../Core/lvgl/src/lv_misc/lv_txt.c \
../Core/lvgl/src/lv_misc/lv_utils.c 

OBJS += \
./Core/lvgl/src/lv_misc/lv_anim.o \
./Core/lvgl/src/lv_misc/lv_area.o \
./Core/lvgl/src/lv_misc/lv_circ.o \
./Core/lvgl/src/lv_misc/lv_color.o \
./Core/lvgl/src/lv_misc/lv_fs.o \
./Core/lvgl/src/lv_misc/lv_gc.o \
./Core/lvgl/src/lv_misc/lv_ll.o \
./Core/lvgl/src/lv_misc/lv_log.o \
./Core/lvgl/src/lv_misc/lv_math.o \
./Core/lvgl/src/lv_misc/lv_mem.o \
./Core/lvgl/src/lv_misc/lv_task.o \
./Core/lvgl/src/lv_misc/lv_templ.o \
./Core/lvgl/src/lv_misc/lv_txt.o \
./Core/lvgl/src/lv_misc/lv_utils.o 

C_DEPS += \
./Core/lvgl/src/lv_misc/lv_anim.d \
./Core/lvgl/src/lv_misc/lv_area.d \
./Core/lvgl/src/lv_misc/lv_circ.d \
./Core/lvgl/src/lv_misc/lv_color.d \
./Core/lvgl/src/lv_misc/lv_fs.d \
./Core/lvgl/src/lv_misc/lv_gc.d \
./Core/lvgl/src/lv_misc/lv_ll.d \
./Core/lvgl/src/lv_misc/lv_log.d \
./Core/lvgl/src/lv_misc/lv_math.d \
./Core/lvgl/src/lv_misc/lv_mem.d \
./Core/lvgl/src/lv_misc/lv_task.d \
./Core/lvgl/src/lv_misc/lv_templ.d \
./Core/lvgl/src/lv_misc/lv_txt.d \
./Core/lvgl/src/lv_misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_misc/%.o Core/lvgl/src/lv_misc/%.su Core/lvgl/src/lv_misc/%.cyclo: ../Core/lvgl/src/lv_misc/%.c Core/lvgl/src/lv_misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/demo" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/Src/Lcd" -I"C:/Users/Isaac/Documents/LCD_TFT/IdeCubemx/LVGL/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-lv_misc

clean-Core-2f-lvgl-2f-src-2f-lv_misc:
	-$(RM) ./Core/lvgl/src/lv_misc/lv_anim.cyclo ./Core/lvgl/src/lv_misc/lv_anim.d ./Core/lvgl/src/lv_misc/lv_anim.o ./Core/lvgl/src/lv_misc/lv_anim.su ./Core/lvgl/src/lv_misc/lv_area.cyclo ./Core/lvgl/src/lv_misc/lv_area.d ./Core/lvgl/src/lv_misc/lv_area.o ./Core/lvgl/src/lv_misc/lv_area.su ./Core/lvgl/src/lv_misc/lv_circ.cyclo ./Core/lvgl/src/lv_misc/lv_circ.d ./Core/lvgl/src/lv_misc/lv_circ.o ./Core/lvgl/src/lv_misc/lv_circ.su ./Core/lvgl/src/lv_misc/lv_color.cyclo ./Core/lvgl/src/lv_misc/lv_color.d ./Core/lvgl/src/lv_misc/lv_color.o ./Core/lvgl/src/lv_misc/lv_color.su ./Core/lvgl/src/lv_misc/lv_fs.cyclo ./Core/lvgl/src/lv_misc/lv_fs.d ./Core/lvgl/src/lv_misc/lv_fs.o ./Core/lvgl/src/lv_misc/lv_fs.su ./Core/lvgl/src/lv_misc/lv_gc.cyclo ./Core/lvgl/src/lv_misc/lv_gc.d ./Core/lvgl/src/lv_misc/lv_gc.o ./Core/lvgl/src/lv_misc/lv_gc.su ./Core/lvgl/src/lv_misc/lv_ll.cyclo ./Core/lvgl/src/lv_misc/lv_ll.d ./Core/lvgl/src/lv_misc/lv_ll.o ./Core/lvgl/src/lv_misc/lv_ll.su ./Core/lvgl/src/lv_misc/lv_log.cyclo ./Core/lvgl/src/lv_misc/lv_log.d ./Core/lvgl/src/lv_misc/lv_log.o ./Core/lvgl/src/lv_misc/lv_log.su ./Core/lvgl/src/lv_misc/lv_math.cyclo ./Core/lvgl/src/lv_misc/lv_math.d ./Core/lvgl/src/lv_misc/lv_math.o ./Core/lvgl/src/lv_misc/lv_math.su ./Core/lvgl/src/lv_misc/lv_mem.cyclo ./Core/lvgl/src/lv_misc/lv_mem.d ./Core/lvgl/src/lv_misc/lv_mem.o ./Core/lvgl/src/lv_misc/lv_mem.su ./Core/lvgl/src/lv_misc/lv_task.cyclo ./Core/lvgl/src/lv_misc/lv_task.d ./Core/lvgl/src/lv_misc/lv_task.o ./Core/lvgl/src/lv_misc/lv_task.su ./Core/lvgl/src/lv_misc/lv_templ.cyclo ./Core/lvgl/src/lv_misc/lv_templ.d ./Core/lvgl/src/lv_misc/lv_templ.o ./Core/lvgl/src/lv_misc/lv_templ.su ./Core/lvgl/src/lv_misc/lv_txt.cyclo ./Core/lvgl/src/lv_misc/lv_txt.d ./Core/lvgl/src/lv_misc/lv_txt.o ./Core/lvgl/src/lv_misc/lv_txt.su ./Core/lvgl/src/lv_misc/lv_utils.cyclo ./Core/lvgl/src/lv_misc/lv_utils.d ./Core/lvgl/src/lv_misc/lv_utils.o ./Core/lvgl/src/lv_misc/lv_utils.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-lv_misc

