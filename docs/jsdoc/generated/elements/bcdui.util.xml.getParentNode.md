# getParentNode()
<span hidden class='htmlPackage'>bcdui.util.xml</span>


Determines the parent element of a node, no matter if it is an attribute nodeor an element. It is quite useful especially for attribute nodes, because theparentNode property does not work on them.

````js
// Usage
var ret = bcdui.util.xml.getParentNode( node );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| node | (DomElement\|DomAttribute) |  |  |


**Returns**: {DomElement} - The parent element of the specified node.
