# Class validationToolTip
<span hidden class='htmlPackage'>bcdui.widget</span>
Tooltip for widget validation results

## Constructor
````js
// Usage
var myTT = new bcdui.widget.validationToolTip({ id, targetModelId, targetModelXPath: "$guiStatus/cust:Elem/@value", containerHtmlElement, validateWrapperUrl, validateWrapperParameters });
  ````




<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Initializing tooltip widget

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  |  |
| args.id | string |  | option widget identifier |
| args.targetModelId | string |  | identifier of model that should be tracked |
| args.targetModelXPath | xPath |  | xpath of model that should be tracked |
| args.containerHtmlElement | DomElement |  | html container with binded control |
| args.validateWrapperUrl | url |  | xstl transformation which implement concrete validation logic |
| args.validateWrapperParameters | object |  | parameters that should be passed to validateWrapper |

## Methods