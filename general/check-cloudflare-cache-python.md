---
title: "Check Cloudflare Cache Status"
description: "Check if a resource is served from Cloudflare's cache by inspecting the CF-Cache-Status header."
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

```python
import urllib.request
req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
with urllib.request.urlopen(req) as response:
    return response.headers.get('CF-Cache-Status', 'No CF-Cache-Status header')
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

```python
import urllib.request

def check_cf_cache(url):
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    with urllib.request.urlopen(req) as response:
        status = response.headers.get('CF-Cache-Status')
        age = response.headers.get('Age')
        return {
            'cached': status == 'HIT',
            'status': status,
            'age': int(age) if age else None
        }
```

## Testing with httpbin

Use httpbin to simulate different cache statuses:

- `https://httpbin.org/response-headers?CF-Cache-Status=HIT`
- `https://httpbin.org/response-headers?CF-Cache-Status=MISS`
- `https://httpbin.org/response-headers?CF-Cache-Status=EXPIRED`
