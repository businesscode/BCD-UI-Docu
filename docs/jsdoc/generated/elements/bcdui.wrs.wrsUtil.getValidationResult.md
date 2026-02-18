# getValidationResult()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


get wrs:ValidationResult/wrs:Wrs element for given Wrs (optionally creates an empty one)

````js
// Usage
var ret = bcdui.wrs.wrsUtil.getValidationResult( wrs, validationId, doCreate );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| wrs | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| validationId | string |  | validationId |
| doCreate | boolean |  | optional, in case no wrs:ValidationResult/wrs:Wrs exists, create one (empty) |


**Returns**: {DomNode} - wrs:ValidationResult/wrs:Wrs or NULL if none exists and doCreate=false
