---
title: "Unescape HTML"
description: "Decode HTML entities back to characters"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "&lt;p&gt;Hello &amp; World&lt;/p&gt;"
    description: "HTML-encoded string"
exampleOutputs:
  - input: { "str": "&lt;p&gt;Hello &amp; World&lt;/p&gt;" }
    output: "<p>Hello & World</p>"
---

```javascript
str.replace(/&(amp|lt|gt|quot|#39);/g, (_, e) => ({ amp: '&', lt: '<', gt: '>', quot: '"', '#39': "'" }[e]));
```
