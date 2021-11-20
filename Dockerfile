FROM debian:bullseye-20211011-slim

RUN --mount=type=bind,src=build,target=/build cd /build && ./build.sh

ENV LANG en_US.UTF-8
ENV COLORTERM=truecolor
ENV TERM=xterm-256color

USER user
VOLUME [ "/host" ]
