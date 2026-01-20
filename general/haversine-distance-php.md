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

```php
$R = 6371;
$toRad = fn($d) => $d * M_PI / 180;
$dLat = $toRad($lat2 - $lat1);
$dLon = $toRad($lon2 - $lon1);
$a = sin($dLat/2)**2 + cos($toRad($lat1)) * cos($toRad($lat2)) * sin($dLon/2)**2;
return round($R * 2 * atan2(sqrt($a), sqrt(1-$a)), 2);
```
