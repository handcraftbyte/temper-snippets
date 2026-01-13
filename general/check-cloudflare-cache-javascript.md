---
title: "Check Cloudflare Cache Status"
description: "Check if a resource is served from Cloudflare's cache by inspecting the CF-Cache-Status header"
topic: "http"
parameters:
  - name: url
    type: string
    default: "https://httpbin.org/response-headers?CF-Cache-Status=HIT"
    description: URL to check
exampleOutputs:
  - input: { "url": "https://httpbin.org/response-headers?CF-Cache-Status=HIT" }
    output: "HIT"
  - input: { "url": "https://httpbin.org/response-headers?CF-Cache-Status=MISS" }
    output: "MISS"
---

```javascript
const response = await fetch(url);
return response.headers.get('CF-Cache-Status') || 'No CF-Cache-Status header';
```

## CF-Cache-Status Values

| Status | Meaning |
|--------|---------|
| `HIT` | Served from Cloudflare cache |
| `MISS` | Not in cache, fetched from origin |
| `EXPIRED` | Was cached but has expired, refetched |
| `STALE` | Served stale while revalidating |
| `DYNAMIC` | Not eligible for caching (e.g., POST requests, dynamic content) |
| `BYPASS` | Cache bypassed due to configuration |

## Real-World Usage

```javascript
async function checkCFCache(url) {
  const response = await fetch(url);
  const status = response.headers.get('CF-Cache-Status');
  const age = response.headers.get('Age');

  return {
    cached: status === 'HIT',
    status,
    age: age ? parseInt(age) : null
  };
}
```

## Testing with httpbin

Use httpbin to simulate different cache statuses:

- `https://httpbin.org/response-headers?CF-Cache-Status=HIT`
- `https://httpbin.org/response-headers?CF-Cache-Status=MISS`
- `https://httpbin.org/response-headers?CF-Cache-Status=EXPIRED`
