# orderRowsAndCols()
<span hidden class='htmlPackage'>bcdui.wrs</span>


Sorts/reorders rows and columns of a WRS according to xp:OrderRowsAndCols parameters defined in xsltParams-1.0.0.xsdCompared to orderRowsAndCols.xslt the filter is not present but handled in filterRowsAndColumns.jsBut cols not listed in xp:ColsOrder are still droppedParameters (via params object):  paramModel - DOM or DataProvider containing xp:OrderRowsAndCols  paramSetId - optional id selecting the parameter setThree ordering mechanisms, all optional and combinable:  xp:RowsOrder/Columns/C[@id, @sort, @total, @sortBy]    Sorts data rows. @sort = "ascending"|"descending". @total = "leading"|"trailing" places    rows with @bcdGr='1' at the front or back, winning over value sort.

````js
// Usage
bcdui.wrs.orderRowsAndCols();
  ````
**Parameters**: _None_

**Returns**: {void}
