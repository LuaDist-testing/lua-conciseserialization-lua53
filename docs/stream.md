
# Stream

---

## Emitter

### Indefinite-Length Array

```lua
local c = require'CBOR'

s:write(c.OPEN_ARRAY)
...
s:write(c.encode(element))
...
s:write(c.BREAK)
```

### Indefinite-Length Map

```lua
local c = require'CBOR'

s:write(c.OPEN_MAP)
...
s:write(c.encode(key))
s:write(c.encode(value))
...
s:write(c.BREAK)
```

### Indefinite-Length String

```lua
local c = require'CBOR'

s:write(c.OPEN_STRING)
...
s:write(c.encode(string_chunk))
...
s:write(c.BREAK)
```

`OPEN_STRING` is an alias of `OPEN_BYTE_STRING` or of `OPEN_TEXT_STRING` following `set_string`.

## Receiver

The function `decoder` accepts a _compatible_
[`ltn12.source`](http://w3.impa.br/~diego/software/luasocket/ltn12.html#source)
source.

A source is a function that produces data, chunk by chunk.
See <http://lua-users.org/wiki/FiltersSourcesAndSinks>.

```lua
local c = require'CBOR'
local ltn12 = require 'ltn12'
src = ltn12.source.file(io.open('file', 'r'))
for _, v in c.decoder(src) do
    print(v)
end

-- when only one value
local _, v = c.decoder(src)()
```
