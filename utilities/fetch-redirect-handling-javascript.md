---
title: "Handle Redirects"
description: "Control redirect behavior and track the redirect chain."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"redirected": true, "finalUrl": "https://httpbin.org/get", "status": 200}'
---

```javascript
// Follow redirects (default)
const response = await fetch('https://httpbin.org/redirect/2');
({
  redirected: response.redirected,
  finalUrl: response.url,
  status: response.status
});
```

## Redirect Modes

```javascript
// Don't follow redirects - get 3xx response
const manual = await fetch('https://httpbin.org/redirect/1', {
  redirect: 'manual'
});
// manual.status === 302

// Error on redirect
const noRedirect = await fetch(url, {
  redirect: 'error'
});
// Throws TypeError on redirect
```

## Test Endpoints

- `/redirect/n` - Redirect n times then return 200
- `/redirect-to?url=X` - Redirect to specific URL
- `/absolute-redirect/n` - Absolute URL redirects
- `/relative-redirect/n` - Relative URL redirects
