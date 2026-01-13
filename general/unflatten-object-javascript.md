---
title: "Unflatten Object"
description: "Convert a flat object with dot notation keys to a nested object"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a.b.c": 1, "a.b.d": 2, "e": 3}
    description: "Flat object with dot notation"
exampleOutputs:
  - input: { "obj": {"a.b.c": 1, "a.b.d": 2, "e": 3} }
    output: "{\"a\":{\"b\":{\"c\":1,\"d\":2}},\"e\":3}"
---

```javascript
const unflatten = (o) => Object.keys(o).reduce((acc, k) => {
  k.split('.').reduce((obj, key, i, arr) =>
    obj[key] = i === arr.length - 1 ? o[k] : obj[key] || {}, acc);
  return acc;
}, {});
return unflatten(obj);
```
