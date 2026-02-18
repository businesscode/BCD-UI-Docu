# duplicateRow()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>



````js
// Usage
bcdui.wrs.wrsUtil.duplicateRow( model, row );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| model | bcdui.core.DataProvider |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| row | (DomElement\|string) |  | Row element or row-id to be duplicated |
| propagateUpdate? | boolean | true | If false, model is not fired |
| fn? | function |  | Callback function called after operation |


**Returns**: {void}
