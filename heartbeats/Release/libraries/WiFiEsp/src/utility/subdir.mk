################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/matias/Arduino/libraries/WiFiEsp/src/utility/EspDrv.cpp \
/home/matias/Arduino/libraries/WiFiEsp/src/utility/RingBuffer.cpp 

LINK_OBJ += \
./libraries/WiFiEsp/src/utility/EspDrv.cpp.o \
./libraries/WiFiEsp/src/utility/RingBuffer.cpp.o 

CPP_DEPS += \
./libraries/WiFiEsp/src/utility/EspDrv.cpp.d \
./libraries/WiFiEsp/src/utility/RingBuffer.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/WiFiEsp/src/utility/EspDrv.cpp.o: /home/matias/Arduino/libraries/WiFiEsp/src/utility/EspDrv.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/matias/software/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/cores/arduino" -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/variants/mega" -I"/home/matias/Arduino/libraries/WiFiEsp" -I"/home/matias/Arduino/libraries/WiFiEsp/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/WiFiEsp/src/utility/RingBuffer.cpp.o: /home/matias/Arduino/libraries/WiFiEsp/src/utility/RingBuffer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/matias/software/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/cores/arduino" -I"/home/matias/software/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/variants/mega" -I"/home/matias/Arduino/libraries/WiFiEsp" -I"/home/matias/Arduino/libraries/WiFiEsp/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


