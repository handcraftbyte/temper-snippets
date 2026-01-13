---
title: "Send Custom Headers"
description: "Send request with custom HTTP headers and inspect them"
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"headers": {"X-Custom-Header": "my-value", "X-Request-Id": "12345"}}'
---

```javascript
const response = await fetch('https://httpbin.org/headers', {
  headers: {
    'X-Custom-Header': 'my-value',
    'X-Request-Id': '12345',
    'Accept-Language': 'en-US'
  }
});
await response.json();
```

## Common Headers

| Header | Purpose |
|--------|---------|
| `Authorization` | Auth tokens |
| `X-API-Key` | API authentication |
| `X-Request-Id` | Request tracing |
| `Accept-Language` | Preferred language |
| `Cache-Control` | Caching directives |
