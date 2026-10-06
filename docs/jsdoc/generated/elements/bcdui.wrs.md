# Package bcdui.wrs

Package for functionality around Wrs format


----
<h4>Classes</h4>



[GenericHtmlBuilder](bcdui.wrs.GenericHtmlBuilder.md)\
Creates an HTML table from a Wrs document, use default it like `chain: bcdui.wrs.htmlBuilder`It can do row- and colspans for documents that have a grouping in the first n columns.

----
<h4>Functions</h4>



[calculation()](bcdui.wrs.calculation.md)\
Applies cube calculations (plain measures + calc:Calc expressions) to a WRS.

[colDims()](bcdui.wrs.colDims.md)\
Pivots a WRS by turning some dimension columns into column headers (cross-tab).

[cumulAndPercOfTotal()](bcdui.wrs.cumulAndPercOfTotal.md)\
Applies types cumulate, cumulate% and % calculations along rows (top-down) or columns (left-to-right) of a Wrs.

[filterRowsAndCols()](bcdui.wrs.filterRowsAndCols.md)\
Filters rows and/or col-dim columns of a WRS according to an f:Filter inside anxp:OrderRowsAndCols parameter set.

[join()](bcdui.wrs.join.md)\
Joins two WRS documents: the right doc is docIn, the left doc is params.leftDoc.

[orderRowsAndCols()](bcdui.wrs.orderRowsAndCols.md)\
Sorts/reorders rows and columns of a WRS according to xp:OrderRowsAndCols parameters defined in xsltParams-1.0.0.xsdCompared to orderRowsAndCols.xslt the filter is not present but handled in filterRowsAndColumns.jsBut cols not listed in xp:ColsOrder are still droppedParameters (via params object):  paramModel - DOM or DataProvider containing xp:OrderRowsAndCols  paramSetId - optional id selecting the parameter setThree ordering mechanisms, all optional and combinable:  xp:RowsOrder/Columns/C[@id, @sort, @total, @sortBy]    Sorts data rows.

[removeEmptyCells()](bcdui.wrs.removeEmptyCells.md)\
Removes empty rows and columns from a WRS cube document.

----
<h4>Members</h4>



----
<h4>Subpackages</h4>



[bcdui.wrs.jsUtil](bcdui.wrs.jsUtil.md)\
Helper for js WRS format.

[bcdui.wrs.wrsUtil](bcdui.wrs.wrsUtil.md)\
Utility functions for working with wrs:Wrs documents from JavaScript.