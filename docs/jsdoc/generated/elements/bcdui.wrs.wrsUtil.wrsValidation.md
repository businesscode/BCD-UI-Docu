# wrsValidation()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Wrs validation which validates selected wrs:C against provided validation functionparameters:

````js
// Usage
var ret = bcdui.wrs.wrsUtil.wrsValidation({ validationId, model, cellValidation, cellValidation });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| args.validationId | string |  | the ID of this validator |
| args.model | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| args.cellValidation.func | function |  | function taking args object with:<br/>                                                                           'wrsC'        - the wrs:C element to validate<br/>                                                                           'wrsHeaderC'  - the wrs:Header/wrs:Columns/wrs:C meta info element<br/>                                                                           returns either NULL (valid) or { validationMessage:String } |
| args.cellValidation.bRefSelector | function |  | function taking wrs:Header element and returns node-set of wrs:Columns/wrs:C to get validated |


**Returns**: {DomDocument} - wrsDoc
