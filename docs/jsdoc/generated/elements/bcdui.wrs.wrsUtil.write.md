# write()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Set a value to on a certain xPath and create the xPath where necessary. This combines Element.evaluate() for a single node with creating the path where necessary. It will prefer extending an existing start-part over creating a second one.After the operation the xPath (with the optional value) is guaranteed to exist (pre-existing or created or extended) and the addressed node is returned.

````js
// Usage
var ret = bcdui.wrs.wrsUtil.write( doc, xPath );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doc | Document |  | the document to operate on |
| xPath | string |  | xPath pointing to the node which is set to the value value or plain xPath to be created if not there. <br/>   It tries to reuse all matching parts that are already there. If you provide for example "/n:Root/n:MyElem/@attr2" and there is already "/n:Root/n:MyElem/@attr1", then "/n:Root/n:MyElem" will be "re-used" and get an additional attribute attr2.<br/>   Many expressions are allowed, for example "/n:Root/n:MyElem[@attr1='attr1Value']/n:SubElem" is also ok.<br/>   By nature, some xPath expressions are not allowed, for example using '//' or "/n:Root/n:MyElem/[@attr1 or @attr2]/n:SubElem" is obviously not unambiguous enough and will throw an error.<br/>   This method is Wrs aware, use for example '/wrs:Wrs/wrs:Data/wrs:*[2]/wrs:C[3]' as xPath and it will turn wrs:R[wrs:C] into wrs:M[wrs:C and wrs:O], see Wrs format.<br/>   (can include dot template placeholders which get filled with the given params) |
| params? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions<br/>    Example: bcdui.wkModels.guiStatus.write("/guiStatus:Status/guiStatus:ClientSettings/guiStatus:Test[@caption='{{=it[0]}}' and @caption2='{{=it[1]}}']", ["china's republic", "drag\"n drop"]) |
| value? | string |  | Optional value which should be written, for example to "/n:Root/n:MyElem/@attr" or with "/n:Root/n:MyElem" as the element's text content.<br/>   If not provided, the xPath contains all values like in "/n:Root/n:MyElem[@attr='a' and @attr1='b']" or needs none like "/n:Root/n:MyElem" |


**Returns**: {DomNode} - the resulting element (either newly created or existing one)
