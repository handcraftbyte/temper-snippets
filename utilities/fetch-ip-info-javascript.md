---
title: "Get Client IP Address"
description: "Get your public IP address and request origin information."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"origin": "203.0.113.42"}'
---

```javascript
const response = await fetch('https://httpbin.org/ip');
await response.json();
```

## More Details

```javascript
// Get full request info including headers
const response = await fetch('https://httpbin.org/get');
const data = await response.json();
// data.origin - IP address
// data.headers - All headers sent
// data.url - Full URL requested
```
