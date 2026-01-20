---
title: "Remove Query Parameter"
description: "Remove a specific query parameter from a URL string."
topic: "http"
parameters:
  - name: "url"
    type: "string"
    default: "https://example.com?foo=1&bar=2&baz=3"
    description: "URL with query parameters."
  - name: "param"
    type: "string"
    default: "bar"
    description: "Parameter to remove."
exampleOutputs:
  - input: { "url": "https://example.com?foo=1&bar=2&baz=3", "param": "bar" }
    output: "https://example.com/?foo=1&baz=3"
---

```javascript
const u = new URL(url);
u.searchParams.delete(param);
return u.toString();
```
