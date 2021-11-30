# dxtool/os-debian

Debian OS container for tools.

 * `user` and `tool` users
 * `/host` volume owned by `user` to be bind-mounted on the host
 * `/tool` directory owned by `tool` for installation of tools

## Building

```docker buildx build --platform linux/amd64,linux/arm64 -t dxtool/os-debian .```

# License

This project is licensed under either of

Apache License, Version 2.0, (LICENSE-APACHE or http://www.apache.org/licenses/LICENSE-2.0)
MIT license (LICENSE-MIT or http://opensource.org/licenses/MIT) at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in
`dxtool/os-debian` by you, as defined in the Apache-2.0 license, shall be dual licensed as above,
without any additional terms or conditions.
