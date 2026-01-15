---
title: "JSON to YAML"
description: "Convert JSON string to YAML format"
topic: "converters"
parameters:
  - name: "json"
    type: "string"
    default: '{"name": "John", "age": 30}'
    description: "JSON string to convert"
exampleOutputs:
  - input: { "json": "{\"name\": \"John\", \"age\": 30}" }
    output: "name: John\nage: 30"
  - input: { "json": "{\"items\": [1, 2, 3]}" }
    output: "items:\n  - 1\n  - 2\n  - 3"
---

```javascript
const toYaml = (obj, indent = 0) => {
  const pad = '  '.repeat(indent);
  if (Array.isArray(obj)) {
    return obj.map(v => `${pad}- ${typeof v === 'object' ? '\n' + toYaml(v, indent + 1) : v}`).join('\n');
  }
  if (typeof obj === 'object' && obj !== null) {
    return Object.entries(obj).map(([k, v]) => {
      if (typeof v === 'object') return `${pad}${k}:\n${toYaml(v, indent + 1)}`;
      return `${pad}${k}: ${v}`;
    }).join('\n');
  }
  return `${pad}${obj}`;
};
return toYaml(JSON.parse(json));
```
