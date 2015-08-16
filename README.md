# Docker NodeMCU Builder

Toolchain to compile NodeMCU for ESP8266 in docker.


## Usage

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

`make` is the default command. If you want to run e.g. `make clean` just add it at the end:

Make clean:
```
docker run --rm -ti -v `pwd`:/opt/nodemcu-firmware asmaps/nodemcu-builder make clean
```

### Commands

## Credits

Thanks to (esp-open-sdk)[https://github.com/pfalcon/esp-open-sdk] which this image highly depends on.

And all others that are not listed here
