# colDims()
<span hidden class='htmlPackage'>bcdui.wrs</span>


Pivots a WRS by turning some dimension columns into column headers (cross-tab).JavaScript equivalent of the colDims.xslt + colDimsTemplate.xslt XSLT pair.Parameters:  paramModel        - DOM or DataProvider with xp:ColDims parameter sets  paramSetId        - optional id selecting the parameter set  colDimNrOfColDims - simple mode: last N dim columns become col headersReturns a new WRS document, or undefined if there is nothing to do.Intentional deviations from the XSLT pair: - Sorting (@sort / @total on LevelRef) is not applied; column order follows   document order of the first occurrence of each col-dim key, same as the   XSLT when no ColSorting is active. - The row full-key uses \x00 as separator between row-dim key and col-dim key   (the XSLT has none), which avoids ambiguity when values contain "|".

````js
// Usage
bcdui.wrs.colDims();
  ````
**Parameters**: _None_

**Returns**: {void}
