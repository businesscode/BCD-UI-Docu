# setUrlParameter()
<span hidden class='htmlPackage'>bcdui.core</span>


Replaces a parameter=value definition inside a URL. For example if theurl is "/myApp/myReport.jsp?guiStatusGZ=abc&menuId=xyz", the parameterNameis "guiStatusGZ" and the unEscapedValue is "newValue" the result will be"/myApp/myReport.jsp?menuId=xyz&guiStatusGZ=newValue". Please note thatthis function does not preserve the original parameter ordering.<br/>Additionally it can also put parameter definitions in the anchor section ofthe URL, for example like "/myApp/myReport.jsp?menuId=xyz#guiStatusGZ=bla".

````js
// Usage
var ret = bcdui.core.setUrlParameter( url, parameterName, unEscapedValue );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| url | string |  | The URL where the parameter replacement should be applied. |
| parameterName | string |  | The name of the parameter. |
| unEscapedValue | string |  | The parameter value which must not be escaped.<br/>This function escapes it. If this is NULL the parameter definition is removed. |
| asAnchor? | boolean | false | A boolean value (which is false by default)<br/>indicating if the parameter definition should be placed in the anchor section<br/>of the URL. |
| allowMultiple? | boolean | false | If set to true, allows multiple occurences<br/>of parameter (i.e. resulting in a parsed array on the server) |


**Returns**: {string} - The transformed URL.
