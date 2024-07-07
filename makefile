################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
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


BUILD_ARTIFACT_NAME := I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.elf \

MAP_FILES += \
I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.list \


# All Target
all: main-build

# Main-build Target
main-build: I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.elf secondary-outputs

# Tool invocations
I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.elf I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.map: $(OBJS) $(USER_OBJS) C:\Users\91991\STM32CubeIDE\workspace_1.15.1\I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS\STM32F401CCUX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\91991\STM32CubeIDE\workspace_1.15.1\I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS\STM32F401CCUX_FLASH.ld" --specs=nosys.specs -Wl,-Map="I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.elf I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.list I2C_GETTING_DATA_ONE_BY_ONE_WITH_METHODS.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
