# template()
<span hidden class='htmlPackage'>bcdui.util</span>


returns a function which resolves basic doT like placeholder expressions

````js
// Usage
var ret = bcdui.util.template( str );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| str | string |  | string holding placeholders like {{=it[0]}} or {{=it.myProperty}} |


**Returns**: {function} - function which can be called with an object to finally resolve the parameters
