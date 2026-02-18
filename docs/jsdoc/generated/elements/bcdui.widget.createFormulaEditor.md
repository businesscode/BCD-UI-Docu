# createFormulaEditor()
<span hidden class='htmlPackage'>bcdui.widget</span>


Displays a field where the user can enter a formula

````js
// Usage
bcdui.widget.createFormulaEditor({ targetModelXPath: "$guiStatus/cust:Elem/@value", targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetModelXPath | writableModelXPath |  | The xPath pointing to the root-node this widget will place entered selected items into. The underlying XML  format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. If you specify a targetmodelxpath, the box automatically acts as target. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.caption? | string | '' | Default '', it will be used as i18n key to translate the caption. |
| args.mandatory? | boolean | false | An empty value is invalid if this parameters sets to true. Default is false. |
| args.optionsModelXPath? | modelXPath |  | xPath pointing to an absolute xpath (starts with $model/..) providing a node-set of available options to display; especially this one supports cross references between models, i.e. $options / * / Value[@id = $guiStatus / * / MasterValue] |
| args.optionsModelRelativeValueXPath? | string |  | xPath expression relative to 'optionsModelXPath' providing values for options to display, if this is defined, values referenced by optionsModelXPath are treated as captions. Wins over @caption and @ignoreCaption param. |
| args.validate? | boolean | true | Turn on-off the validation of the formula. |
| args.validateVariableNamesCheckbox? | boolean | false | Show or hide checkbox for validate variables option. |
| args.skipValidationCaption? | string | "Skip check of values" | Caption to be shown for skipping validation. Default is 'Skip check of values'. |
| args.skipServerSidedFunctions? | boolean | false | Set to true to disable usage of server sided functions like CntDist. Default is false. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |
| args.enableNavPath? | boolean |  | Set to true if widget should not be added to navpath handling. |


**Returns**: {void}
