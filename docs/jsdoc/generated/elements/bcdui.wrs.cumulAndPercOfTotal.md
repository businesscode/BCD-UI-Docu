# cumulAndPercOfTotal()
<span hidden class='htmlPackage'>bcdui.wrs</span>


Applies types cumulate, cumulate% and % calculations along rows (top-down) or columns (left-to-right) of a Wrs.Parameters:  paramModel  - DOM with xp:CumulAndPercOfTotal parameter sets  paramSetId  - optional id selecting the parameter set (chain uses 'rowCumul' / 'colCumul')The Wrs DOM is modified in placeIntentional deviations from the XSLT pair: - Rows whose last dim cell has no @bcdGr attribute are treated as normal rows and take part in   cumulation. The XSLT's keys silently dropped such rows from the output. - Column groups are derived per column id instead of from the segment count of the last header   column, which only matters for Wrs with mixed-depth column dimensions.

````js
// Usage
bcdui.wrs.cumulAndPercOfTotal();
  ````
**Parameters**: _None_

**Returns**: {void}
