# createComment()
<span hidden class='htmlPackage'>bcdui.widgetNg</span>


Offers a simple container with comment functionality

````js
// Usage
bcdui.widgetNg.createComment({ instance, scope, targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.instance | string |  | A given instance for the current comments. |
| args.scope | string |  | A given scope for the current comments. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.addBRefs? | string | "bcdUpdateStamp bcdUpdateBy" | Space separated list of additional bRefs you want to load. |
| args.alwaysShowAdd? | boolean | false | If true, the add comment input area is always shown. |
| args.autofocus? | boolean |  | requests the widget to set the focus once it is rendered or enabled for the first time. Only one widget can have a focus, so in case the focus is requested by many widgets it is undefined which one will win. |
| args.bindingSetId? | string | "bcd_comment" | Comment binding set name. Needs at least the bRefs: comment_text, instance and scope. |
| args.caption? | string |  | A caption string which appears in the top add row. |
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.excludeBRefs? | string |  | Space separated list of bRefs which are removed before save/update. |
| args.filterBRefs? | string |  | The space separated list of binding Refs that will be used in filter clause of request document. |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.label? | i18nToken |  | If provided, enables widget to render a label element |
| args.onBeforeSave? | function |  | Function which is called before each save operation. Parameter holds current wrs dataprovider. Function needs to return true to save or false for skipping save process and resetting data. |
| args.orderByBRefs? | string | "bcdUpdateStamp-" | Space separated list of bRefs that will be used to order the data. A minus(-) sign at the end indicates descending sorting. By default it orders by lastUpdate descending. |
| args.renderComment? | function |  | A function which returns a HTML Element with the rendered comment. Function gets a param bag with comment, lastUpdate, updatedBy and uuid. |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.useTextarea? | boolean | false | If true, uses a textarea instead of an input field. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |


**Returns**: {void}
