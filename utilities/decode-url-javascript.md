---
title: "Decode URL"
description: "Decode a URL-encoded string"
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hello%20World%21%20How%20are%20you%3F"
    description: "The URL-encoded string to decode"
exampleOutputs:
  - input: { "str": "Hello%20World%21%20How%20are%20you%3F" }
    output: "Hello World! How are you?"
  - input: { "str": "foo%3Dbar%26baz%3Dqux" }
    output: "foo=bar&baz=qux"
---

```javascript
decodeURIComponent(str);
```
