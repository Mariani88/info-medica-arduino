################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
INO_SRCS += \
../heartbeats2.ino 

CPP_SRCS += \
../.ino.cpp \
../HttpCommunication.cpp 

LINK_OBJ += \
./.ino.cpp.o \
./HttpCommunication.cpp.o 

INO_DEPS += \
./heartbeats2.ino.d 

CPP_DEPS += \
./.ino.cpp.d \
./HttpCommunication.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
.ino.cpp.o: ../.ino.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/matias/software/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/cores/arduino" -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/variants/mega" -I"/home/matias/Arduino/libraries/WiFiEsp" -I"/home/matias/Arduino/libraries/WiFiEsp/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

HttpCommunication.cpp.o: ../HttpCommunication.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/matias/software/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/cores/arduino" -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/variants/mega" -I"/home/matias/Arduino/libraries/WiFiEsp" -I"/home/matias/Arduino/libraries/WiFiEsp/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

heartbeats2.o: ../heartbeats2.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/matias/software/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/cores/arduino" -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/variants/mega" -I"/home/matias/Arduino/libraries/WiFiEsp" -I"/home/matias/Arduino/libraries/WiFiEsp/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


