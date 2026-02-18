# setCellValue()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Sets cell value, both, the row and cell MUST exist in target modelThis also changes wrs:R to wrs:M and clones wrs:C to wrs:O values.

````js
// Usage
var ret = bcdui.wrs.wrsUtil.setCellValue( wrs, rowId, columnIdOrPos );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| wrs | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| rowId | (string\|number) |  | The row-id or 1-based position of row |
| columnIdOrPos | (string\|number) |  | ID or 1-based position of column |
| value? | string |  | If NULL then wrs:null node is appended to column |


**Returns**: {boolean} - true if value has been set, false otherwise
