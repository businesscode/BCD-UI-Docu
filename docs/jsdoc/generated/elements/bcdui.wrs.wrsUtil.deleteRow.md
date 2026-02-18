# deleteRow()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Deletes a row identified by id, also see [deleteWrsRow()](bcdui.wrs.wrsUtil.deleteWrsRow.md)

````js
// Usage
var ret = bcdui.wrs.wrsUtil.deleteRow( model, rowId );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| model | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| rowId | string |  | Id of row to be deleted |
| propagateUpdate? | boolean | false | If true, fire after change |


**Returns**: {boolean} - true if given row has been modified and converted to wrs:D or false
