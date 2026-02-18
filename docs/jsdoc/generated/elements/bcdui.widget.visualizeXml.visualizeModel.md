# visualizeModel()
<span hidden class='htmlPackage'>bcdui.widget.visualizeXml</span>


Visualiazes data of a model / data provider

````js
// Usage
bcdui.widget.visualizeXml.visualizeModel({ targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  | The argument map containing the following elements: |
| args.targetHtml | targetHtmlRef |  | Id of the html element where to show the output. |
| args.title? | string |  | Title of the content box; if not provided, the title is set to the ID of the visualized model. |
| args.idRef? | string |  | Id of the model to be visualized |
| args.inputModel? | bcdui.core.DataProvider |  | Instead of an id, the model can be provided directly |
| args.isAutoRefresh? | boolean | true | Automatically redraw when model changes |
| args.stylesheetUrl? | string | "/bcdui/js/widget/visualizeXml/visualizeXmlCaller.xslt" | renderer stylesheet |
| args.onReady? | function |  | onReady function for renderer |


**Returns**: {void}

**Example:**
````js
// Load, transform and visualize a modellet sm = new bcdui.core.SimpleModel("input.xml");let mw = new bcdui.core.ModelWrapper({inputModel: sm, chain: "transformer.xslt"});bcdui.widget.visualizeXml.visualizeModel({targetHtml: "testOutput", inputModel: mw, title: "Transformed Output"});
````