---
title: "PUT, PATCH, DELETE Requests"
description: "Make REST API update and delete requests"
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"method": "PUT", "json": {"id": 1, "name": "Updated"}}'
---

```javascript
// PUT - Full update
const putResponse = await fetch('https://httpbin.org/put', {
  method: 'PUT',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({ id: 1, name: 'Updated', status: 'active' })
});
const putData = await putResponse.json();

// PATCH - Partial update
const patchResponse = await fetch('https://httpbin.org/patch', {
  method: 'PATCH',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({ status: 'inactive' })
});
const patchData = await patchResponse.json();

// DELETE
const deleteResponse = await fetch('https://httpbin.org/delete', {
  method: 'DELETE'
});
const deleteData = await deleteResponse.json();

({ put: putData.json, patch: patchData.json, delete: deleteData.method });
```
