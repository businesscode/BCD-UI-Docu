# createFarConfigurator()
<span hidden class='htmlPackage'>bcdui.component.far</span>


A FAR configurator UI displaying 3 side by side choosers for choosing Dimensions, Measures and Sorting of the items, writes far:ConfiguratorLayout format into targetModelXPath; this widget is configured by number of parameters referencing various nodesets as Dimensions and Measures source items. It is expected that every dimension and measure item is represented by an element in options model providing the value and caption in separate attributes on an element,i.e. Item[@value @caption]. This widget supports flat or hierarhical input. For either input (flat/hierarchical) you need to provider tree configuration object containing information about how determine your hierarchy. i.e. { levelNodeName : 'far:Category', itemNodeName : 'far:Item', isDefaultCollapsed: true }

````js
// Usage
bcdui.component.far.createFarConfigurator({ dimensions_optionsModelRelativeValueXPath, dimensions_optionsModelXPath, dimensions_treeConfig, measures_optionsModelRelativeValueXPath, measures_optionsModelXPath, measures_treeConfig, targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.dimensions_optionsModelRelativeValueXPath | xPath |  | xpath relative to 'dimensions_optionsModelXPath' that references a value attribute, i.e. '../@value' |
| args.dimensions_optionsModelXPath | xPath |  | items considered dimensions, xpath must reference the caption attribute on the item-set; Reference deep link to items (including levels) in case you have hierarhical structure i.e. $config/far:Configurator/far:Dimensions//* /@caption |
| args.dimensions_treeConfig | object |  | tree configuration object (see component documentation) |
| args.measures_optionsModelRelativeValueXPath | xPath |  | xpath relative to 'dimensions_optionsModelXPath' that references a value attribute, i.e. '../@value' |
| args.measures_optionsModelXPath | xPath |  | items considered dimensions, xpath must reference the caption attribute on the item-set; Reference deep link to items (including levels) in case you have hierarhical structure i.e. $config/far:Configurator/far:Dimensions//* /@caption |
| args.measures_treeConfig | object |  | tree configuration object (see component documentation) |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.autofocus? | boolean |  | requests the widget to set the focus once it is rendered or enabled for the first time. Only one widget can have a focus, so in case the focus is requested by many widgets it is undefined which one will win. |
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.doSortOptions? | boolean | false | Can be set to 'true' if the options should be sorted alphabetically. This is disabled per default to avoid CPU wasting. |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.targetModelXPath? | writableModelXPath | "$guiStatus/guiStatus:Status" | Target xPath to write the far:ConfiguratorLayout configuration into. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |


**Returns**: {void}
