# createSlider()
<span hidden class='htmlPackage'>bcdui.widgetNg</span>


A slider widget providing UI with a moving handle to select a value or to select a range. The implementation is based on noUiSlider, so is the API. Please refer to original documentation to explore all options. You can use full options from JS-API, however, they are not available from declarative context. Currently, the range mode is restricted to 2 handles only and you cannot provide start option, since it is read from the model.

````js
// Usage
bcdui.widgetNg.createSlider({ targetHtml: "#myDiv", targetModelXPath: "$guiStatus/cust:Elem/@value" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.targetModelXPath | writableModelXPath |  | The xPath pointing to the root-node this input widget will place entered selected items into. The underlying XML format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. |
| args.autofocus? | boolean |  | requests the widget to set the focus once it is rendered or enabled for the first time. Only one widget can have a focus, so in case the focus is requested by many widgets it is undefined which one will win. |
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.disableResetControl? | boolean | true | set this parameter to 'false' to enable built-in reset-control, which empties content once clicked. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.isRange? | boolean | false | If enabled, the slider will operate in range-selection mode, providing min/max handles to define a range. |
| args.keepEmptyValueExpression? | boolean | false | A flag that can be set to 'true' if the target node should not be removed as soon as the value is empty. TODO: better spec |
| args.labelRenderingFunction? | function |  | Your custom rendering function to render the label, which gets args with following properties: targetHtml, values[], captions[]; this function is executed on every update to the widget but also while sliding. This option is only effective unless native 'tooltips' option is used. |
| args.labelRenderingFunctionTargetHtml? | string |  | jQuery selector to access element to use as targetHtml for labelRenderingFunction, if you choose to use your custom one. This option is only effective unless native 'tooltips' option is used. |
| args.max? | number |  | Defines the maximum value, must not be set if optionsModelXpath is provided. |
| args.min? | number |  | Defines the minimum value, must not be set if optionsModelXpath is provided. |
| args.optionsModelRelativeValueXPath? | xPath | "." | xPath expression relative to 'optionsModelXPath' providing values for options to display, if this is defined, values referenced by optionsModelXPath are treated as captions. |
| args.optionsModelXPath? | modelXPath |  | xPath pointing to an absolute xpath (starts with $model/..) providing a node-set of available options to display; especially this one supports cross references between models, i.e. $options / * / Value[@id = $guiStatus / * / MasterValue]. If not provided, the widget is not linked to discrete values, in this case the min/max options has to be provided. |
| args.relativeTargetXPathMax? | xPath | "/max" | When operating in range-mode, this defines the relative xpath to targetModelXPath, to write the 'max' value. This option not defined in non-range mode. |
| args.relativeTargetXPathMin? | xPath | "/min" | When operating in range-mode, this defines the relative xpath to targetModelXPath, to write the 'min' value. This option not defined in non-range mode. |
| args.required? | boolean | false | An empty string or not set value is not allowed if required is true. Disabled fields are not evaluated. |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |


**Returns**: {void}
