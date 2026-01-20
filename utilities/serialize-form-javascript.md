---
title: "Serialize Form Data"
description: "Serialize form data to a query string or JavaScript object for easy submission."
topic: "browser"
parameters:
  - name: "formId"
    type: "string"
    default: "myForm"
    description: "Form element ID."
exampleOutputs:
  - input: { "formId": "myForm" }
    output: "Form serialization function created"
---

```javascript
const serializeForm = id => {
  const form = document.getElementById(id);
  if (!form) return null;
  return Object.fromEntries(new FormData(form));
};
return "Form serialization function created";
```
