# insertRow()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Inserting empty wrs:I rows at the given location, respecting default values.Values can be filled in fn().

````js
// Usage
bcdui.wrs.wrsUtil.insertRow({ model });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| args.model | bcdui.core.DataProvider |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| args.rowStartPos? | integer | 1 | Start |
| args.rowEndPos? | integer | rowStartPos | End |
| args.fn? | function |  | Callback function called after operation |
| args.insertBeforeSelection? | boolean | true |  |
| args.propagateUpdate? | boolean | true | If false, model is not fired |


**Returns**: {void}

**Example:**
````js
bcdui.wrs.wrsUtil.insertRow({model: model, propagateUpdate: false, rowStartPos:1, rowEndPos:1, fn: function(){   bcdui.wrs.wrsUtil.setCellValue(model, 1, "comment_text", conf.comment);   bcdui.wrs.wrsUtil.setCellValue(model, 1, "scope", conf.scope); });
````