# restore()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Restore (operation will change source model).Client side operations on Wrs keep a history, wrs:R turns into wrs:M for modified rows and wrs:D for deleted.Changed columns change from wrs:C to wrs:O. This allows undoing such a change till the data is send to the server.

````js
// Usage
bcdui.wrs.wrsUtil.restore({ model, rowStartPos });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| args.model | bcdui.core.DataProvider |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| args.rowStartPos | integer |  | Restore rows from |
| args.rowEndPos? | integer | rowStartPos | Restore rows including to. |
| args.colStartPos? | integer | 1 | Restore cols from |
| args.colEndPos? | integer | colStartPos | Restore cols including to. |
| args.fn? | function |  | Callback function called after operation |
| args.propagateUpdate? | boolean | true | If false, model is not fired |


**Returns**: {void}
