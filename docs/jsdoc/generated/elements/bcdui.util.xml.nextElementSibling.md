# nextElementSibling()
<span hidden class='htmlPackage'>bcdui.util.xml</span>


Computes which XML element is the next sibling of the given element. In contrastto the nextSibling DOM function this function does only return an XML element (nota comment, text node etc.) or null if there is no sibling element. If the functionis supported by the browser (e.g. FireFox) the native implementation is used. Inother browsers (e.g. Internet Explorer) it is computed here.

````js
// Usage
var ret = bcdui.util.xml.nextElementSibling( element );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| element | DomElement |  |  |


**Returns**: {DomElement} - The element immediately following the specified element ornull if there is no such element.
