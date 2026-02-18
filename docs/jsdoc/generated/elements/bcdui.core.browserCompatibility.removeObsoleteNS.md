# removeObsoleteNS()
<span hidden class='htmlPackage'>bcdui.core.browserCompatibility</span>


removes obsolete namespace declarations and moves used ones to the root element

````js
// Usage
var ret = bcdui.core.browserCompatibility.removeObsoleteNS( doc );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doc | (string\|document) |  | The document (doc or string) which should be cleaned |


**Returns**: {string} - The serialized and namespace-cleaned representation of the doc
