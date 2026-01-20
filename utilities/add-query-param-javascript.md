---
title: "Add Query Parameter"
description: "Add or update a query parameter in a URL string."
topic: "http"
parameters:
  - name: "url"
    type: "string"
    default: "https://example.com?foo=1"
    description: "URL."
  - name: "param"
    type: "string"
    default: "bar"
    description: "Parameter name."
  - name: "value"
    type: "string"
    default: "2"
    description: "Parameter value."
exampleOutputs:
  - input: { "url": "https://example.com?foo=1", "param": "bar", "value": "2" }
    output: "https://example.com/?foo=1&bar=2"
---

```javascript
const u = new URL(url);
u.searchParams.set(param, value);
return u.toString();
```
