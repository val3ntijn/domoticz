FROM linuxserver/domoticz:latest
RUN apk update && \
    echo "**** install runtime packages ****" && \
    apk add --no-cache \
    setcap && \
    echo "**** run ping fix ****" && \
    sudo setcap cap_net_raw=+eip /var/lib/domoticz/domoticz
