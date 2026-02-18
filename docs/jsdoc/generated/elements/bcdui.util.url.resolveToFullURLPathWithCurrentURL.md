# resolveToFullURLPathWithCurrentURL()
<span hidden class='htmlPackage'>bcdui.util.url</span>


Converts a relative URL (like ../Ziplet) to a full URL path (like(/myApp/ZipLet), based on the current page location.

````js
// Usage
var ret = bcdui.util.url.resolveToFullURLPathWithCurrentURL( url );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| url | string |  | The (relative or absolute) url to a full URL path. |


**Returns**: {string} - The full URL path which is the absolute URLwithout the host/protocol/port part, starting with slash.
