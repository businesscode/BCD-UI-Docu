# filterRows()
<span hidden class='htmlPackage'>bcdui.widget</span>


js implementation of filterRowsTemplate.xsltAllows filtering of rows of a wrs input document by specifying column filters

````js
// Usage
var ret = bcdui.widget.filterRows({ guiStatus, paramModel });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doc | XMLDocument |  | function input wrs document |
| args | Object |  | parameter object |
| args.guiStatus | XMLDocument |  | Status model |
| args.paramModel | XMLDocument |  | (DOM) Parameter model according to xmlns http://www.businesscode.de/schema/bcdui/xsltParams-1.0.0 |
| args.paramSetId? | string |  | Optional specific parameter set ID |
| args.filtersXpath? | string |  | Optional XPath where are the filter values, like $guiStatus/guiStatus:Status/guiStatus:ClientSettings/Grid[@id='myGrid']/Filter<br/>                                        default: $paramModel//xp:FilterXPath[@paramSetId=$paramSetId or not(@paramSetId) and not($paramSetId)]/xp:Value |


**Returns**: {XMLDocument} - filtered document
