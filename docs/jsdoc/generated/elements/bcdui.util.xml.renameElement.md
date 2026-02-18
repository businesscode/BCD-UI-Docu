# renameElement()
<span hidden class='htmlPackage'>bcdui.util.xml</span>


Renames an XML element and optionally filters its child elements (which isuseful in conjunction with the wrs-Format).

````js
// Usage
var ret = bcdui.util.xml.renameElement( element, newName );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| element | DomElement |  | The XML element to be renamed. |
| newName | string |  | The new name of the XML element. |


**Returns**: {DomElement} - The renamed XML element.
