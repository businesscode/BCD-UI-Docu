# createPasteList()
<span hidden class='htmlPackage'>bcdui.widgetNg</span>


Text area to paste list of elements for an in-clause

````js
// Usage
bcdui.widgetNg.createPasteList({ cols, targetHtml: "#myDiv", targetModelXPath: "$guiStatus/cust:Elem/@value" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.cols | integer | 5 | HTML Parameter on the textarea to set number of columns |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.targetModelXPath | writableModelXPath |  | The xPath pointing to the root-node this input widget will place entered selected items into. The underlying XML format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. |
| args.asyncValidationFunction? | function |  | Like 'validationFunction' but this one must return a Promise resolving with validation result. While validating, the widget sets 'bcdValidationPending' CSS class on the owning html element. The value is written to the model after a positive validation result. If a Promise is rejected for any reason, the widget switches to invalid state. |
| args.autofocus? | boolean |  | requests the widget to set the focus once it is rendered or enabled for the first time. Only one widget can have a focus, so in case the focus is requested by many widgets it is undefined which one will win. |
| args.autogrow? | boolean | false | Set to true if the textarea should auto grow while typing. |
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.disableResetControl? | boolean | true | set this parameter to 'false' to enable built-in reset-control, which empties content once clicked. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.doTrimInput? | boolean | false | If enabled, the input is trimms leading/trailing spaces before writing to data model |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.isSync? | boolean | false | Uses synchronously validation when set to true. This also disables the use of asyncValidationFunction. Only necessary for setups where you can't handle waiting for the async write of data (e.g. grid widgets) |
| args.isTextSelectedOnFocus? | boolean | false | if set, the text will be selected once the field gets a focus, so that further user input will replace the content. In case 'setCursorPositionAtEnd' is also set to true - this option has precedence. |
| args.keepEmptyValueExpression? | boolean | false | A flag that can be set to 'true' if the target node should not be removed as soon as the value is empty. TODO: better spec |
| args.label? | i18nToken |  | If provided, enables widget to render a label element |
| args.maxlength? | integer |  | if defined, limits the input to the given length. |
| args.maxVals? | integer | 1000 | Only the first maxVals distinct values are used. |
| args.outSep? | string | "," | Char treated as separators in the targetModel and also expected when reading in values from there, defaults to comma. |
| args.pasteSeps? | string | ";|,| |\\t|\\n|\\|" | Chars to be treated as separators between values when pasting. Defaults to all off: comma, semicolon, space, tab, newline, pipe. Make sure to escape backslashes so that the string contains \n and not the newline char. |
| args.pattern? | string |  | regular expression pattern to validate the input |
| args.placeholder? | i18nToken |  | A default text displayed if no content was entered, this is i18n key or true for default. May be empty to display nothing. |
| args.required? | boolean | false | An empty string or not set value is not allowed if required is true. Disabled fields are not evaluated. |
| args.rows? | integer |  | HTML Parameter on the textarea to set number of rows |
| args.setCursorPositionAtEnd? | boolean | false | if set the cursor position will always be at the end of the input once the input field gets a focus |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.toUpper? | boolean | false | If true, all values are translated to uppercase. |
| args.validationFunction? | string |  | Name of a widget validator function which will be attached additionally to implicit validators. the API of given function is: validatorFunction(htmlElementId) : returns either NULL or object containing validationMessage (String or array of Strings) property, i.e. { validationMessage : String } or { validationMessage[] : String[] }, the validationMessage carries the message to be displayed to the user. The String may start with bcdui.i18n.TAG character to classify an i18n-key of the message, rather than a message itself. the args parameter is the htmlElementId of the widget to validate. Please use: bcdui.widgetNg.validation.validators.widget.getValue(htmlElementId) to properly retrieve widgets value. There is only one validator function allowed. In order to use or re-use or combine existing validations please do so in your validationFunction (that is delegate to other validators) and simply aggregate validation results into array of validationMessage[] This validator MUST ignore NULL or empty value. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |


**Returns**: {void}
