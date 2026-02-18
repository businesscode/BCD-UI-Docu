# detailExport()
<span hidden class='htmlPackage'>bcdui.component.exports</span>


Uses SylkServlet, CsvServlet or ExcelExportServlet export servlets to provide the data of a WrsRequest, the response opens asynchronously in an extra window

````js
// Usage
bcdui.component.exports.detailExport({ wrq });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The argument map with the following properties |
| args.wrq | (string\|bcdui.core.DataProvider) |  | Model containing the wrs request according to XSD http://www.businesscode.de/schema/bcdui/wrs-request-1.0.0 |
| args.type? | string | slk | Can be "slk" or "csv" or "xlsx". slk is efficient as csv and preserves numbers, use "xlsx" to preserve non-latin characters in addition |
| args.fileName? | string | "export_(timestamp).(csv|xls)" | Name of the response file, depending on type, can also be provided via /wrq:WrsRequest/@bcdFileName from within the request |
| args.vfsFilename? | string |  | when using vfs stored export lists, you can define a vfs path name here, if not, it is generated out of url/user information |
| args.exportMode? | string | full | full - using the wrq as it is, show - always showing a column selector, silent - use stored column information (at least 1 column specified) if available, otherwise full |
| args.allowSave? | boolean | false | ability to save to vfs, ensure that vfs binding and user rights are available when turned on |
| args.allDeselected? | boolean | false | for the column picjer, all columns are initially selected by default and you can deselect some. Settings this flag to true, you inverse this behaviour |
| args.wrqModify? | function |  | function to do post wrq processing just before sending the request |


**Returns**: {void}
