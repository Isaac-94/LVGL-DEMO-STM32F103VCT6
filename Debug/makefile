################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include Core/lvgl/src/lv_themes/subdir.mk
-include Core/lvgl/src/lv_objx/subdir.mk
-include Core/lvgl/src/lv_misc/subdir.mk
-include Core/lvgl/src/lv_hal/subdir.mk
-include Core/lvgl/src/lv_font/subdir.mk
-include Core/lvgl/src/lv_draw/subdir.mk
-include Core/lvgl/src/lv_core/subdir.mk
-include Core/lvgl/porting/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/demo/subdir.mk
-include Core/Src/Lcd/Fonts/subdir.mk
-include Core/Src/Lcd/subdir.mk
-include Core/Src/App/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := LVGL
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
LVGL.elf \

MAP_FILES += \
LVGL.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
LVGL.list \


# All Target
all: main-build

# Main-build Target
main-build: LVGL.elf secondary-outputs

# Tool invocations
LVGL.elf LVGL.map: $(OBJS) $(USER_OBJS) C:\Users\Isaac\Documents\LCD_TFT\IdeCubemx\LVGL\STM32F103VCTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "LVGL.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\Isaac\Documents\LCD_TFT\IdeCubemx\LVGL\STM32F103VCTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="LVGL.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

LVGL.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "LVGL.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) LVGL.elf LVGL.list LVGL.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
