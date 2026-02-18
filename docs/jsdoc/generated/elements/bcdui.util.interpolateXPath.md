# interpolateXPath()
<span hidden class='htmlPackage'>bcdui.util</span>


transforms a xpath string with placeholders. A value with an apostrophe gets translated into a concat statement.

````js
// Usage
var ret = bcdui.util.interpolateXPath( xPath );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to value (can include dot template placeholders which get filled with the given fillParams) |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |


**Returns**: {string} - final xPath with filled in values for possibly existing placeholders
