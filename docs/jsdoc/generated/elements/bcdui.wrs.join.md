# join()
<span hidden class='htmlPackage'>bcdui.wrs</span>


Joins two WRS documents: the right doc is docIn, the left doc is params.leftDoc.Join modes:  INNER JOIN     — (default) only rows with a match in both docs  LEFT OUTER JOIN — @makeLeftOuterJoin='true': all left rows; unmatched rows get wrs:null right cells  CROSS JOIN     — no join columns specified: every left × right combinationParameters (all optional except leftDoc):  leftDoc                — left WRS DataProvider or DOM  (required)  rightWrsCol            — space-separated right-doc join column IDs  leftWrsCol             — space-separated left-doc join column IDs (parallel to rightWrsCol)  dimensions             — space-separated column IDs present in both docs; added to both join lists  rightIdPrefix          — ID prefix for right non-join columns  rightCaptionPrefix     — caption prefix for right non-join columns  leftIdPrefix           — ID prefix for left non-join columns  leftCaptionPrefix      — caption prefix for left non-join columns  makeLeftOuterJoin      — "true" to enable LEFT OUTER JOIN  joinColumnIdPrefix     — ID prefix for join columns  joinColumnCaptionPrefix — caption prefix for join columns (defaults to joinColumnIdPrefix)  paramModel + paramSetId — DOM containing xp:Join parameter setOutput column order: all left columns (with prefixes), then right non-join columns.Columns listed in the raw 'dimensions' string parameter are never prefixed.Returns a new WRS document, or undefined if inputs are missing.

````js
// Usage
bcdui.wrs.join();
  ````
**Parameters**: _None_

**Returns**: {void}
