---
title: "Haversine Distance"
description: "Calculate distance between two GPS coordinates"
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

```bash
echo "scale=10; r=6371; pi=3.14159265359; tr(d)=d*pi/180; dlat=tr($lat2-$lat1); dlon=tr($lon2-$lon1); a=s(dlat/2)^2+c(tr($lat1))*c(tr($lat2))*s(dlon/2)^2; scale=2; r*2*a(sqrt(a)/sqrt(1-a))" | bc -l
```
