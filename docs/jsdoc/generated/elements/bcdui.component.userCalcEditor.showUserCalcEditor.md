# showUserCalcEditor()
<span hidden class='htmlPackage'>bcdui.component.userCalcEditor</span>


Brings up a user calc editor, i.e. an inout field with autocomplete for entering formulas that can be used in calculation.xslt

````js
// Usage
bcdui.component.userCalcEditor.showUserCalcEditor({ targetModelXPath: "$guiStatus/cust:Elem/@value", successCallBack });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The argument map: |
| args.targetModelXPath | writableModelXPath |  | The XPath to write to. |
| args.id? | string |  | The base id of the field. If nothing is specified the id is generated. |
| args.optionsModelXPath? | modelXPath |  | An XPath returning a node-set holding the allowed |
| args.uniqueOptionsModelXPath? | modelXPath |  | variables for the formula editor. The parameter "optionsModelRelativeValueXPath" can optionally<br/>be set to define non-visible values belonging to the visible options denoted by this XPath. |
| args.optionsModelRelativeValueXPath? | xPath |  | If specified this XPath is applied to each node returned by the "optionsModelXPath" to get a non-visible value to<br/>be written to the target node. When no "optionsModelRelativeValueXPath" is given there is no distinction between the caption and value of each option. |
| args.dialogCaption? | string |  | Caption of dialog window, it will be used as i18n key to translate the caption. |
| args.isFormatOptionsVisible? | boolean | true | Show format fields (format, scale, percent) |
| args.validateVariableNamesCheckbox? | boolean | false | Show checkbox which enabling\disabling validation of variable names with list in optionsModel while input formula |
| args.validateVariableNamesCaption? | string |  | Caption of checkbox, which enable\disable formula variables validation |
| args.successCallBack | function |  | Callback function which called after success saving model after closing modal window |
| args.skipServerSidedFunctions? | boolean | false | Set to true to disable usage of server sided functions like CntDist. |


**Returns**: {void}
