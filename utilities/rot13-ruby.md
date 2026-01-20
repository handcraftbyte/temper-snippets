---
title: "ROT13 Encode/Decode"
description: "Encode or decode a string using the ROT13 cipher, where the same operation is used for both encoding and decoding."
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World"
    description: "The string to encode/decode."
exampleOutputs:
  - input: { "str": "Hello World" }
    output: "Uryyb Jbeyq"
  - input: { "str": "Uryyb Jbeyq" }
    output: "Hello World"
---

```ruby
str.tr('A-Za-z', 'N-ZA-Mn-za-m')
```
