# filterRowsAndCols()
<span hidden class='htmlPackage'>bcdui.wrs</span>


Filters rows and/or col-dim columns of a WRS according to an f:Filter inside anxp:OrderRowsAndCols parameter set.  JavaScript equivalent of the f:Filter part oforderRowsAndCols.xslt + orderRowsAndColsTemplate.xslt.Parameters:  paramModel - DOM or DataProvider containing xp:OrderRowsAndCols  paramSetId - optional id selecting the parameter setTwo kinds of filter, distinguished by which bRef the f:Expression targets:  Row filter   – bRef matches a header column with @dimId (a row dimension).                 f:Expression is evaluated against the row's wrs:C cell values.                 Special @value constants:                   dimNull  (bcdui.core.magicChar.dimEmpty = \uE0F0) – keep rows where the cell is non-empty OR @bcdGr='1'                   dimTotal (bcdui.core.magicChar.dimTotal = \uE0F0 + '1') – compare the cell's @bcdGr attribute against '1'                 Operator @op: =, !=, <, >, <=, >= (< > <= >= use numeric comparison).  Column filter – bRef matches one of the col-dim level IDs stored in                  wrs:Columns/@colDimLevelIds.  The bRef's 1-based position in that                  pipe-separated list determines which pipe-segment of the col-dim                  measure column's @id is compared.  Only columns with @valueId where

````js
// Usage
bcdui.wrs.filterRowsAndCols();
  ````
**Parameters**: _None_

**Returns**: {void}
