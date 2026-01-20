---
title: "Object to Array"
description: "Convert an object to an array of key-value pairs using Object.entries."
topic: "converters"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": 1, "b": 2, "c": 3}
    description: "Object to convert."
exampleOutputs:
  - input: { "obj": {"a": 1, "b": 2, "c": 3} }
    output: "[[\"a\", 1], [\"b\", 2], [\"c\", 3]]"
---

```javascript
Object.entries(obj);
```
