---
title: "Parse JSON Safely"
description: "Parse JSON with a fallback value returned if parsing fails."
topic: "json"
parameters:
  - name: "jsonStr"
    type: "string"
    default: "{\"name\": \"John\"}"
    description: "JSON string to parse."
  - name: "fallback"
    type: "string"
    default: "{}"
    description: "Fallback value if parsing fails (as JSON)."
exampleOutputs:
  - input: { "jsonStr": "{\"name\": \"John\"}", "fallback": "{}" }
    output: "{\"name\": \"John\"}"
  - input: { "jsonStr": "invalid json", "fallback": "{}" }
    output: "{}"
---

```javascript
try { JSON.parse(jsonStr); } catch { JSON.parse(fallback); }
```
