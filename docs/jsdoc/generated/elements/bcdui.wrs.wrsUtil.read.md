# read()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Reads the string value from a given xPath (or optionally return default value).

````js
// Usage
var ret = bcdui.wrs.wrsUtil.read( doc, xPath );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doc | Document |  | the document to operate on |
| xPath | string |  | xPath pointing to value (can include dot template placeholders which get filled with the given params) |
| params? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| defaultValue? | string |  | default value in case xPath value does not exist |


**Returns**: {string} - text value stored at xPath (or null if no text was found and no defaultValue supplied)
