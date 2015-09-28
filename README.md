# Docker NodeMCU Builder

Toolchain to compile NodeMCU for ESP8266 in docker.

This assumes you are the user with UID 1000 (default for the first user) on your system. Compiled files etc will be created with this uid.


## Usage

### Install docker

https://docs.docker.com/installation/ubuntulinux/


### Build this on your own

Check out this repo, build the container and run it:
```
git clone https://github.com/asmaps/docker-nodemcu-builder.git
docker build -t nodemcu-builder docker-nodemcu-builder
cd <nodemcu-firmware>
docker run --rm -ti -v `pwd`:/opt/nodemcu-firmware nodemcu-builder
```

### Use pre-built docker hub version

In your nodemcu-firmware directory run:
```
docker run --rm -ti -v `pwd`:/opt/nodemcu-firmware asmaps/nodemcu-builder
```

### Commands

`make` is the default command. If you want to run e.g. `make clean` just add it at the end:

```
docker run --rm -ti -v `pwd`:/opt/nodemcu-firmware asmaps/nodemcu-builder make clean
```

### Flashing

For flashing the container needs access to the ttyUSB device and it has to be run as root:
```
docker run --rm -ti --device=/dev/ttyUSB0:/dev/ttyUSB0 -v `pwd`:/opt/nodemcu-firmware -u="root" asmaps/nodemcu-builder make flash
```


## Credits

Thanks to [esp-open-sdk](https://github.com/pfalcon/esp-open-sdk) which this image highly depends on.

And all others that are not listed here
