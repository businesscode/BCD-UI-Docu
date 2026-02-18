# Package bcdui.wrs.wrsUtil

Utility functions for working with wrs:Wrs documents from JavaScript.These are mainly JavaScript wrappers around XML library found a bcdui/xslt


----
<h4>Classes</h4>



----
<h4>Functions</h4>



[applyScale()](bcdui.wrs.wrsUtil.applyScale.md)\
applies number rounding at defined wrs:Header/wrs:Columns/wrs:C/@scale.

[copy()](bcdui.wrs.wrsUtil.copy.md)\
Copy (copies selected cells to clipboard, not changes source model).

[copyAllRows2CSV()](bcdui.wrs.wrsUtil.copyAllRows2CSV.md)\
Copy all rows to CVS.

[deleteColumns()](bcdui.wrs.wrsUtil.deleteColumns.md)\
Phsyically drops columns from Wrs.

[deleteRow()](bcdui.wrs.wrsUtil.deleteRow.md)\
Deletes a row identified by id, also see [deleteWrsRow()](bcdui.wrs.wrsUtil.deleteWrsRow.md).

[deleteRowByColumnValue()](bcdui.wrs.wrsUtil.deleteRowByColumnValue.md)\
delete rows identified by the column value(s).

[deleteRows()](bcdui.wrs.wrsUtil.deleteRows.md)\
Deleting rows (operation will change source model).

[duplicateRow()](bcdui.wrs.wrsUtil.duplicateRow.md)

[duplicateRows()](bcdui.wrs.wrsUtil.duplicateRows.md)\
Duplicate rows in Wrs.

[generateWrsHeaderMeta()](bcdui.wrs.wrsUtil.generateWrsHeaderMeta.md)\
Generates metadata JS object from a Wrs document.

[getCellValue()](bcdui.wrs.wrsUtil.getCellValue.md)\
Get cell value.

[getColPosById()](bcdui.wrs.wrsUtil.getColPosById.md)\
get column position by id.

[getNextIdentifier()](bcdui.wrs.wrsUtil.getNextIdentifier.md)\
Retrieves next identifier from the server (async).

[getRowPositionByRowId()](bcdui.wrs.wrsUtil.getRowPositionByRowId.md)\
1-based position of a row which is identified by its row-id.

[getValidationErrorCount()](bcdui.wrs.wrsUtil.getValidationErrorCount.md)\
Convenience method to return error count in current document (possibly validated by validateWrs.xml).

[getValidationResult()](bcdui.wrs.wrsUtil.getValidationResult.md)\
get wrs:ValidationResult/wrs:Wrs element for given Wrs (optionally creates an empty one).

[insertRow()](bcdui.wrs.wrsUtil.insertRow.md)\
Inserting empty wrs:I rows at the given location, respecting default values.

[parseFilterExpression()](bcdui.wrs.wrsUtil.parseFilterExpression.md)

[paste()](bcdui.wrs.wrsUtil.paste.md)\
paste (Paste data from clipboard.

[pasteAsNewRows()](bcdui.wrs.wrsUtil.pasteAsNewRows.md)\
Paste data from clipboard as new rows.

[postWrs()](bcdui.wrs.wrsUtil.postWrs.md)

[read()](bcdui.wrs.wrsUtil.read.md)\
Reads the string value from a given xPath (or optionally return default value)..

[replaceValidationResult()](bcdui.wrs.wrsUtil.replaceValidationResult.md)\
Replaces validationResult/Wrs document in the Wrs,the validationDoc can be provided as NULL to remove the validationResult Wrs from previous validation;the validationId is mandatory to provide to uniquelly identify the subject of validation..

[restore()](bcdui.wrs.wrsUtil.restore.md)\
Restore (operation will change source model).

[restoreRow()](bcdui.wrs.wrsUtil.restoreRow.md)\
Restores a wrs:D, wrs:M identified by id, also see [restore()](bcdui.wrs.wrsUtil.restore.md).

[saveModel()](bcdui.wrs.wrsUtil.saveModel.md)\
Save Wrs data of a [bcdui.core.DataProvider](bcdui.core.DataProvider.md).

[setCellValue()](bcdui.wrs.wrsUtil.setCellValue.md)\
Sets cell value, both, the row and cell MUST exist in target modelThis also changes wrs:R to wrs:M and clones wrs:C to wrs:O values..

[transposeGrouping()](bcdui.wrs.wrsUtil.transposeGrouping.md)\
This transposes the inner-most @dim column column of a WRS from rows to columns.

[validateModel()](bcdui.wrs.wrsUtil.validateModel.md)\
runs validation xslt against given model, you can access the result via returned trafo, see return section.

[write()](bcdui.wrs.wrsUtil.write.md)\
Set a value to on a certain xPath and create the xPath where necessary.

[wrsValidation()](bcdui.wrs.wrsUtil.wrsValidation.md)\
Wrs validation which validates selected wrs:C against provided validation functionparameters:.

----
<h4>Members</h4>



----
<h4>Subpackages</h4>

