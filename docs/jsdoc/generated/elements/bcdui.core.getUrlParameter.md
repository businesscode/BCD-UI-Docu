# getUrlParameter()
<span hidden class='htmlPackage'>bcdui.core</span>


Extracts the value of a parameter definition from the URL. For example ifthe URL is "http://myHost/myApp/myReport.jsp?guiStatusGZ=abc" and theparameterName is "guiStatusGZ" the return value is "abc".

````js
// Usage
var ret = bcdui.core.getUrlParameter( url, parameterName );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| url | string |  | The URL containing the parameter. |
| parameterName | string |  | The parameter name. |
| defaultValue? | string |  | The default value when the result would be null.<br/>If not specified it returns null if the parameter is not found. |


**Returns**: {string} - The value of the parameter or the default value (usually NULL)if the parameter is empty or not found.
