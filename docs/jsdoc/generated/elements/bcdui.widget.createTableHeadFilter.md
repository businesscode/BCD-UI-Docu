# createTableHeadFilter()
<span hidden class='htmlPackage'>bcdui.widget</span>


injectFilter in table

````js
// Usage
bcdui.widget.createTableHeadFilter({ tableElement, targetModelXPath: "$guiStatus/cust:Elem/@value", inputModel: myModel });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.tableElement | HtmlElement |  | The HTML Table Element which you want to use for injection |
| args.targetModelXPath | writableModelXPath |  | The xPath pointing to the root-node this widget will place entered selected items into |
| args.inputModel | bcdui.core.DataProvider |  | WRS datamodel representing the table columns |
| args.statusModel? | bcdui.core.DataProvider | bcdui.wkModels.guiStatus | StatusModel where the widget will write its content to. |
| args.useCustomHeaderRenderer? | boolean | false | Set to true when your code adds bcdFilterButton classes on its own (e.g. grid) |
| args.callback? | function |  | Function which will be executed after a change of the filters have been performed |
| args.getCaptionForColumnValue? | function |  | Function (colIdx, colValue) which returns the rendered caption for the cell. By default standard wrs @caption, wrs:references and unit/scale handling is supported already. Deprecated (prefer valueCaptionProvider parameter). |
| args.getFilteredValues? | function |  | Function (colIdx) which needs to return a wrs:C array which holds the valid values for the current column. Use this to e.g. only show prefiltered values . Deprecated (prefer valueCaptionProvider parameter). |
| args.valueCaptionProvider? | function |  | Function (inputModel, colIdx) which needs to return a Promise which resolves with an array of objects {value, caption, isFiltered} |
| args.columnFiltersCustomFilter? | Object |  | CustomColumnFilter functions passed to column filter. columnFiltersCustomFilter is an array holding an object per bRef/column and an operations array which defines id, caption, valueCaptionProvider, filterFunction and gridFilterRowFunction |


**Returns**: {void}
