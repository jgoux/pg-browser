**All this commands has to be run from the root of the repository.**

Run the Buildroot container:

```bash
./build.sh
```

In the container, copy the configuration files from the host:

```bash
cp -r /pg-wasm/* /pg-wasm/.config . && cp /pg-wasm/board/pg-wasm/linux.conf ./output/build/linux-5.17.15/.config
```

[OPTIONAL] Eventually tweak the configuration and save it back to the host:

```bash
make menuconfig
cp .config /pg-wasm/.config

make linux-menuconfig
cp output/build/linux-5.17.15/.config /pg-wasm/board/pg-wasm/linux.conf
```

Build the image and save it to the host:

```bash
make
```