# tools-base

Base container for tools.

 * Debian bullseye-20211011-slim
 * `user` and `tool` users
 * `/host` volume owned by `user` to be bind-mounted on the host
 * `/tool` directory owned by `tool` for installation of tools

## Building

Building locally requires buildkit, e.g.

```DOCKER_BUILDKIT=1 docker build . -t tools-base```

# License

This project is licensed under either of

Apache License, Version 2.0, (LICENSE-APACHE or http://www.apache.org/licenses/LICENSE-2.0)
MIT license (LICENSE-MIT or http://opensource.org/licenses/MIT) at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in
`tools-base` by you, as defined in the Apache-2.0 license, shall be dual licensed as above, without
any additional terms or conditions.
