---
title: "Join URL Paths"
description: "Join URL path segments properly handling slashes."
topic: "http"
parameters:
  - name: "segments"
    type: "array"
    default: ["https://example.com", "api/", "/users", "123"]
    description: "Array of path segments."
exampleOutputs:
  - input: { "segments": ["https://example.com", "api/", "/users", "123"] }
    output: "https://example.com/api/users/123"
---

```javascript
segments.map(s => s.replace(/^\/|\/$/g, '')).filter(Boolean).join('/').replace(':/', '://');
```
