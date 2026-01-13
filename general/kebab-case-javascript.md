---
title: "Convert to Kebab Case"
description: "Convert a string to kebab-case format"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorldExample"
    description: "The string to convert to kebab-case"
exampleOutputs:
  - input: { "str": "helloWorldExample" }
    output: "hello-world-example"
  - input: { "str": "Hello World" }
    output: "hello-world"
  - input: { "str": "foo_bar_baz" }
    output: "foo-bar-baz"
---

```javascript
str.replace(/([a-z])([A-Z])/g, '$1-$2').replace(/[_\s]+/g, '-').toLowerCase();
```
