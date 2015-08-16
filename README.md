# Docker NodeMCU Builder

Toolchain to compile NodeMCU for ESP8266 in docker.


## Usage

### Build this on your own

Check out this repo, build the container and run it:
```
git clone https://github.com/asmaps/docker-nodemcu-builder.git
docker build -t nodemcu-builder docker-nodemcu-builder
cd <nodemcu-firmware>
docker run --rm -v `pwd`:/opt/nodemcu-firmware nodemcu-builder
```

### Use pre-built docker hub version

Run:
```
cd <nodemcu-firmware>
docker run --rm -v `pwd`:/opt/nodemcu-firmware asmaps/nodemcu-builder
```
