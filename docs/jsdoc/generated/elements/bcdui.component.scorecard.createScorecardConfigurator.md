# createScorecardConfigurator()
<span hidden class='htmlPackage'>bcdui.component.scorecard</span>


Creates a scorecard configurator, providing the scc:Layout section of the scorecard configuration, able of showing the drag and drop area for the dimensions and kpis and aspects.

````js
// Usage
bcdui.component.scorecard.createScorecardConfigurator({ targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.applyFunction? | string |  | Function name which is used for the apply button in isDefaultHtmlLayout=true mode. Default is bcdui.core.lifecycle.applyAction. |
| args.autofocus? | boolean |  | requests the widget to set the focus once it is rendered or enabled for the first time. Only one widget can have a focus, so in case the focus is requested by many widgets it is undefined which one will win. |
| args.config? | bcdui.core.DataProvider |  | Model containing the configuration for the scorecard configurator. By default this is taken from dimensionsAndKpis.xml. |
| args.disabled? | boolean | false | All input widgets can be set to be disabled. If disabled, a widget cannot receive a focus, also a style cannot be changed in many browsers. There is no read-only. Also consult read-only vs disabled: http://www.w3.org/TR/html4/interact/forms.html#h-17.12. Since this is a HTML property not a real boolean attribute, specify this only if you want to disable the widget. The actual value is ignored. If it is specified, the widget is disabled. |
| args.displayBalloon? | boolean | false | hints and validation messages are displayed in a fly-over if user moves the mouse over the widget. Additionally, they are also displayed in a balloon in bottom-left corner of a browser window in a balloon, which is static and appears as long as the widget has focus. |
| args.enableNavPath? | boolean | false | Set to true if widget should be added to navpath handling. |
| args.hasUserEditRole? | boolean | false | Template Editor also has edit capability. If not given, bcdui.config.clientRights.bcdScorecardTemplateEdit is used to determine state (either *(any) or scorecardId to enable). |
| args.hint? | i18nToken |  | A general feature is the hint indicator on the widget so user can hover it with a mouse to reveal information about it. image aus theme intern handled by tooltip. |
| args.id? | string |  | Id of the widget, if not provided this id will be auto-generated. Must be unique. The id must not be used from jQuery UI API, the id should be used within declarative scope only, i.e. X-API / JSP. If provided, this id will overwrite targetHtml element's id. |
| args.isDefaultHtmlLayout? | boolean | false | If true, a standard layout for dnd area is created. If false, you need to provide containers with classes: bcdCurrentKpiList, bcdCurrentScRowDimensionList, bcdCurrentAspectList, bcdKpiList, bcdScDimensionList, bcdAspectList within an outer bcdScorecardDndMatrix container. if your targetHtml got classes bcdDndBlindOpen or bcdDndBlindClosed, the actual dnd area is also put in collapsable boxes (either open or closed by default). |
| args.isRanking? | boolean | false | Enable the ranking feature. This is an Enterprise Edition only feature. |
| args.isTemplate? | boolean | false | Enable the template feature. This is an Enterprise Edition only feature. |
| args.rankingTargetHtmlElementId? | string |  | If isRanking is true then this attribute can be used to control the div where the ranking editor is placed. |
| args.reportName? | string |  | Name of the report is used to access the persistent layouts. |
| args.rowAspect? | boolean | false | Enables another drag'n drop box for aspects (marked with rowAspect='true') which are put in front of all aspects. KPI dimensions needs to be a row dimension in this case. |
| args.scorecard? | bcdui.core.DataProvider |  | Id of the scorecardRenderer the configurator belongs to. If not given, the surrounding renderer is assumed to be a cmp:scorecard. |
| args.showSummary? | boolean | false | Enable the summary feature. |
| args.summaryTargetHtmlElementId? | string |  | If showSummary is true then this attribute can be used to control the div where the summary is placed. |
| args.tabindex? | integer |  | the HTML compliant tabIndex |
| args.targetModel? | bcdui.core.DataProvider |  | The configuration is written to $guiStatus/guiStatus:Status/scc:Layout[scorecardId='scorecardId'] by default. While the xpath /RootNode/scc:Layout[scorecardId='scorecardId'] is fixed, you can specify an own targetModel if needed. |
| args.templateTargetHtmlElementId? | string |  | If isTemplate is true then this attribute can be used to control the div where the template editor is placed. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |


**Returns**: {void}
