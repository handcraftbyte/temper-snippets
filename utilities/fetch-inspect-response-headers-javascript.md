---
title: "Inspect Response Headers"
description: "Fetch a URL and inspect all response headers including custom ones."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"content-type": "application/json", "server": "gunicorn", "date": "..."}'
---

```javascript
const response = await fetch('https://httpbin.org/response-headers?X-Custom=test&Cache-Control=max-age=3600');

const headers = {};
response.headers.forEach((value, key) => {
  headers[key] = value;
});
headers;
```

## Common Response Headers

| Header | Purpose |
|--------|---------|
| `content-type` | Response format |
| `content-length` | Size in bytes |
| `cache-control` | Caching rules |
| `set-cookie` | Cookie to store |
| `location` | Redirect URL |
| `x-ratelimit-*` | Rate limit info |
