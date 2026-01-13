---
title: "CORS Cross-Origin Request"
description: "Make cross-origin request with CORS headers inspection"
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"origin": "https://example.com", "headers": {"Access-Control-Allow-Origin": "*"}}'
---

```javascript
const response = await fetch('https://httpbin.org/get', {
  mode: 'cors',
  headers: {
    'X-Custom-Header': 'triggers-preflight'
  }
});

const data = await response.json();
const corsHeaders = {
  'access-control-allow-origin': response.headers.get('access-control-allow-origin'),
  'access-control-allow-methods': response.headers.get('access-control-allow-methods')
};
({ data, corsHeaders });
```

## CORS Modes

| Mode | Behavior |
|------|----------|
| `cors` | Full CORS request (default for cross-origin) |
| `no-cors` | Limited response, no JS access to response |
| `same-origin` | Fail if not same-origin |

## What Triggers Preflight

- Custom headers (X-* headers)
- Methods other than GET, HEAD, POST
- Content-Type other than form-data, text/plain, application/x-www-form-urlencoded
