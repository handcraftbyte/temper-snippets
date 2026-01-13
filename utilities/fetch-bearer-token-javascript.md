---
title: "Bearer Token Authentication"
description: "Make authenticated request using Bearer token (JWT/OAuth)"
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"authenticated": true, "token": "my-secret-token-123"}'
---

```javascript
const token = 'my-secret-token-123';

const response = await fetch('https://httpbin.org/bearer', {
  headers: {
    'Authorization': `Bearer ${token}`
  }
});
await response.json();
```

## Common Use Cases

- **JWT tokens** from login endpoints
- **OAuth2 access tokens** from auth providers
- **API keys** that require Bearer format
