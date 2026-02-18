# createContextMenu()
<span hidden class='htmlPackage'>bcdui.widget</span>


Create an instance of dynamic context menu. Consider setting args.refreshMenuModel to true.If 'tableMode' is set to 'true' the renderer is expected to render an HTML table with theappropriate 'bcdRowIdent/bcdColIdent' attributes of tr rows header columns.

````js
// Usage
bcdui.widget.createContextMenu({ inputModel: myModel });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.inputModel | bcdui.core.DataProvider |  | A model with context menu definition according to namespace http://www.businesscode.de/schema/bcdui/contextMenu-1.0.0 |
| args.targetRendererId? | string |  | The renderer the tooltip is attached to. The HTML listeners are placed on the targetHtml of this renderer. |
| args.targetRenderer? | bcdui.core.DataProvider |  | The renderer the tooltip is attached to. The HTML listeners are placed on the targetHtml of this renderer. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.refreshMenuModel? | boolean | false | This flag can be set to 'true' if the menu model needs to be executed always. Needs to be true, if the menu depends on the position in a table, i.e. technically on bcdColIdent and bcdRowIdent. |
| args.url? | string |  | This parameter can be set when you only want to apply one single XSLT style sheet. It contains the URL pointing to it. If this parameter is set no nested 'chain' tag must be provided; provided XSLT must produce HTML. |
| args.identsWithin? | string |  | Id of an element. If given bcdColIdent and bcdRowIdent are set to the innermost values given between the event source and the element given here. bcdRow/ColIdent do not need to be set at the same element. |
| args.tableMode? | boolean | false | This flag can be set to 'true' if the 'bcdRowIdent' and 'bcdColIdent' parameters should be extracted from the HTML and added as parameters on the tooltipRenderer. They are derived from 'bcdRowIdent' and 'bcdColIdent' attributes of tr rows and header columns (td or th). |
| args.targetHtml? | targetHtmlRef |  | The HTML listeners are placed on this Element instead of the targetHtml of the given targetRendererId. |
| args.clickResolver? | (function\|string) |  | String (representing a function name) or function which handles the click events of the contextMenu |


**Returns**: {void}
