# createCheckbox()
<span hidden class='htmlPackage'>bcdui.widgetNg</span>


Basic checkbox which implements a 1/0 switch. The label (if used) is placed right to the checkbox.

````js
// Usage
bcdui.widgetNg.createCheckbox({ targetHtml: "#myDiv", targetModelXPath: "$guiStatus/cust:Elem/@value" });
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
| args.keepEmptyValueExpression? | boolean | false | A flag that can be set to 'true' if the target node should not be removed as soon as the value is empty. TODO: better spec |
| args.label? | i18nToken |  | If provided, enables widget to render a label element |
| args.onchange? | function |  | the HTML onchange event |
| args.onChangeAction? | function |  | the HTML onchange event |
| args.onclick? | function |  | the HTML onclick event |
| args.onClickAction? | function |  | the HTML onclick event |
| args.required? | boolean | false | An empty string or not set value is not allowed if required is true. Disabled fields are not evaluated. |
| args.skin? | string | "checkbox" | Currently supporting checkbox (default) and switch style. |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.values? | string | "1|0" | A pipe separated value of two string which are used for a checked/unchecked state. By default this is 1 and 0. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |


**Returns**: {void}
