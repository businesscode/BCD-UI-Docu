# removeEmptyCells()
<span hidden class='htmlPackage'>bcdui.wrs</span>


Removes empty rows and columns from a WRS cube document.Empty meanign all measures are NaN, including blank or wrs:nullParameters:  paramModel - DOM or DataProvider containing xp:RemoveEmptyCells, see xsltParams-1.0.0.xsd  paramSetId - optional id selecting the parameter setThe parameter set must have @apply='rowCol' for the transformation to run.Optional attributes on xp:RemoveEmptyCells:

````js
// Usage
bcdui.wrs.removeEmptyCells();
  ````
**Parameters**: _None_

**Returns**: {void}
