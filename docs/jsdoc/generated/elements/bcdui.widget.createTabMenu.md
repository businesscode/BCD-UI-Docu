# createTabMenu()
<span hidden class='htmlPackage'>bcdui.widget</span>


Creates tab menu widget.

````js
// Usage
bcdui.widget.createTabMenu({ targetHtml: "#myDiv", defElementId });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.defElementId | string |  | Html element id where tabs are defined. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.handlerJsClassName? | string |  | Custom JS class name to handler click action on tab. |
| args.rendererUrl? | string |  | URL to custom renderer. |
| args.isPersistent? | boolean | false | Set this to true to make the tab selection persistent. |


**Returns**: {void}
