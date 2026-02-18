# createFilterTableHeader()
<span hidden class='htmlPackage'>bcdui.widget</span>


Create filter table header

````js
// Usage
bcdui.widget.createFilterTableHeader({ renderer });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.renderer | (string\|bcdui.core.Renderer) |  | Id of the registered renderer to work on or the render itself |
| args.isSync? | boolean | false | Decide whether the action is to be called synchronous or not |
| args.alwaysShowHeader? | boolean | true | If filtering leads to no rows to be displayed, this flag will show the table header to allow removal of filters |
| args.getCaptionForColumnValue? | function |  | Function (colIdx, colValue) which returns the rendered caption for the cell. By default standard wrs @caption, wrs:references and unit/scale handling is supported already |
| args.getFilteredValues? | function |  | Function (colIdx) which needs to return a wrs:C array which holds the valid values for the current column. Use this to e.g. only show prefiltered values |


**Returns**: {void}
