# createTooltip()
<span hidden class='htmlPackage'>bcdui.widget</span>


Generates a tooltip for another renderer.

````js
// Usage
bcdui.widget.createTooltip();
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetRendererId? | string |  | The renderer the tooltip is attached to. The HTML listeners are placed on the targetHtml of this renderer. If 'tableMode' is set to 'true' the renderer is expected to render an HTML table with the appropriate 'bcdRowIdent/bcdColIdent' attributes of tr rows header columns. |
| args.targetRenderer? | bcdui.core.DataProvider |  | The renderer the tooltip is attached to. The HTML listeners are placed on the targetHtml of this renderer. If 'tableMode' is set to 'true' the renderer is expected to render an HTML table with the appropriate 'bcdRowIdent/bcdColIdent' attributes of tr rows header columns. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.delay? | integer |  | The delay in Miliseconds that the tooltip should wait before it appears. |
| args.filter? | string |  | An optional filter on the tag name where the tooltip should appear. In 'tableMode' it is recommended to set it on 'td' or 'th|td'. |
| args.identsWithin? | string |  | Id of an element. If given bcdColIdent and bcdRowIdent are set to the innermost values given between the event source and the element given here. bcdRow/ColIdent do not need to be set at the same element. |
| args.stylesheetUrl? | string |  | This parameter can be set when you only want to apply one single XSLT style sheet. It contains the URL pointing to it. If this parameter is set no nested 'chain' tag must be provided |
| args.tableMode? | boolean | false | This flag can be set to 'true' if the 'bcdRowIdent' and 'bcdColIdent' parameters should be extracted from the HTML and added as parameters on the tooltipRenderer. They are derived from 'bcdRowIdent' and 'bcdColIdent' attributes of tr rows and header columns (td or th). |
| args.targetHtml? | targetHtmlRef |  | The HTML listeners are placed on this Element instead of the targetHtml of the given targetRendererId. |
| args.tooltipTargetHtmlId? | string |  | Existing HTML Element Id which is used for the tooltip. By default this is 'bcdTooltipDiv'. |


**Returns**: {void}
