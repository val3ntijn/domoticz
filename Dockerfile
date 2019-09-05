FROM linuxserver/domoticz:latest
RUN \
 echo "**** install extra packages ****" && \
 apk add --no-cache --virtual=build-dependencies \
   setcap
RUN sudo setcap cap_net_raw=+eip /var/lib/domoticz/domoticz
