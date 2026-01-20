---
title: "Prettify HTML"
description: "Format HTML with indentation for improved readability and debugging."
topic: "html"
parameters:
  - name: "html"
    type: "string"
    default: "<html><head><title>Test</title></head><body><div><p>Hello</p></div></body></html>"
    description: "HTML string to format."
  - name: "indent"
    type: "number"
    default: 2
    description: "Number of spaces for indentation."
exampleOutputs:
  - input: { "html": "<div><p>Hello</p></div>", "indent": 2 }
    output: "<div>\n  <p>\n    Hello\n  </p>\n</div>"
---

```ruby
result = []
level = 0
void_tags = %w[area base br col embed hr img input link meta param source track wbr]

html.scan(/<[^>]+>|[^<]+/).each do |token|
  text = token.strip
  next if text.empty?

  if text.start_with?('</')
    level -= 1
    result << (' ' * (level * indent)) + text
  elsif text.start_with?('<')
    result << (' ' * (level * indent)) + text
    tag = text.match(/<(\w+)/)[1].downcase
    level += 1 unless void_tags.include?(tag) || text.end_with?('/>')
  else
    result << (' ' * (level * indent)) + text
  end
end

return result.join("\n")
```
