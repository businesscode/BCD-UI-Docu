# parseDocument()
<span hidden class='htmlPackage'>bcdui.util.xml</span>


Parses an XML document and register well-known namespaces and their prefixes to enablexPath lookups thru JS API, i.e. document.selectSingleNode("/wrs:Wrs/wrs:Header").

````js
// Usage
var ret = bcdui.util.xml.parseDocument( doc );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doc | (string\|DomDocument\|DomElement\|DomAttribute) |  | XML Document as a String or Document or Node. If a document or a node is provided, they are cloned. A node is re-built as a document. |


**Returns**: {document} - wrapped Document with namespace resolver and .selectSingleNode(), .selectNodes() API
