FROM linuxserver/domoticz:latest

# set version label
ARG BUILD_DATE
ARG VERSION
ARG DOMOTICZ_COMMIT
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="val3ntijn"

#RUN echo "**** install runtime packages ****" && \
#    apk add --no-cache \
#    setcap && \
RUN echo "**** run ping fix ****" && \
    setcap cap_net_raw=+eip /var/lib/domoticz/domoticz
