#!/bin/bash

ie=input-emulator

${ie} start kbd
clear

# set_type_delay(50)

sleep 6
${ie} kbd key enter
${ie} kbd type "# tio comes with full shell completion support"
${ie} kbd key enter
${ie} kbd key enter
sleep 2
${ie} kbd type "tio --"
${ie} kbd key tab
${ie} kbd key tab
sleep 3
${ie} kbd type "help"
sleep 1
${ie} kbd key enter
sleep 10
${ie} kbd key enter
${ie} kbd type "# Let's list available serial devices by ID"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd type "tio --list-devices"
${ie} kbd key enter
sleep 3
${ie} kbd key enter
${ie} kbd type "# Connect to serial device"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd type "tio /dev/serial/by-id/usb-FTDI_Quad_RS232-HS-if00-port0"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd key enter
${ie} kbd key enter
${ie} kbd type "# We are now connected to remote TTY terminal via a usb <--> serial cable"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd type "uname -sniro"
${ie} kbd key enter
sleep 3
${ie} kbd type "ls -la"
${ie} kbd key enter
sleep 3
${ie} kbd key enter
${ie} kbd type "# Let's try unplug and plug usb cable and see what happens.."
${ie} kbd key enter
${ie} kbd key enter
sleep 10
${ie} kbd key enter
${ie} kbd key enter
${ie} kbd type "# tio automatically reconnected"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd type "# In session, tio supports various useful key commands"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd type "# Press ctrl-t ? to list available key commands"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd type "?"
sleep 5
${ie} kbd key enter
${ie} kbd key enter
${ie} kbd type "# Show configuration by pressing ctrl-t c"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key c
sleep 3
${ie} kbd key enter
${ie} kbd key enter
${ie} kbd type "# Show the TX/RX statistics by pressing ctrl-t s"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key s
sleep 3
${ie} kbd key enter
${ie} kbd key enter
${ie} kbd type "# Show line states by pressing ctrl-t L"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key L
sleep 3
${ie} kbd key enter
${ie} kbd key enter
${ie} kbd type "# Toggle line state by pressing ctrl-t g"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key g
sleep 3
${ie} kbd key 1
sleep 3
${ie} kbd key enter
${ie} kbd key enter
${ie} kbd type "# To quit simply press ctrl-t q"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key q
sleep 3
${ie} kbd key enter
${ie} kbd type "# tio can also be configured via configuration file"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd type "cat ~/.tioconfig"
${ie} kbd key enter
sleep 10
${ie} kbd key enter
${ie} kbd type "# Connect using specific sub-configuration by name"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd type "tio rpi3"
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key q
sleep 3
${ie} kbd type "tio tincan"
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key q
sleep 3
${ie} kbd key enter
${ie} kbd type "# It is also possible to connect sub-configuration by pattern"
${ie} kbd key enter
${ie} kbd key enter
sleep 3
${ie} kbd type "tio usb0"
${ie} kbd key enter
sleep 3
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key z
sleep 10
${ie} kbd keydown ctrl
${ie} kbd key t
${ie} kbd keyup ctrl
${ie} kbd key q
sleep 3

${ie} stop all
