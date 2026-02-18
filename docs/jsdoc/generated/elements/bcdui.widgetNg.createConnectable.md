# createConnectable()
<span hidden class='htmlPackage'>bcdui.widgetNg</span>


Offers a simple container with multi select, drag'n drop functionalities

````js
// Usage
bcdui.widgetNg.createConnectable({ scope, targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.scope | string |  | Defines the scope of the box. Source. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.allowUnknownTargetValue? | boolean |  | If true, target items are not removed when they are not part of the source's options model. |
| args.autofocus? | boolean |  | requests the widget to set the focus once it is rendered or enabled for the first time. Only one widget can have a focus, so in case the focus is requested by many widgets it is undefined which one will win. |
| args.className? | string |  | Optional additional classname which is added to the container. |
| args.dblClick? | boolean | true | If true, double clicking an item moves it. Default is true. |
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.doSortOptions? | boolean | false | Can be set to 'true' if the options should be sorted using the 'sortOptionsFunction' function. This is disabled per default to avoid CPU wasting. |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.generateItemHelperHtml? | function |  | Function to generate the html for helper container item which appears when you drag items. Basically the function for jQuery's sortable helper function. By default the first 5 items are listed. |
| args.generateItemHtml? | function |  | Function to generate the html for one container item. Gets object with properties: value, caption, position; see implementation documentation to read more about the structure to return by this function. |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.isDoubleClickTarget? | boolean |  | If true (and box is target) then double click moves items from source to this target, otherwise first found target. Default is false. |
| args.onBeforeChange? | function |  | Handler function triggered before change of this box only, if false is returned, the change is rejected receives property map: {element = the widget element, dir = one of bcdui.widgetNg.connectable.CHANGE_DIRECTION.*, scope = object with .items to move, which can also be modified (i.e. remove items not eligible to move)} |
| args.onChange? | function |  | Handler function triggered after change. It's triggered on source AND destination of the change (e.g. source/target, target/source and target/target) |
| args.onChangeAction? | function |  | Handler function triggered after change. It's triggered on source AND destination of the change (e.g. source/target, target/source and target/target) |
| args.onItemMoved? | function |  | Handler function triggered after an item was moved. Receives property map: {from = source, to = destination, dir = one of bcdui.widgetNg.connectable.CHANGE_DIRECTION.*} |
| args.onSelected? | function |  | Handler function triggered when at least of the connectable items changed its status from selected to unselected (or moved a selected). This may fire multiple times. |
| args.optionsModelRelativeFilterPredicate? | xPath |  | xPath expression relative to 'optionsModelXPath' which can be used to filter options model items |
| args.optionsModelRelativeValueXPath? | xPath |  | xPath expression relative to 'optionsModelXPath' providing values |
| args.optionsModelXPath? | writableModelXPath |  | xPath pointing to an absolute xpath (starts with $model/..) providing a node-set of available options to display; especially this one supports cross references between models, i.e. $options / * / Value[@id = $guiStatus / * / MasterValue]. If you specify an optionsmodelxpath, the box automatically acts as source. |
| args.showLasso? | boolean | true | If true, you get a selection lasso. Default is true. |
| args.singleClick? | boolean | false | If true, single clicking an item moves it. Default is false. |
| args.singleSelect? | boolean | false | Can be set to 'true' if you want to limit the selection to one item only. |
| args.sortOptionsFunction? | function |  | a compareFunction(a,b) passed to Array.prototype.sort(); with a, b are objects with { caption, value } A function used to sort items in the connectable. The defaulting implementation uses alphabetic sorting on caption. |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.targetModelXPath? | writableModelXPath |  | The xPath pointing to the root-node this input widget will place entered selected items into. The underlying XML format of data written is implemented by individual widget. If pointing into a Wrs, it switches to Wrs mode, i.e. the wrs:R will be marked as modified, target node will not be deleted. If you specify a targetmodelxpath, the box automatically acts as target |
| args.unselectAfterMove? | boolean |  | If true, the items get unselected after being moved. Default is false. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |
| args.wildcard? | string | "startswith" | The wildcards apply to filtering within the drop down list and for server side filters. This option applies only if bound to a f:Expression element and is ignored otherwise. For a f:Filter with @op='like', this controls the prefilling with wildcards ('*') when the value is yet empty and the field gets the focus. Can be 'contains', 'startswith' or 'endswith'. The user can overwrite this by adding/removing wildcards when editing the field. |
| args.writeCaptions? | boolean |  | If true, target items also get a bcdCaption attribute holding the caption of the value. If used, you should add it to source and target connectables. |
| args.wrsInlineValueDelim? | string |  | Delimiter used for WRS read and write. Default is a slash. |


**Returns**: {void}
