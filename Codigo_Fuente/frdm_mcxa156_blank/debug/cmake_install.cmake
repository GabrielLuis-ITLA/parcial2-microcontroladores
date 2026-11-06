# Install script for directory: /Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/gabrielluis/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-darwin-x86_64-arm-none-eabi/bin/arm-none-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/cmake/extension/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/cmake/extension/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/cmake/extension/reports/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/devices/MCX/MCXA/MCXA156/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/examples/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/aoi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/ctimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/dac_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/edma4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/edma_unified/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/eim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/eqdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/erm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexpwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/glikey/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/i3c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/inputmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/lpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/lpc_freqme/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/lpcmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/lptmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/mcx_cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/mcx_spc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/mcx_vbat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/opamp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/ostimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/port/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/smartcard/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/trdc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/utick/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/waketimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/wuu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/wwdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/armv7-m7/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/armv8-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/cache64/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/llc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/lmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/lpcac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/lpcac_n4a_mcxn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/lplmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/cache/xcache/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/a-format/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/biss/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/camera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/endat2p2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/mculcd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/qspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/t-format/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/drivers/flexio/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/components/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/rtos/freertos/freertos-kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/usb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/rtcesl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/motor_control/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/examples/lvgl_examples/lvgl_sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/mcuboot_opensource/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/freemaster/mcux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/safety_iec60730b/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/cadence/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/emwin/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/middleware/mstp-lib/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/gabrielluis/Documents/parcial2-microcontroladores/Codigo_Fuente/frdm_mcxa156_blank/debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
