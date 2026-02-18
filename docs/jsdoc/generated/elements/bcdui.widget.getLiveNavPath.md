# getLiveNavPath()
<span hidden class='htmlPackage'>bcdui.widget</span>


Get current live navpath widget information via callback for the given widget targets. This function regets the current caption information from thewidgets themselves and does not use the navPath model which represents the captions when entering the page

````js
// Usage
bcdui.widget.getLiveNavPath( callback );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| callback | function |  | A callback function which gets the final navpath string and an object holding the single ids/captions |
| values? | string |  | A space separated string which lists the ordered targetIds of the widgets which should be queried (or empty for all) |
| separator? | string | " " | A string used for delimiter between single widget navpath values |


**Returns**: {void}
