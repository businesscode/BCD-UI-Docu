# Class Far
package bcdui.component.far

A FAR component

## Constructor
````js
// Usage
var myFr = new bcdui.component.far.Far({ targetHtml: "#myDiv", config });
  ````


---


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  | The parameter map contains the following properties: |
| args.targetHtml | targetHtmlRef |  | A reference to the HTML DOM Element where to render the output. |
| args.config | bcdui.core.DataProvider |  | Configuration document from http://www.businesscode.de/schema/bcdui/far-1.0.0 |
| args.componentId? | string | "far" | An ID for the component, 'far' is the default. This is not the data provider's technical identifier,<br/>                                                           this ID is used as component identifier to support multiple components on single page, i.e. reuse same configuration. |
| args.statusModel? | bcdui.core.DataProvider | bcdui.wkModels.guiStatusEstablished | The StatusModel, containing the filters at /SomeRoot/f:Filter |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods