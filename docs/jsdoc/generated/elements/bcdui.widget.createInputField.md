# createInputField()
<span hidden class='htmlPackage'>bcdui.widget</span>


Creates a field where the user can enter a value or select it from a list of pre-defined values.These values are copied to a target model under a specifiedtarget XPath. When there is a list of allowed values the inputField can alsoapply a caption-value translation so that the displayed values can differ fromthe data that is actually placed in XML.This function creates an input field inthe given target HTML element. This input field can be a text box or a combo box, dependent on the parameters.

````js
// Usage
bcdui.widget.createInputField({ targetModelXPath: "$guiStatus/cust:Elem/@value", targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetModelXPath | writableModelXPath |  | The xPath pointing to the root-node this widget will place entered selected items into. The underlying XML format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. If you specify a targetmodelxpath, the box automatically acts as target. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.optionsModelXPath? | modelXPath |  | xPath pointing to an absolute xpath (starts with $model/..) providing a node-set of available options to display; especially this one supports cross references between models, i.e. $options / * / Value[@id = $guiStatus / * / MasterValue] |
| args.optionsModelRelativeValueXPath? | xPath |  | xPath expression relative to 'optionsModelXPath' providing values for options to display, if this is defined, values referenced by optionsModelXPath are treated as captions. Wins over @caption and @ignoreCaption param. |
| args.optionsModelIsSuggestionOnly? | boolean |  | If true, values different from the options model can are allowed. Default is that, if an optionsModel is given, only values from that model are allowed. |
| args.additionalFilterXPath? | writableModelXPath |  | An additional XPath created, kept up-to-date during writing, not only when a final value us choosen, not listened on. Usually used to control a server-side filtered options model. |
| args.keepEmptyValueExpression? | boolean | false | A flag that can be set to 'true' if the target node should not be removed as soon as the value is empty. |
| args.clearOption? | string | false | If != 'false', an additional option to clear the selection is shown in the drop-down box. If 'true' bcd_autoCompletionBox_clearOption is used for the text, otherwise this is the i18n key. |
| args.emptyValue? | string | false | If != 'false', a text is displayed if nothing is selected / entered. If 'true' bcd_autoCompletionBox_emptyValue is used for the text, otherwise this is the i18n key. |
| args.mandatory? | boolean | false | An empty value is invalid if this parameters sets to true. Default is false. |
| args.wildcard? | string |  | For a f:Filter with @op='like', this controls the prefilling with wildcards ('*') when the value is yet empty and the field gets the focus. Can be 'contains', 'startswith' or 'endswith'. The user can overwrite this by adding/removing wildcards when editing the field. The wildcards apply to filtering within the top down list and for server side filters, both plain and for retrieving drop-down values dynamically from the server. |
| args.bcdAutofit? | boolean | false | If true, drop down resizes depending on available options. |
| args.isSortOptions? | boolean | false | A flag that can be set to 'true' if the options shown in popup should be sorted alphabetically. |
| args.maxlength? | integer |  | Maximum number of characters for the input field. |
| args.onEnterKey? | string |  | Handler function NAME triggered on ENTER key. |
| args.onEscKey? | string |  | Handler function NAME triggered on ESC key. |
| args.onTabKey? | string |  | Handler function NAME triggered on TAB key. |
| args.onBlur? | string |  | Handler function NAME triggered on blur event. |
| args.onFocus? | string |  | Handler function NAME triggered on focus event. |
| args.setCursorPositionAtEnd? | boolean | false | If true, the cursor is automatically positioned at the end of the input box. |
| args.setFocus? | boolean | false | If true, let this input field get focus after creation. |
| args.tabIndex? | string |  | Tab index of html element. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |
| args.enableNavPath? | boolean |  | Set to true if widget should not be added to navpath handling. |
| args.isPassword? | boolean |  | If true, input element type will be 'password'. |
| args.label? | string |  | If provided, renders label element to this input |
| args.hideWildcardChar? | boolean |  | If true, no asterisk characters are shown |


**Returns**: {void}
