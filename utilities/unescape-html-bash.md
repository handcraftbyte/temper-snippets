---
title: "Unescape HTML"
description: "Decode HTML entities back to characters"
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "&lt;p&gt;Hello &amp; World&lt;/p&gt;"
    description: "HTML-encoded string"
exampleOutputs:
  - input: { "s": "&lt;p&gt;Hello &amp; World&lt;/p&gt;" }
    output: "<p>Hello & World</p>"
---

```bash
echo "$s" | sed 's/&lt;/</g; s/&gt;/>/g; s/&amp;/\&/g; s/&quot;/"/g; s/&#39;/'\''/g'
```
