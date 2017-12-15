#!/bin/sh

GPIO_RESET=25

cd /sys/class/gpio

if [ ! -e gpio$GPIO_RESET ]; then
	echo $GPIO_RESET > export
fi

cd gpio$GPIO_RESET
echo high > direction
sleep 5
echo 0 > value
sleep 1
echo 0 > value
sleep 3

cd $LORA_ROOT
./lora_pkt_fwd
