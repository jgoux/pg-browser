docker build -t buildroot .

docker run \
    --rm \
    --name build-pg-wasm \
    -v $PWD/tools:/tools \
    -v $PWD/build:/build \
    -v $PWD/pg-wasm:/pg-wasm \
    -ti \
    --platform linux/amd64 \
    buildroot