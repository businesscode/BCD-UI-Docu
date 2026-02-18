# exportToExcelTemplate()
<span hidden class='htmlPackage'>bcdui.component.exports</span>


Uses ExcelExportServlet to export Wrs(s) into XLSX template

````js
// Usage
bcdui.component.exports.exportToExcelTemplate({ inputModel: myModel });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The argument map with the following properties |
| args.inputModel | bcdui.core.DataProvider |  | containing wrs:WrsContainer with 1..n wrs:Wrs or wrq:WrsRequest elements, containing wrs:Header or rnd:Wrs2Excel defining target sheets |
| args.fileName? | string | excelExport.xlsx | URL name used as suffix, must end with .xlsx |


**Returns**: {void}
