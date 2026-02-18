# createDOMFromXmlString()
<span hidden class='htmlPackage'>bcdui.core.browserCompatibility</span>


Parses given xml string and creates a DOMDocument out of it.

````js
// Usage
var ret = bcdui.core.browserCompatibility.createDOMFromXmlString( serializedDoc, msg );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| serializedDoc | string |  | A serialized XML document. |
| msg | string |  | Optional for better error message. |


**Returns**: {DomDocument} - The DOMDocument parsed from the serialized document string.
