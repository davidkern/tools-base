# tools-base

Base container for tools.

 * Debian bullseye-20211011-slim
 * `user` and `tool` users
 * `/work` volume owned by `user` to be bind-mounted on the host
 * `/tool` directory owned by `tool` for installation of tools
