# createMenu()
<span hidden class='htmlPackage'>bcdui.widget</span>


Creates menu with default renderer an default menu js handler.

````js
// Usage
bcdui.widget.createMenu({ targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.menuHandlerClassName? | string |  | Javascript menu handler class name, could extend bcdui.widget.menu.Menu. |
| args.menuRootElementId? | boolean |  | Root menu HTML element (UL) id |
| args.modelId? | string |  | xml model id, can be used for menues defined in folder '/WEB-INF/bcdui/menu/'. |
| args.modelUrl? | string |  | Optional: URL where model get data from, allows reading a random xml file from the server. |
| args.parameters? | string |  | Own action handler. |
| args.rendererUrl? | (string\|chainDef) |  | URL to XSLT stylesheet that renders the model or chain definition; default is "/bcdui/js/widget/menu/menu.xslt" |
| args.menuId? | string |  | Optional menuId to use one specific menu out of the available ones. If not available, the default one is used. |


**Returns**: {void}
