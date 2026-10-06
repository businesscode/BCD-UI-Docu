# verticalizeKpis()
<span hidden class='htmlPackage'>bcdui.component.scorecard</span>


Applies the verticalizeKpis transformation to a WRS scorecard result.JavaScript equivalent of Client/src/js/component/scorecard/verticalizeKpis.xslt.The original XSLT was a two-stage pipeline: the outer XSLT generated a secondXSLT stylesheet at runtime which was then applied to the WRS.  This functioncollapses both stages into one direct DOM pass.Two modes, driven by scc:Internal/scc:VerticalizeKpis/@doVerticalize:  true  – Each KPI becomes a row.  Source rows × KPIs → output rows.  false – KPIs remain as column groups, one group per KPI per source row.Parameters:  sccDefinition – Scorecard definition DOM or DataProviderReturns a new WRS document or undefined if inputs are missing.

````js
// Usage
bcdui.component.scorecard.verticalizeKpis();
  ````
**Parameters**: _None_

**Returns**: {void}
