# Class TreeSupport
<span hidden class='htmlPackage'>bcdui.widgetNg.connectable</span>
Tree support class providing item rendering, controls binding and onItemMoved handler

## Constructor
````js
// Usage
var myTS = new bcdui.widgetNg.connectable.TreeSupport({ levelNodeName, itemNodeName, valueAttrName, captionAttrName });
  ````




<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(container, config) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| container | jQuery |  | The container |
| config | object |  | Options |
| config.isDefaultCollapsed? | boolean | true | Initial state |
| config.levelNodeName | string |  | Local nodename of the level, i.e. "Level" |
| config.itemNodeName | string |  | Local nodename of the item, i.e. "Item" |
| config.valueAttrName | string |  | Attribute name of value attribute, i.e. "id" |
| config.captionAttrName | string |  | Attribute name of caption attribute, i.e. "caption" |
| config.leftPaddingLevel? | number | 14 | Left padding in pixels per level depth |

## Methods