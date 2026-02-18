# getCurrentNavPath()
<span hidden class='htmlPackage'>bcdui.widget</span>


Get current navpath widget information for the given widget targets.

````js
// Usage
var ret = bcdui.widget.getCurrentNavPath();
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| values? | string |  | A space separated string which lists the ordered targetIds of the widgets which should be queried (or empty for all) |
| separator? | string | " " | A string used for delimiter between single widget navpath values |


**Returns**: {string} - string containing the current navPath for your selected values
