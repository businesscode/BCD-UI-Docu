# Class validationToolTip
package bcdui.widget

Tooltip for widget validation results

## Constructor
````js
// Usage
var myTT = new bcdui.widget.validationToolTip({ id, targetModelId, targetModelXPath: "$guiStatus/cust:Elem/@value", containerHtmlElement, validateWrapperUrl, validateWrapperParameters });
  ````


---

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

<!-- LLM_HINT DETAILS_STARTING -->
## Methods