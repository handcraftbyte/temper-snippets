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

```javascript
const format = (node, level) => {
  const ind = ' '.repeat(indent);
  let result = '';
  for (const child of node.childNodes) {
    const pad = ind.repeat(level);
    if (child.nodeType === 3) {
      const text = child.textContent.trim();
      if (text) result += pad + text + '\n';
    } else if (child.nodeType === 1) {
      const tag = child.tagName.toLowerCase();
      const attrs = [...child.attributes].map(a => ` ${a.name}="${a.value}"`).join('');
      if (child.childNodes.length === 0) {
        result += pad + `<${tag}${attrs}></${tag}>\n`;
      } else {
        result += pad + `<${tag}${attrs}>\n` + format(child, level + 1) + pad + `</${tag}>\n`;
      }
    }
  }
  return result;
};
const doc = new DOMParser().parseFromString(html, 'text/html');
const isFullDoc = /<html[\s>]/i.test(html);
const root = isFullDoc ? doc.documentElement : doc.body;
return format(root, 0).trim();
```
