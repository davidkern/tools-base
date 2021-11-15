FROM debian:bullseye-20211011-slim

RUN --mount=type=bind,src=build,target=/build cd /build && ./build.sh

ENV LANG en_US.UTF-8
USER user
VOLUME [ "/work" ]
