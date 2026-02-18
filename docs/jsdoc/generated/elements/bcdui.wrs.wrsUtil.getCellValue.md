# getCellValue()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Get cell value

````js
// Usage
var ret = bcdui.wrs.wrsUtil.getCellValue( wrs, rowId, columnId );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| wrs | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| rowId | (string\|number) |  | The row-id or 1-based position of row |
| columnId | (string\|number) |  | ID or 1-based position of column |


**Returns**: {string} - Current cell value or null
