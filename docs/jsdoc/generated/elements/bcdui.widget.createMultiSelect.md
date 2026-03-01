# createMultiSelect()
<span hidden class='htmlPackage'>bcdui.widget</span>


Creates a multi selection box where multiple values can be selected and stored to the target model.

````js
// Usage
bcdui.widget.createMultiSelect({ targetModelXPath: "$guiStatus/cust:Elem/@value", targetHtml: "#myDiv", optionsModelXPath: "$myModel/wrs:Wrs/wrs:Data/wrs:R/wrs:C[1]" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetModelXPath | writableModelXPath |  | The xPath pointing to the root-node this input widget will place entered selected items into. The underlying XML format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. If you specify a targetmodelxpath, the box automatically acts as target. Keep in mind when specifying a targetModelXPath for the multiSelect, you should use a f:Or in your expression. For example: /guiStatus:Status/f:Filter/f:Or/f:Expression[@bRef='country' and @op='=']/@value. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.optionsModelXPath | modelXPath |  | xPath pointing to an absolute xpath (starts with $model/..) providing a node-set of available options to display; especially this one supports cross references between models, i.e. $options / * / Value[@id = $guiStatus / * / MasterValue] |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.optionsModelRelativeValueXPath? | string |  | xPath expression relative to 'optionsModelXPath' providing values for options to display, if this is defined, values referenced by optionsModelXPath are treated as captions. Wins over @caption and @ignoreCaption param. |
| args.delimiter? | string |  | If defined, will switch to delimiter-based storing, i.e. multiple values will be written into one DOM node and separated by given delimiter. |
| args.visibleSize? | integer |  | Number of visible elements in list. |
| args.isCheckBox? | boolean | false | Use checkbox html element instead of multiselect. |
| args.keepEmptyValueExpression? | boolean | false | A flag that can be set to 'true' if the target node should not be removed as soon as the value is empty. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |
| args.enableNavPath? | boolean |  | Set to true if widget should not be added to navpath handling. |
| args.doSortOptions? | boolean | false | Set to true if widget should sort options. |
| args.label? | string |  | If provided, renders label element to this input |


**Returns**: {void}
