# getValidationErrorCount()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Convenience method to return error count in current document (possibly validated by validateWrs.xml)

````js
// Usage
var ret = bcdui.wrs.wrsUtil.getValidationErrorCount( wrs );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| wrs | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |


**Returns**: {integer} - -2: if no validation has been performed, -1: if the data provider is not ready yet, otherwise the number of errors found is returned
