---
title: "HTTP Basic Authentication"
description: "Make authenticated request using HTTP Basic Auth"
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"authenticated": true, "user": "myuser"}'
---

```javascript
const username = 'myuser';
const password = 'mypassword';
const credentials = btoa(`${username}:${password}`);

const response = await fetch(`https://httpbin.org/basic-auth/${username}/${password}`, {
  headers: {
    'Authorization': `Basic ${credentials}`
  }
});
await response.json();
```

## How It Works

1. Combine username and password with colon: `user:pass`
2. Base64 encode the string using `btoa()`
3. Send in `Authorization` header with `Basic` prefix
4. httpbin validates credentials and returns auth status
