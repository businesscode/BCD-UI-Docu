# createPeriodChooser()
<span hidden class='htmlPackage'>bcdui.widget</span>


Creates a period chooser. The period chooser supports a number of options and formats, see parameters.You can control what kind of periods a user may select and in which format it is written.Note that the bRef written are <b>always</b> <code>yr, qr, mo, cwyr, cw or dy</code> with an optional postfix of there are different types of dates.<br/>The period chooser outputs to args.targetModelXPath, which may point to any model but needs to end with <code>f:And[@id='myPeriod']</code>, where @id is the period chooser's id.

````js
// Usage
bcdui.widget.createPeriodChooser({ targetModelXPath: "$guiStatus/cust:Elem/@value", targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetModelXPath | writableModelXPath |  | Unless you don't use the useSimpleXPath option, this targetModelXPath acts slightly different than for other widgets. You only define a root node like '/guiStatus:Status/f:Filter/f:And[@id='period']' here. The period chooser places its f:Expression elements below this given rootnode automatically. The number of expressions and how they are added depends on periodChooser settings (e.g. a range or writing mo/yr instead of yyyy-mm-dd etc.) |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.caption? | string |  | Default 'Date', it will be used as i18n key to translate the caption if isFreeRangeSelectable set to true, then caption may contain two terms for 'From' and 'To' captions. Divider: ';' Example: caption = 'i18.md.From;i18.md.To' |
| args.firstSelectableDay? | string |  | The first day that can be selected. A week or month can only be selected if all days are selectable. |
| args.lastSelectableDay? | boolean |  | The last day that can be selected. A week or month can only be selected if all days are selectable. |
| args.isFreeRangeSelectable? | boolean | false | Allows date free range selection. |
| args.isSecondSelectable? | boolean | false | Allows second selection. |
| args.isMinuteSelectable? | boolean | false | Allows minute selection. |
| args.isHourSelectable? | boolean | false | Allows hour selection. |
| args.isDaySelectable? | boolean | true | Allows day selstion. |
| args.isWeekSelectable? | boolean | false | Allows week selection. |
| args.isMonthSelectable? | boolean | true | Allows month selection. |
| args.isQuarterSelectable? | boolean | true | Allows quarter selection |
| args.isYearSelectable? | boolean | true | Allows year selection. |
| args.mandatory? | boolean | false | An empty value is invalid if this parameters sets to true. Default is false. |
| args.outputPeriodType? | boolean | false | Produces selected dates as one of known date periods. For example if this contains mo and the user selects a data range, which fits a month, mo with be written.<br/>                                                           This is usefull if you allow free range but you also have a month aggregation for performance optimization.<br/>                                                           On the other hand, if this is not set and the user selects a month in the widget, then the month is written in terms of dy. |
| args.showPrevNextButtons? | boolean | false | If this is set to 'true' the buttons Previous Period and Next Period are showed. The default value is 'false'. |
| args.suppressCaptions? | boolean | false | Set this to true if the buttons should not have any caption text. Default is false. |
| args.textInput? | boolean | false | Add the free range feature. |
| args.validate? | boolean | true | Turn on-off the validation of the keyboard entered date values. |
| args.optionsModelXPath? | modelXPath |  | Allows to use a single period chooser widget for different logical types of dates (see args.postfix), which then can be selected from a drop-down. The node set found at this xPath lists the postfixes. |
| args.optionsModelRelativeValueXPath? | string |  | xPath expression relative to 'optionsModelXPath' providing values for options to display, if this is defined, values referenced by optionsModelXPath are treated as captions. Wins over @caption and @ignoreCaption param. |
| args.postfix? | string |  | An optional postfix which is added to the filter bRefs (dy/mo.., see above). Use this if you deal with different types of dates. If optionsModel is given, this value should be one of the available ones. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |
| args.useSimpleXPath? | string | false | Set this to true if you want a minimal periodchooser setup (only day selectable via popcalendar) which only writes an ISO date to an XPath which you provide (not a complex one in normal mode). |
| args.autoPopup? | string | false | Set this to true if the popup calendar should appear after creation. |
| args.suppressButtons? | string | false | Set this to true if from and to buttons should be hidden. Default is false. |
| args.enableNavPath? | boolean |  | Set to true if widget should not be added to navpath handling. |
| args.showClearButton? | boolean |  | Set this to true if you need one clear button which removes the currently set date. |
| args.label? | string |  | If provided, renders label element to this periodchooser. |


**Returns**: {void}
