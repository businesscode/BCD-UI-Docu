# resolveURLWithXMLBase()
<span hidden class='htmlPackage'>bcdui.util.url</span>


Resolves a URL with its correct xml:base. To compute the xml:base for theURL it may be necessary to resolve the xml:base with its ancestor xml:baseelements unless one of them is an absolute URL.

````js
// Usage
var ret = bcdui.util.url.resolveURLWithXMLBase( DomElement, url );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| DomElement | DomElement |  | The point where the xml:base resolution should<br/>start. |
| url | string |  | The URL to be resolved. |


**Returns**: {string} - The URL resolved with all xml:base elements of the elementitself and its ancestor elements.
