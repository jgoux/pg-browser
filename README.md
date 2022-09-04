**All this commands has to be run from the root of the repository.**

Run the Buildroot container:

```bash
./build.sh
```

[OPTIONAL] In the container, copy the configuration files from the host:

```bash
cp -r /pg-wasm/* /pg-wasm/.config . && cp /pg-wasm/board/pg-wasm/linux.conf ./output/build/linux-5.17.15/.config
```

[OPTIONAL] Eventually tweak the configuration and save it back to the host:

```bash
# Tweak main config
make menuconfig
cp .config /pg-wasm/.config

# Tweak linux kernel config
# If it's the first time you run this command, exit the menuconfig and run "cp /pg-wasm/board/pg-wasm/linux.conf ./output/build/linux-5.17.15/.config", then you can go back to "make linux-menuconfig"
make linux-menuconfig
cp output/build/linux-5.17.15/.config /pg-wasm/board/pg-wasm/linux.conf
```

Build the image and save it to the host:

```bash
make
```

# How to create a filesystem for v86 (json + .bin files)

```
# ./build-fs.sh <from-folder> <to-folder>
./build-fs.sh ./rootfs.tar ./filesystem
```