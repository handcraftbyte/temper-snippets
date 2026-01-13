---
title: Parse User Agent
description: Extract browser, OS, and device information from a user agent string
topic: "http"
tags:
  - user-agent
  - browser
  - parsing
parameters:
  - name: ua
    type: string
    default: ""
    description: User agent string (leave empty to use current browser)
---

```javascript
function parseUserAgent(userAgent) {
  const ua = userAgent || navigator.userAgent;

  // Detect browser
  let browser = 'Unknown';
  if (ua.includes('Firefox/')) browser = 'Firefox';
  else if (ua.includes('Edg/')) browser = 'Edge';
  else if (ua.includes('Chrome/')) browser = 'Chrome';
  else if (ua.includes('Safari/') && !ua.includes('Chrome')) browser = 'Safari';
  else if (ua.includes('Opera') || ua.includes('OPR/')) browser = 'Opera';

  // Detect OS
  let os = 'Unknown';
  if (ua.includes('Windows')) os = 'Windows';
  else if (ua.includes('Mac OS')) os = 'macOS';
  else if (ua.includes('Linux')) os = 'Linux';
  else if (ua.includes('Android')) os = 'Android';
  else if (ua.includes('iPhone') || ua.includes('iPad')) os = 'iOS';

  // Detect device type
  let device = 'Desktop';
  if (/Mobile|Android|iPhone|iPad|iPod/i.test(ua)) {
    device = /iPad|Tablet/i.test(ua) ? 'Tablet' : 'Mobile';
  }

  // Extract version
  const versionMatch = ua.match(/(Chrome|Firefox|Safari|Edge|OPR)\/(\d+)/);
  const version = versionMatch ? versionMatch[2] : null;

  return { browser, os, device, version, raw: ua };
}

return parseUserAgent(ua);
```

## Example Output

For a Chrome browser on macOS:
```json
{
  "browser": "Chrome",
  "os": "macOS",
  "device": "Desktop",
  "version": "120",
  "raw": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)..."
}
```

## Common User Agents

| Browser | Identifier |
|---------|------------|
| Chrome | `Chrome/` |
| Firefox | `Firefox/` |
| Safari | `Safari/` (without Chrome) |
| Edge | `Edg/` |
| Opera | `OPR/` or `Opera` |

## Bot Detection

```javascript
function isBot(userAgent) {
  const botPatterns = [
    /bot/i, /crawl/i, /spider/i, /slurp/i,
    /googlebot/i, /bingbot/i, /yandex/i,
    /facebookexternalhit/i, /twitterbot/i
  ];
  return botPatterns.some(p => p.test(userAgent));
}
```
