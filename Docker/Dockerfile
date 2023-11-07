from ubuntu:20.04

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install all packages needed to build the pico SDK
RUN apt-get update; \
    apt-get -y install git cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential libstdc++-arm-none-eabi-newlib python3

# Set up the pico SDK
WORKDIR /opt/
RUN git clone https://github.com/raspberrypi/pico-sdk.git
WORKDIR pico-sdk
RUN git pull; \
    git submodule update
ENV PICO_SDK_PATH=/opt/pico-sdk

COPY ./ex_proj/ /src

# Build the src code
WORKDIR /src/
ENTRYPOINT ["./build.sh", "hello_world"]
