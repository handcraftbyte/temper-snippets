---
title: "YAML to JSON"
description: "Convert simple YAML to JSON format"
topic: "converters"
parameters:
  - name: "yaml"
    type: "string"
    default: "name: John\nage: 30"
    description: "YAML string to convert"
exampleOutputs:
  - input: { "yaml": "name: John\nage: 30" }
    output: "{\"name\":\"John\",\"age\":30}"
  - input: { "yaml": "enabled: true\ncount: 5" }
    output: "{\"enabled\":true,\"count\":5}"
---

```javascript
const parseValue = (v) => {
  v = v.trim();
  if (v === 'true') return true;
  if (v === 'false') return false;
  if (v === 'null') return null;
  if (/^-?\d+$/.test(v)) return parseInt(v);
  if (/^-?\d*\.\d+$/.test(v)) return parseFloat(v);
  return v.replace(/^["']|["']$/g, '');
};

const result = {};
yaml.split('\n').filter(l => l.trim() && !l.trim().startsWith('#')).forEach(line => {
  const [key, ...rest] = line.split(':');
  result[key.trim()] = parseValue(rest.join(':'));
});
return JSON.stringify(result);
```
