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

```python
from html.parser import HTMLParser
import re

class Prettifier(HTMLParser):
    def __init__(self, indent_size):
        super().__init__()
        self.indent_size = indent_size
        self.level = 0
        self.result = []

    def handle_starttag(self, tag, attrs):
        attrs_str = ''.join(f' {k}="{v}"' for k, v in attrs) if attrs else ''
        self.result.append(' ' * (self.level * self.indent_size) + f'<{tag}{attrs_str}>')
        self.level += 1

    def handle_endtag(self, tag):
        self.level -= 1
        self.result.append(' ' * (self.level * self.indent_size) + f'</{tag}>')

    def handle_data(self, data):
        text = data.strip()
        if text:
            self.result.append(' ' * (self.level * self.indent_size) + text)

p = Prettifier(indent)
p.feed(html)
return '\n'.join(p.result)
```
