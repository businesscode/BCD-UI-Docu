# transposeGrouping()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


This transposes the inner-most @dim column column of a WRS from rows to columns.This is faster using the XLST with the same name except for Webkit, where this is faster

````js
// Usage
var ret = bcdui.wrs.wrsUtil.transposeGrouping( input );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| input | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |


**Returns**: {DomDocument} - The transposed document
