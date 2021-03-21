
## build
```
docker build -t shamelesscookie/xmrig-arm64 ./
docker run --name xmrig -it --security-opt seccomp=./default.json --entrypoint /bin/sh shamelesscookie/xmrig-arm64 /build.sh
docker commit xmrig
docker rm xmrig
docker tag <id-of-committed-image> shamelesscookie/xmrig-arm64
docker run --name xmrig --entrypoint /xmrig/build/xmrig -it shamelesscookie/xmrig-arm64 --help
docker commit xmrig
docker rm xmrig
docker tag <id-of-committed-image> shamelesscookie/xmrig-arm64
docker run --rm -it shamelesscookie/xmrig-arm64 --help
```