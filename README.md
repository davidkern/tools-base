# tools-base

Base container for tools.

 * Debian bullseye-20211011-slim
 * `user` and `tool` users
 * `/host` volume owned by `user` to be bind-mounted on the host
 * `/tool` directory owned by `tool` for installation of tools

## Building

Building locally requires buildkit, e.g.

```DOCKER_BUILDKIT=1 docker build . -t tools-base```
