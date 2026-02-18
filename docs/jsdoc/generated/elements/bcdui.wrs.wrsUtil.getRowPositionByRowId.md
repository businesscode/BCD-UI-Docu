# getRowPositionByRowId()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


1-based position of a row which is identified by its row-id

````js
// Usage
var ret = bcdui.wrs.wrsUtil.getRowPositionByRowId({ model, rowId });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| args.model | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| args.rowId | string |  | Row id of which to get the position |


**Returns**: {integer} - Either position of a row in the document or -1 if no such row was found
