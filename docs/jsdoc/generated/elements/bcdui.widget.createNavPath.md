# createNavPath()
<span hidden class='htmlPackage'>bcdui.widget</span>


Writes navpath widget information to the given target and updates this information changes

````js
// Usage
bcdui.widget.createNavPath();
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args? | Object |  | The parameter map contains the following properties. |
| args.targetHtml? | targetHtmlRef | "#bcdNavPath" | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.title? | string | "Report" | A title string which is used during filename generation for exports |
| args.values? | string |  | A space separated string which lists the ordered targetIds of the widgets which should be queried |
| args.separator? | string |  | A string used for delimiter between single widget navpath values, default is ' ' (space) |


**Returns**: {void}
