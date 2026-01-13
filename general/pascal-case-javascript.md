---
title: "Convert to Pascal Case"
description: "Convert a string to PascalCase format"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "hello-world-example"
    description: "The string to convert to PascalCase"
exampleOutputs:
  - input: { "str": "hello-world-example" }
    output: "HelloWorldExample"
  - input: { "str": "hello world" }
    output: "HelloWorld"
  - input: { "str": "foo_bar_baz" }
    output: "FooBarBaz"
---

```javascript
str.toLowerCase().replace(/(^|[-_\s]+)(.)?/g, (_, __, c) => c ? c.toUpperCase() : '');
```
