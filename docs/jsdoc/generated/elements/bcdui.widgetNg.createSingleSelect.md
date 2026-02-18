# createSingleSelect()
<span hidden class='htmlPackage'>bcdui.widgetNg</span>


Renders a browser does natively for select or radio.

````js
// Usage
bcdui.widgetNg.createSingleSelect({ optionsModelXPath: "$myModel/wrs:Wrs/wrs:Data/wrs:R/wrs:C[1]", targetHtml: "#myDiv", targetModelXPath: "$guiStatus/cust:Elem/@value" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.optionsModelXPath | modelXPath |  | xPath pointing to an absolute xpath (starts with $model/..) providing a node-set of available options to display; especially this one supports cross references between models, i.e. $options / * / Value[@id = $guiStatus / * / MasterValue] |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.targetModelXPath | writableModelXPath |  | The xPath pointing to the root-node this input widget will place entered selected items into. The underlying XML format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. |
| args.asyncValidationFunction? | function |  | Like 'validationFunction' but this one must return a Promise resolving with validation result. While validating, the widget sets 'bcdValidationPending' CSS class on the owning html element. The value is written to the model after a positive validation result. If a Promise is rejected for any reason, the widget switches to invalid state. |
| args.autofocus? | boolean |  | requests the widget to set the focus once it is rendered or enabled for the first time. Only one widget can have a focus, so in case the focus is requested by many widgets it is undefined which one will win. |
| args.clearOption? | (boolean\|i18nToken) | false | if enabled, there will be an option to clear the selection. This attribute may be true|false or a string, in latter case the option is considered enabled and a string follows the i18nToken type definition. |
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.disableResetControl? | boolean | true | set this parameter to 'false' to enable built-in reset-control, which empties content once clicked. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.doAutoSelectSolelyOption? | boolean | false | If enabled, and there is only one option available, the widget will switch to that value. |
| args.doRetainInputSchema? | boolean | false | This option is 'false' per default, what means that the internal options model generates following schema: /Values/Value[@caption]+ per matched item. The Value element itself holds the ID with optional @caption attribute holding either ID or mapped caption in case optionsModelRelativeValueXPath is provided. In some cases you might want to work with internal options model and elements of the input document. Then you can enable this flag, which effictively disables any semantics, such as 'caption' or 'id' - as the internal options document will contain only matched elements from the input document, pay attention if you select an attribute in your xpath. |
| args.doSortOptions? | boolean | false | Can be set to 'true' if the options should be sorted alphabetically. This is disabled per default to avoid CPU wasting. |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.ignoreCaption? | boolean |  | Do not use @caption, use id for caption as well. The caption mode is disabled. |
| args.isSync? | boolean | false | Uses synchronously validation when set to true. This also disables the use of asyncValidationFunction. Only necessary for setups where you can't handle waiting for the async write of data (e.g. grid widgets) |
| args.keepEmptyValueExpression? | boolean | false | A flag that can be set to 'true' if the target node should not be removed as soon as the value is empty. TODO: better spec |
| args.label? | i18nToken |  | If provided, enables widget to render a label element |
| args.optionsModelRelativeValueXPath? | xPath | "." | xPath expression relative to 'optionsModelXPath' providing values for options to display, if this is defined, values referenced by optionsModelXPath are treated as captions. Wins over @caption and @ignoreCaption param. |
| args.pattern? | string |  | regular expression pattern to validate the input |
| args.placeholder? | i18nToken |  | A default text displayed if no content was entered, this is i18n key or true for default. May be empty to display nothing. |
| args.required? | boolean | false | An empty string or not set value is not allowed if required is true. Disabled fields are not evaluated. |
| args.skin? | string | "combo" | Currently supporting combo style only |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.validationFunction? | string |  | Name of a widget validator function which will be attached additionally to implicit validators. the API of given function is: validatorFunction(htmlElementId) : returns either NULL or object containing validationMessage (String or array of Strings) property, i.e. { validationMessage : String } or { validationMessage[] : String[] }, the validationMessage carries the message to be displayed to the user. The String may start with bcdui.i18n.TAG character to classify an i18n-key of the message, rather than a message itself. the args parameter is the htmlElementId of the widget to validate. Please use: bcdui.widgetNg.validation.validators.widget.getValue(htmlElementId) to properly retrieve widgets value. There is only one validator function allowed. In order to use or re-use or combine existing validations please do so in your validationFunction (that is delegate to other validators) and simply aggregate validation results into array of validationMessage[] This validator MUST ignore NULL or empty value. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |


**Returns**: {void}
