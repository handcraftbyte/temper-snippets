---
title: "Get File Extension"
description: "Extract the file extension from a filename or URL"
topic: "http"
parameters:
  - name: "filename"
    type: "string"
    default: "document.pdf"
    description: "Filename or URL"
exampleOutputs:
  - input: { "filename": "document.pdf" }
    output: "pdf"
  - input: { "filename": "archive.tar.gz" }
    output: "gz"
  - input: { "filename": "noextension" }
    output: ""
---

```javascript
filename.split('.').pop() || '';
```
