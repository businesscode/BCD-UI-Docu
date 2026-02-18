# removeXPath()
<span hidden class='htmlPackage'>bcdui.util.xml</span>


Removes XML elements from a DOM document. These XML elements are identifiedwith an XPath.

````js
// Usage
var ret = bcdui.util.xml.removeXPath( doc, path );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doc | (DomDocument\|bcdui.core.DataProvider) |  | The document the XPath specified in the "path"<br/>argument is evaluated on. |
| path | (writableModelXPath\|string) |  | The XPath pointing to the nodes to be removed. |
| enableWrsExtensions? | boolean | true | Set this flag to "true" if the function should treat<br/>wrs elements differently (like converting wrs:R to wrs:D instead of removing it).<br/>It is "true" by default. |
| removeEmptyElements? | boolean | false | A flag indicating if elements which do not contain any<br/>content anymore should be removed. The default value is "false". This is for example<br/>very useful when the path is something like /Items/Item/@value and the respective<br/>Item elements need to be cleared as well. |


**Returns**: {number} - The number of removed nodes.
