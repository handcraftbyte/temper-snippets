---
title: "Parse URL"
description: "Break down a URL into its individual components like protocol, host, and path."
topic: "strings"
parameters:
  - name: "url"
    type: "string"
    default: "https://user:pass@example.com:8080/path/to/page?foo=bar&baz=qux#section"
    description: "URL to parse."
exampleOutputs:
  - input: { "url": "https://example.com/path?q=test" }
    output: "protocol: https:\nhost: example.com\npathname: /path\nsearch: ?q=test"
---

```javascript
const u = new URL(url);
const parts = [
  `protocol: ${u.protocol}`,
  `host: ${u.host}`,
  u.port && `port: ${u.port}`,
  u.username && `username: ${u.username}`,
  u.password && `password: ${u.password}`,
  `pathname: ${u.pathname}`,
  u.search && `search: ${u.search}`,
  u.hash && `hash: ${u.hash}`
].filter(Boolean);
return parts.join('\n');
```
