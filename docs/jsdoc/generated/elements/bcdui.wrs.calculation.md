# calculation()
<span hidden class='htmlPackage'>bcdui.wrs</span>


Applies cube calculations (plain measures + calc:Calc expressions) to a WRS.Parameters:  paramModel - DOM or DataProvider containing xp:CubeCalculation and cube:Layout  paramSetId - optional id selecting the xp:CubeCalculation parameter setWhat it does:  1. Rebuilds wrs:Columns from cube:Layout/cube:Dimensions + cube:Measures.  2. For each wrs:R: copies dim cells, then emits one cell per measure.       dm:MeasureRef  – copies the existing cell from the source column.       dm:Measure     – evaluates its calc:Calc via bcdui.wrs.calculationFormulas.  3. When any calc:ValueRef uses a total-row reference (magic-char idRef prefix     &#xE0F0;1R / &#xE0F0;2R / &#xE0F0;1C / &#xE0F0;2C), it pre-builds four     lookup Maps (matching the XSLT keys columnKeyAboveTotal, columnKeyOuterTotal,     rowKeyAboveTotal, rowKeyOuterTotal) and resolves each row's totals at     evaluation time.  4. Appends a <TotalHelper> element (containing the source header and the pre-     calculation total rows) for downstream pipeline compatibility, mirroring     the output of calculationTemplate.xslt when total refs are present.Returns a new WRS document, or undefined if there is nothing to do.Requires bcdui.wrs.calculationFormulars (calculationFormular.js).

````js
// Usage
bcdui.wrs.calculation();
  ````
**Parameters**: _None_

**Returns**: {void}
