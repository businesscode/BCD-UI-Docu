# Class Far
<span hidden class='htmlPackage'>bcdui.component.far</span>
A FAR component

## Constructor
````js
// Usage
var myFr = new bcdui.component.far.Far({ targetHtml: "#myDiv", config });
  ````




<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  | The parameter map contains the following properties: |
| args.targetHtml | targetHtmlRef |  | A reference to the HTML DOM Element where to render the output. |
| args.config | bcdui.core.DataProvider |  | Configuration document from http://www.businesscode.de/schema/bcdui/far-1.0.0 |
| args.componentId? | string | "far" | An ID for the component, 'far' is the default. This is not the data provider's technical identifier,<br/>                                                           this ID is used as component identifer to support multiple components on single page, i.e. reuse same configuration. |
| args.statusModel? | bcdui.core.DataProvider | bcdui.wkModels.guiStatusEstablished | The StatusModel, containing the filters at /SomeRoot/f:Filter |

## Methods