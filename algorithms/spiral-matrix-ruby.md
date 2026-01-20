---
title: "Spiral Matrix"
description: "Traverse a 2D matrix in spiral order starting from the top-left corner."
topic: "arrays"
parameters:
  - name: "matrix"
    type: "array"
    default: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    description: "2D matrix"
exampleOutputs:
  - input: { "matrix": [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
    output: "[1,2,3,6,9,8,7,4,5]"
---

```ruby
m = matrix
result = []
top, bottom, left, right = 0, m.length - 1, 0, m[0].length - 1
while top <= bottom && left <= right
  (left..right).each { |i| result << m[top][i] }
  top += 1
  (top..bottom).each { |i| result << m[i][right] }
  right -= 1
  if top <= bottom
    (right).downto(left).each { |i| result << m[bottom][i] }
    bottom -= 1
  end
  if left <= right
    (bottom).downto(top).each { |i| result << m[i][left] }
    left += 1
  end
end
return result
```
