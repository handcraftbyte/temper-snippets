---
title: "Convert to Camel Case"
description: "Convert a string to camelCase format"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "hello-world-example"
    description: "The string to convert (supports spaces, hyphens, underscores)"
exampleOutputs:
  - input: { "str": "hello-world-example" }
    output: "helloWorldExample"
  - input: { "str": "Hello World" }
    output: "helloWorld"
  - input: { "str": "foo_bar_baz" }
    output: "fooBarBaz"
---

```javascript
str.toLowerCase().replace(/[-_\s]+(.)?/g, (_, c) => c ? c.toUpperCase() : '');
```
