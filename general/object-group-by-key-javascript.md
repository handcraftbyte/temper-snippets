---
title: "Object Group By Key"
description: "Group an array of objects by a specified key into categorized collections."
topic: "objects"
parameters:
  - name: "arr"
    type: "array"
    default: [{"type": "fruit", "name": "apple"}, {"type": "veg", "name": "carrot"}, {"type": "fruit", "name": "banana"}]
    description: "Array of objects"
  - name: "key"
    type: "string"
    default: "type"
    description: "Key to group by"
exampleOutputs:
  - input: { "arr": [{"type": "fruit", "name": "apple"}, {"type": "veg", "name": "carrot"}, {"type": "fruit", "name": "banana"}], "key": "type" }
    output: "{\"fruit\":[{\"type\":\"fruit\",\"name\":\"apple\"},{\"type\":\"fruit\",\"name\":\"banana\"}],\"veg\":[{\"type\":\"veg\",\"name\":\"carrot\"}]}"
---

```javascript
const result = arr.reduce((acc, item) => {
  const k = item[key];
  (acc[k] = acc[k] || []).push(item);
  return acc;
}, {});
return result;
```
