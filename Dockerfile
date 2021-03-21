FROM --platform=linux/arm64 alpine:edge

COPY build.sh /build.sh

RUN \
  apk add git make cmake libstdc++ gcc g++ libuv-dev openssl-dev hwloc-dev linux-headers musl-dev && \
  git clone https://github.com/xmrig/xmrig && \
  mkdir xmrig/build && cd xmrig/build && \
  sed -i '1s/^/#include <limits.h>\n/' /xmrig/src/backend/opencl/wrappers/AdlLib_linux.cpp && \
  chmod +x /build.sh

ENTRYPOINT [ "/xmrig/build/xmrig" ]