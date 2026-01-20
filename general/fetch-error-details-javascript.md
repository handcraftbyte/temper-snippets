---
title: "Fetch Error Details"
description: "Extract status, headers and body from an HTTP error response."
topic: "http"
exampleOutputs:
  - input: {}
    output: "500 INTERNAL SERVER ERROR"
---

```javascript
const res = await fetch('https://httpbin.org/status/500');
const body = await res.text();
return {
  ok: res.ok,
  status: res.status,
  statusText: res.statusText,
  headers: Object.fromEntries(res.headers),
  body
};
```
