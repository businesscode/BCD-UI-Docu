# createChartLegend()
<span hidden class='htmlPackage'>bcdui.component.chart</span>


Create a legend for the chart, listing all series

````js
// Usage
var ret = bcdui.component.chart.createChartLegend({ inputModel: myModel, targetHtmlElementId });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.inputModel | bcdui.core.DataProvider |  | Input model to renderer |
| args.targetHtmlElementId | string |  | Target HTML element ID |
| args.id? | string |  | Renderer ID |
| args.chartRendererId? | string |  | ID of chart renderer |
| args.elementStyle? | string |  | Style for legend HTML element |


**Returns**: {bcdui.core.Renderer} - renderer that creates legend renderer
