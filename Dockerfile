FROM debian:bullseye-20211011-slim

RUN useradd -m user \
    && useradd -m tool \
    && mkdir /work \
    && chown user:user /work \
    && mkdir /tool \
    && chown tool:tool /tool

USER user
VOLUME [ "/work" ]
