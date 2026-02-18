# createSideBySideChooser()
<span hidden class='htmlPackage'>bcdui.widgetNg</span>


Offers a SideBySiderChooser where you can select items on a source side and move them to a target side

````js
// Usage
bcdui.widgetNg.createSideBySideChooser({ optionsModelXPath: "$myModel/wrs:Wrs/wrs:Data/wrs:R/wrs:C[1]", targetHtml: "#myDiv", targetModelXPath: "$guiStatus/cust:Elem/@value" });
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
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.doSortOptions? | boolean | true | Can be set to 'false' if the options should not be sorted alphabetically. |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.onBeforeChange? | function |  | Handler function triggered before change, if false is returned, the change is rejected receives property map: {element = the widget element, dir = one of bcdui.widgetNg.sideBySideChooser.CHANGE_DIRECTION.*, scope = object with .items to move, which can also be modified (i.e. remove items not eligible to move)} |
| args.onChange? | function |  | Handler function triggered after change |
| args.onChangeAction? | function |  | Handler function triggered after change |
| args.optionsModelRelativeFilterPredicate? | xPath |  | xPath expression relative to 'optionsModelXPath' which can be used to filter options model items |
| args.optionsModelRelativeValueXPath? | xPath |  | xPath expression relative to 'optionsModelXPath' providing values |
| args.sourceCaption? | i18nToken | "\uE0FFbcd_widget_sbsc_sourceCaption" | Caption(header) for source block items. Can be an i18n key (with leading i18n token). |
| args.sourceFilter_doSortOptions? | boolean |  | Sorting option for the preselection filter dropdown |
| args.sourceFilter_label? | i18nToken |  | Label for the preselection filter dropdown |
| args.sourceFilter_optionsModelRelativeValueXPath? | xPath |  | optionsModelRelativeValueXPath for the preselection filter drowdown |
| args.sourceFilter_optionsModelXPath? | modelXPath |  | OptionsModelXPath for the preselection filter drowdown. This is required when using sourceFilters. |
| args.sourceFilter_placeholder? | i18nToken |  | Placeholder for the preselection filter dropdown |
| args.sourceFilter_relativeCompareValueXPath? | xPath |  | A relative xpath to the final sbs options model value which is used to compare the selected filter value against |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.targetCaption? | i18nToken | "\uE0FFbcd_widget_sbsc_targetCaption" | Caption(header) for target block items. Can be an i18n key (with leading i18n token). |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |
| args.wrsInlineValueDelim? | string |  | Delimiter used for WRS read and write. Default is a slash. |


**Returns**: {void}
