# domToJs()
<span hidden class='htmlPackage'>bcdui.wrs.jsUtil</span>


Convert a DOM to an js objectConventions for non-Wrs: - For each element child, except the root, there will be an array.      obj.GuiStaus.Filters[0].Filter[1] - Each element itself is an object, text content becomes the property $t and attributes have their name as propertyname     obj.GuiStaus.Filters[0].Filter[1].Expression[0].value - Textcontent of mixed content (an element has text and element childs) is only written of not blank. (Note, there is no mixed content in any of BCDUI defined XML.)Special conventions for Wrs: - Only the elements in wrsArrayObjects are represented as arrays     obj.Wrs.Data.R[0].C[0].attrName - If a Data.R[n].C element has no attributes, its is not an object but just the plain value to represent data as compact as possible     obj.Wrs.Data.R[1].C[1] but      obj.Wrs.Data.R[1].C[1].t$, if there are attributes obj.Wrs.Data.R[1].C[1].attrNameTODO namespaces

````js
// Usage
var ret = bcdui.wrs.jsUtil.domToJs( args );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | DomDocument |  | wrs:Wrs XML Document to be translated into a JavaScript object |


**Returns**: {Object}
