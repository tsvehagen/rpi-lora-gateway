FROM arm32v7/debian:jessie AS build

RUN apt-get update && apt-get install -y \
	build-essential \
	git

WORKDIR /

RUN git clone https://github.com/Lora-net/lora_gateway.git \
	&& cd lora_gateway \
	&& make

RUN git clone https://github.com/Lora-net/packet_forwarder.git \
	&& cd packet_forwarder \
	&& make

FROM arm32v7/debian:jessie

ENV LORA_ROOT /lora

RUN mkdir -p $LORA_ROOT
WORKDIR $LORA_ROOT

COPY --from=build /packet_forwarder/lora_pkt_fwd/lora_pkt_fwd $LORA_ROOT/
COPY --from=build /packet_forwarder/lora_pkt_fwd/global_conf.json $LORA_ROOT/
ADD start.sh $LORA_ROOT/

CMD [ "./start.sh" ]
