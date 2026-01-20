---
title: "Download Binary File"
description: "Download an image or binary file and convert it to a blob or base64."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: "data:image/png;base64,iVBORw0KGgo..."
---

```javascript
const response = await fetch('https://httpbin.org/image/png');
const blob = await response.blob();

// Convert to base64 data URL
const reader = new FileReader();
const dataUrl = await new Promise(resolve => {
  reader.onload = () => resolve(reader.result);
  reader.readAsDataURL(blob);
});
dataUrl;
```

## Other Formats

```javascript
// Get as ArrayBuffer for binary processing
const buffer = await response.arrayBuffer();

// Create object URL for display
const objectUrl = URL.createObjectURL(blob);
```

## Available Test Images

- `https://httpbin.org/image/png`
- `https://httpbin.org/image/jpeg`
- `https://httpbin.org/image/svg`
- `https://httpbin.org/image/webp`
