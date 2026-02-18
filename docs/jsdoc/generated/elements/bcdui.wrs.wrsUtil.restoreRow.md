# restoreRow()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Restores a wrs:D, wrs:M identified by id, also see [restore()](bcdui.wrs.wrsUtil.restore.md)

````js
// Usage
var ret = bcdui.wrs.wrsUtil.restoreRow( model, rowId );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| model | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| rowId | string |  | Id of row to be deleted |
| propagateUpdate? | boolean | false | If true, fire after change |


**Returns**: {boolean} - true if given row has been restored or false if row is not wrs:M nor wrs:D
