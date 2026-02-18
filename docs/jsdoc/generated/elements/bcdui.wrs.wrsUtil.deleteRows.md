# deleteRows()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Deleting rows (operation will change source model).See [restore()](bcdui.wrs.wrsUtil.restore.md) on how the change history is maintained.

````js
// Usage
bcdui.wrs.wrsUtil.deleteRows({ model, rowStartPos });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| args.model | bcdui.core.DataProvider |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| args.rowStartPos | integer |  | Delete rows from |
| args.rowEndPos? | integer | rowStartPos | Delete rows including to. By default is equal rowStartPos |
| args.fn? | function |  | Callback function called after operation |
| args.propagateUpdate? | boolean | true | If false, model is not fired |


**Returns**: {void}
