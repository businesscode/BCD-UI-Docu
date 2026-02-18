# validateModel()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


runs validation xslt against given model, you can access the result via returned trafo, see return section.for one-time validation you can supply the callback function (fn parameter)

````js
// Usage
var ret = bcdui.wrs.wrsUtil.validateModel({ model, dataProviders });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| validationId | string |  | 'bcdValidationId' attribute in ValidationResult/Wrs yields this value |
| args.model | (string\|bcdui.core.DataProvider) |  | Id of a DataProvider or the DataProvider itself (dp must be ready) |
| args.stylesheetUrl? | string | "defauldValidation-stypesheet" | URL to validation stylesheet, defaults to 'xslt/validate/validateWrs.xslt' |
| args.dataProviders | Array.\<bcdui.core.DataProvider> |  | additional data providers as parameters |
| args.fn? | function |  | callback function called after validation done, gets object as parameter, containig properties: validationResult: the wrs:ValidationResult node of resulting transformation, may be null |


**Returns**: {bcdui.core.TransformationChain} - created transformation chain for the validation, it can be reused via bcdui.core.reExecute(_validatorTrafo, callBackFn);         the data can be accessed via _validatorTrafo.getData() which returns wrs:ValidationResult or null or ValidationResult with empty wrs:Data
