# Class GenericHtmlBuilder
package bcdui.wrs

Creates an HTML table from a Wrs document, use default it like `chain: bcdui.wrs.htmlBuilder`It can do row- and colspans for documents that have a grouping in the first n columns.It can sort rows and columns by domension valuesThe colspans require that the header columns have pipe-separated captions for each column dimension.Additionally, it formats numeric values by applying scale and unit, especially %.All parameters are defined in xsltParams-1.0.0.xsd and at transform() method and can be provided per XML or JavaScript.Extension point: Rendering of wrs:R/wrs:C can be overwritten bya) deriving class HtmlBuilder and overriding the createMeasureCell() methodb) then providing the transform() method bound to the instance as a transformer

## Constructor

---

Only needed when subclassing. Simply use global singleton `bcdui.wrs.htmlBuilder` in other cases.
#### Examples
````js
// Create your specialized HtmlBuilder by overwriting createMeasureCell()class MyHtmlBuilder extends bcdui.wrs.HtmlBuilder {  createMeasureCell({tr, cell, row, colDefs, parameters}) {    // Locally overwrite values here ...    let myCell = { value: 42, colDef: cell.colDef };    let td = super.createMeasureCell({tr, myCell, row, colDefs, parameters});    // Further manipulate created td here ...    if( cell.value < 42 ) td.classList.add( "mySpecialClass" );  }}// Instantiate and bind your instance like thislet myHtmlBuilder = new MyHtmlBuilder();let myTransformer = myHtmlBuilder.transform.bind(myHtmlBuilder);// Provide your transformer to a chainlet renderer = new bcdui.core.Renderer({  myTargetHtml, inputModel: myModel,  chain: [myTransformer]});
````
<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### createMeasureCell
createMeasureCell(args) &#x21FE; {HTMLTableCellElement}


Only needed as an extension point for overwriting.Creates a measure cell

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  |  |
| args.tr | HTMLTableRowElement |  | the row to append the cell to |
| args.cell | Object |  | the cell data. .value is the content, .colDef is the colHead and all attributes become properties |
| args.row | Object |  | the row data, cells is an array of cells, all attributes become properties |
| args.colDefs | Object |  | the column definitions, array of all colHeads |
| args.parameters | Object |  | the parameters of transform() |

**Returns** {HTMLTableCellElement}: td - created td