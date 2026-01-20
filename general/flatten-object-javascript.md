---
title: "Flatten Object"
description: "Flatten a nested object to a single level with dot notation keys."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": {"b": {"c": 1}}, "d": 2}
    description: "Nested object"
exampleOutputs:
  - input: { "obj": {"a": {"b": {"c": 1}}, "d": 2} }
    output: "{\"a.b.c\":1,\"d\":2}"
---

```javascript
const flatten = (o, prefix = '') => Object.keys(o).reduce((acc, k) => {
  const key = prefix ? `${prefix}.${k}` : k;
  return typeof o[k] === 'object' && o[k] !== null && !Array.isArray(o[k])
    ? { ...acc, ...flatten(o[k], key) } : { ...acc, [key]: o[k] };
}, {});
return flatten(obj);
```
