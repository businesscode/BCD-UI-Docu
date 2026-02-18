# createBlindUpDownArea()
<span hidden class='htmlPackage'>bcdui.widget</span>


Creates a BlindUpDown Area.

````js
// Usage
bcdui.widget.createBlindUpDownArea({ targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.caption? | string |  | Caption shown in the blindUpDown Header. |
| args.defaultState? | string | "closed" | 'closed' or empty String for opened, default is closed. |
| args.duration? | number | 0.2 | The duration of the blind effect, valid values are from 0 to 1.0 as decimal. |
| args.targetModelXPath? | writableModelXPath | "$guiStatus/guiStatus:Status/guiStatus:ClientSettings/BlindUpDown" | The xPath pointing to the root-node this input widget will place entered selected items into. with attribute status=open/closed |
| args.noEffect? | boolean | false | True for a simple show/hide without blind effect (blind can influence charts gradients on IE |


**Returns**: {void}
