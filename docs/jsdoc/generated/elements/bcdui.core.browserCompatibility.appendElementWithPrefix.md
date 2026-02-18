# appendElementWithPrefix()
<span hidden class='htmlPackage'>bcdui.core.browserCompatibility</span>


Creates a new element whose name can contain a well-known prefix (like "wrs")and appends it to the specified target element. This function should be usedrather than createElementNS, because the latter is not available on theInternet Explorer.

````js
// Usage
var ret = bcdui.core.browserCompatibility.appendElementWithPrefix( targetElement, name, insertBeforeTargetElement );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| targetElement | HtmlElement |  | The targetElement which is used for appending the new element. |
| name | string |  | The element name which may contain a well-known prefix. |
| insertBeforeTargetElement | boolean |  | Prepend instead of append element. |


**Returns**: {DomElement} - The new XMLElement.
