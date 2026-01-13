---
title: "Deep Merge Objects"
description: "Deep merge two objects, combining nested properties"
topic: "objects"
parameters:
  - name: "target"
    type: "object"
    default: {"a": {"b": 1, "c": 2}, "d": 3}
    description: "Target object"
  - name: "source"
    type: "object"
    default: {"a": {"b": 10, "e": 5}, "f": 6}
    description: "Source object"
exampleOutputs:
  - input: { "target": {"a": {"b": 1, "c": 2}}, "source": {"a": {"b": 10, "e": 5}} }
    output: "{\"a\":{\"b\":10,\"c\":2,\"e\":5}}"
---

```javascript
const deepMerge = (t, s) => {
  const result = { ...t };
  for (const key of Object.keys(s)) {
    result[key] = (t[key] && typeof t[key] === 'object' && typeof s[key] === 'object')
      ? deepMerge(t[key], s[key]) : s[key];
  }
  return result;
};
return deepMerge(target, source);
```
