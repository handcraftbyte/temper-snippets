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

```ruby
R = 6371
to_rad = ->(d) { d * Math::PI / 180 }
dLat, dLon = to_rad.call(lat2 - lat1), to_rad.call(lon2 - lon1)
a = Math.sin(dLat/2)**2 + Math.cos(to_rad.call(lat1)) * Math.cos(to_rad.call(lat2)) * Math.sin(dLon/2)**2
return (R * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))).round(2)
```
