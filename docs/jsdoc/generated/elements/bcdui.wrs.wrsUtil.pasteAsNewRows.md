# pasteAsNewRows()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Paste data from clipboard as new rows. Changes source model

````js
// Usage
bcdui.wrs.wrsUtil.pasteAsNewRows({ model, rowStartPos });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| args.model | bcdui.core.DataProvider |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| args.rowStartPos | integer |  | Restore rows from |
| args.rowEndPos? | integer | rowStartPos | Restore rows including to. |
| args.colStartPos? | integer | 1 | Restore cols from |
| args.colEndPos? | integer | 1 | Restore cols including to. |
| args.fn? | function |  | Callback function called after operation |
| args.propagateUpdate? | boolean | true | If false, model is not fired |


**Returns**: {void}
