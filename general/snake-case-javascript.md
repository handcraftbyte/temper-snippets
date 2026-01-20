---
title: "Convert to Snake Case"
description: "Convert a string to snake_case format."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorldExample"
    description: "The string to convert to snake_case"
exampleOutputs:
  - input: { "str": "helloWorldExample" }
    output: "hello_world_example"
  - input: { "str": "Hello World" }
    output: "hello_world"
  - input: { "str": "foo-bar-baz" }
    output: "foo_bar_baz"
---

```javascript
str.replace(/([a-z])([A-Z])/g, '$1_$2').replace(/[-\s]+/g, '_').toLowerCase();
```
