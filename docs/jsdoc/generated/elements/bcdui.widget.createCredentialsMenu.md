# createCredentialsMenu()
<span hidden class='htmlPackage'>bcdui.widget</span>


Creates credential menu

````js
// Usage
bcdui.widget.createCredentialsMenu({ targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.modelId? | string |  | id of model holding custom model definition. If not provided, a standard one with just logout is created. |
| args.userName? | string |  | string to use as the username, by default it takes bcdui.config.userName |


**Returns**: {void}
