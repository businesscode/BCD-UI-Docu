# getColPosById()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


get column position by id

````js
// Usage
var ret = bcdui.wrs.wrsUtil.getColPosById( wrs, id );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| wrs | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| id | string |  | The column-id wrs:C/@id |


**Returns**: {integer} - 1-based column position from the header/pos attribute, 0 if no such column was found
