# duplicateRows()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Duplicate rows in Wrs. Fires fire

````js
// Usage
bcdui.wrs.wrsUtil.duplicateRows({ model });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| args.model | bcdui.core.DataProvider |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| args.rowStartPos? | integer |  | First row to be duplicated |
| args.rowEndPos? | integer | rowStartPos | Last row to be duplicated |
| args.fn? | function |  | Callback function called after operation |
| args.insertBeforeSelection? | boolean | true |  |
| args.propagateUpdate? | boolean | true | If false, model is not fired |


**Returns**: {void}
