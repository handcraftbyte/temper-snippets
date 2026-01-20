---
title: "Haversine Distance"
description: "Calculate distance between two GPS coordinates."
topic: "math"
parameters:
  - name: "lat1"
    type: "number"
    default: 40.7128
    description: "Latitude 1 (degrees)"
  - name: "lon1"
    type: "number"
    default: -74.006
    description: "Longitude 1 (degrees)"
  - name: "lat2"
    type: "number"
    default: 34.0522
    description: "Latitude 2 (degrees)"
  - name: "lon2"
    type: "number"
    default: -118.2437
    description: "Longitude 2 (degrees)"
exampleOutputs:
  - input: { "lat1": 40.7128, "lon1": -74.006, "lat2": 34.0522, "lon2": -118.2437 }
    output: "3935.75"
---

```python
import math
R = 6371
to_rad = lambda d: d * math.pi / 180
dLat, dLon = to_rad(lat2 - lat1), to_rad(lon2 - lon1)
a = math.sin(dLat/2)**2 + math.cos(to_rad(lat1)) * math.cos(to_rad(lat2)) * math.sin(dLon/2)**2
return round(R * 2 * math.atan2(math.sqrt(a), math.sqrt(1-a)), 2)
```
