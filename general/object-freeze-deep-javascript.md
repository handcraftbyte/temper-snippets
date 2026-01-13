---
title: "Deep Freeze Object"
description: "Recursively freeze an object and all nested objects"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": {"b": 1}}
    description: "Object to freeze"
exampleOutputs:
  - input: { "obj": {"a": {"b": 1}} }
    output: "Object frozen successfully"
---

```javascript
const deepFreeze = o => {
  Object.keys(o).forEach(k => {
    if (typeof o[k] === 'object' && o[k] !== null) deepFreeze(o[k]);
  });
  return Object.freeze(o);
};
deepFreeze(obj);
"Object frozen successfully";
```
