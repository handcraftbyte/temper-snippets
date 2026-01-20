---
title: "Send Multipart Form Data"
description: "Upload files and form fields using multipart/form-data encoding."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"files": {}, "form": {"username": "john", "email": "john@example.com"}}'
---

```javascript
const formData = new FormData();
formData.append('username', 'john');
formData.append('email', 'john@example.com');
formData.append('file', new Blob(['Hello World'], { type: 'text/plain' }), 'hello.txt');

const response = await fetch('https://httpbin.org/post', {
  method: 'POST',
  body: formData
});
await response.json();
```

## Notes

- Don't set `Content-Type` header manually - browser sets it with correct boundary
- Use `new Blob()` to create file-like data or pass actual `File` objects
- httpbin.org echoes back the form fields and files received
