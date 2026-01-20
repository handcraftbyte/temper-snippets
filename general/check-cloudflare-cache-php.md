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

```php
$headers = get_headers($url, true);
return $headers['Cf-Cache-Status'] ?? $headers['CF-Cache-Status'] ?? 'No CF-Cache-Status header';
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

```php
function checkCFCache(string $url): array {
    $headers = get_headers($url, true);
    $status = $headers['Cf-Cache-Status'] ?? $headers['CF-Cache-Status'] ?? null;
    $age = $headers['Age'] ?? null;

    return [
        'cached' => $status === 'HIT',
        'status' => $status,
        'age' => $age !== null ? (int)$age : null
    ];
}
```

## Testing with httpbin

Use httpbin to simulate different cache statuses:

- `https://httpbin.org/response-headers?CF-Cache-Status=HIT`
- `https://httpbin.org/response-headers?CF-Cache-Status=MISS`
- `https://httpbin.org/response-headers?CF-Cache-Status=EXPIRED`
