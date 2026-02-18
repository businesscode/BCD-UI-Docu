# createChipsChooser()
<span hidden class='htmlPackage'>bcdui.widgetNg</span>


Offers a ChipsChooser where you can select items on a source side and move them to a target side

````js
// Usage
bcdui.widgetNg.createChipsChooser({ optionsModelXPath: "$myModel/wrs:Wrs/wrs:Data/wrs:R/wrs:C[1]", targetHtml: "#myDiv", targetModelXPath: "$guiStatus/cust:Elem/@value" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.optionsModelXPath | modelXPath |  | xPath pointing to an absolute xpath (starts with $model/..) providing a node-set of available options to display; especially this one supports cross references between models, i.e. $options / * / Value[@id = $guiStatus / * / MasterValue] |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.targetModelXPath | writableModelXPath |  | The xPath pointing to the root-node this input widget will place entered selected items into. The underlying XML format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. |
| args.allowUnknownTargetValue? | boolean |  | If true, target items are not removed when they are not part of the source's options model. |
| args.autofocus? | boolean |  | requests the widget to set the focus once it is rendered or enabled for the first time. Only one widget can have a focus, so in case the focus is requested by many widgets it is undefined which one will win. |
| args.bindingSetId? | string |  | Name of the binding set which is used for the lookup. |
| args.bRefs? | string |  | BindingItem(s) which is(are) used for the lookup. If two are given, it is assumed that first one is caption, second one is code. |
| args.delay? | number | 500 | Time (in ms) which passes till the lookup is done. |
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.doSortOptions? | boolean | false | Can be set to 'true' if the options should be sorted alphabetically. This is disabled per default to avoid CPU wasting. |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.filterBRefs? | string |  | The space separated list of binding Refs that will be used in filter clause of request document. |
| args.filterElement? | string |  | Custom filter element (f:And, f:Or, f:Not, f:Expression) in wrs-filter format, see filter-1.0.0.xsd or a string as required by bcdui.wrs.wrsUtil.parseFilterExpression or the result of it - note that the function allows filling in values without escaping issues if the filter is not fixed. |
| args.filterSourceNodes? | function |  | A function which can be used to filter out nodes from the source nodes. The function gets the current source nodes from the options model and needs to return the remaining nodes. |
| args.generateItemHtml? | function |  | Function to generate the html for one container item. Gets object with properties: value, caption, position; see implementation documentation to read more about the structure to return by this function. |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.label? | i18nToken |  | If provided, enables widget to render a label element |
| args.maxRows? | number | 30 | Limit the result of the SQL lookup. |
| args.onBeforeChange? | function |  | Handler function triggered before change, if false is returned, the change is rejected receives property map: {element = the widget element, dir = one of bcdui.widgetNg.chipsChooser.CHANGE_DIRECTION.*, scope = object with .items to move, which can also be modified (i.e. remove items not eligible to move)} |
| args.onChange? | function |  | Handler function triggered after change |
| args.onChangeAction? | function |  | Handler function triggered after change |
| args.onItemMoved? | function |  | Handler function triggered after an item was moved. Receives property map: {from = source, to = destination, dir = one of bcdui.widgetNg.connectable.CHANGE_DIRECTION.*} |
| args.optionsModelRelativeValueXPath? | xPath |  | xPath expression relative to 'optionsModelXPath' providing values |
| args.preload? | boolean | false | Can be set to 'true' if the options (given by bindingSet and bRef) should get loaded completely on startup. |
| args.singleClick? | boolean | false | If true, single clicking an item moves it. Default is false. |
| args.singleSelect? | boolean | false | Can be set to 'true' if you want to limit the selection to one item only. |
| args.sortOptionsFunction? | function |  | a compareFunction(a,b) passed to Array.prototype.sort(); with a, b are objects with { caption, value } A function used to sort items in the connectable. The defaulting implementation uses alphabetic sorting on caption. |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.targetModelXPathRight? | writableModelXPath |  | The xPath pointing to the root-node this input widget will place entered selected items into. The underlying XML format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. |
| args.upperTitle? | string |  | Optional title above upper area |
| args.upperTitleRight? | string |  | Optional title above upper right area, when targetModelXPathRight is used. |
| args.url? | url |  | The URL the model is loaded from. This URL can be extended with a compressed request document if a requestDocument parameter is provided. If omitted the WrsServlet is taken. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |
| args.wildcard? | string | "startswith" | The wildcards apply to filtering within the drop down list and for server side filters. This option applies only if bound to a f:Expression element and is ignored otherwise. For a f:Filter with @op='like', this controls the prefilling with wildcards ('*') when the value is yet empty and the field gets the focus. Can be 'contains', 'startswith' or 'endswith'. The user can overwrite this by adding/removing wildcards when editing the field. |
| args.wrsInlineValueDelim? | string |  | Delimiter used for WRS read and write. Default is a slash. |


**Returns**: {void}
