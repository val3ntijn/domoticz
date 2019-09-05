FROM linuxserver/domoticz:latest
RUN apk update && apk add setcap && rm -rf /var/cache/apk/*
RUN sudo setcap cap_net_raw=+eip /var/lib/domoticz/domoticz
