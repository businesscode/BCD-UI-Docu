# pasteCSVasXML()
<span hidden class='htmlPackage'>bcdui.util.clipboard</span>


Gets CSV data from the clipboard (or the provided data) and converts it toXML according to the csv-1.0.0.xsd.

````js
// Usage
bcdui.util.clipboard.pasteCSVasXML();
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| data? | string |  | Optional parameter containing CSV data which should be converted<br/>instead of the clipboard data. If omitted the CSV data is taken from the<br/>clipboard. |
| emptyRowIfNoData? | boolean | false | If true and there is no data to paste, an emtpy<br/>row with one column is produced in the resulting XML, this is useful for<br/>pasting as new rows, in case only empty-cells were previously copied to the<br/>clipboard. |


**Returns**: {void}
