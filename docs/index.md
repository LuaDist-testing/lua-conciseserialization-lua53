
# lua-ConciseSerialization

---

## Overview

The [Concise Binary Object Representation](http://cbor.io/)
([RFC 7049](http://tools.ietf.org/html/rfc7049)) is a data format
whose design goals include the possibility of extremely small code size,
fairly small message size, and extensibility without the need for version negotiation.

It's a pure Lua implementation, without dependency.

## References

The homepage of CBOR is available at <http://cbor.io/>.

CBOR is specified in the [RFC-7049](https://tools.ietf.org/html/rfc7049).

## Status

lua-ConciseSerialization is in beta stage.

It's developed for Lua 5.1, 5.2 & 5.3. There are 2 variants:

- one compatible with all interpreters since Lua 5.1
- another which uses the Lua 5.3 features


## Download

lua-ConciseSerialization source can be downloaded from
[GitHub](http://github.com/fperrad/lua-ConciseSerialization/releases/).

## Installation

lua-ConciseSerialization is available via LuaRocks:

```sh
luarocks install lua-conciseserialization
# luarocks install lua-conciseserialization-lua53
```

or manually, with:

```sh
make install LUAVER=5.2
```

## Test

The test suite requires the module
[lua-TestMore](http://fperrad.github.io/lua-TestMore/).

```sh
make test
```

## Copyright and License

Copyright &copy; 2016 Fran&ccedil;ois Perrad
[![OpenHUB](http://www.openhub.net/accounts/4780/widgets/account_rank.gif)](http://www.openhub.net/accounts/4780?ref=Rank)
[![LinkedIn](http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.gif)](http://www.linkedin.com/in/fperrad)

This library is licensed under the terms of the MIT/X11 license,
like Lua itself.
