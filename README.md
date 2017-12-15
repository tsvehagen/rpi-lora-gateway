## RaspberryPi LoRa Gateway

This is a docker-compose project for running [lora-gateway-bridge](https://github.com/brocaar/lora-gateway-bridge) and
[packet_forwarder](https://github.com/Lora-net/packet_forwarder) on RaspberryPi.

You might want to change the following
* GPIO_RESET in packet-forwarder/start.sh
* gateway_ID in local_conf.json
* MQTT_ env variables in docker-compose.yml
* Add your ca.crt

