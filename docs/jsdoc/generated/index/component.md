# Available Elements in group component
 Note: A detail specification is available for all elements.
 <!-- For LLM: Use tool GetSpecification(elementName) -->

 ## Elements
 | Name | Summary | Remark |
 |------|---------|--------|
 | [Chart](../elements/bcdui.component.chart.Chart.md) | This class represents a chart | Is a DataProvider |
 | [ChartEchart](../elements/bcdui.component.chart.ChartEchart.md) | Create a chart based on http://www.businesscode.de/schema/bcdui/charts-1.0.0 XML | Is a Renderer |
 | [Cube](../elements/bcdui.component.cube.Cube.md) | Creates a Cube, which is a pivot-like view based on given data or a configuration | Is a Renderer |
 | [CubeModel](../elements/bcdui.component.cube.CubeModel.md) | Creates a CubeModel for use by Cube, if you need more fine-grained control or only want the data | Is a DataProvider |
 | [Far](../elements/bcdui.component.far.Far.md) | A FAR component |  |
 | [FarModel](../elements/bcdui.component.far.FarModel.md) | DataProvider for Far if you need more fine-grained control | Is a DataProvider |
 | [Grid](../elements/bcdui.component.grid.Grid.md) | Creates a Grid-UI for editing tabular data, complete with range copy-paste and validation | Is a Renderer |
 | [GridModel](../elements/bcdui.component.grid.GridModel.md) | Creates a GridModel for use by Grid if you need more fine-grained control | Is a DataProvider |
 | [Renderer](../elements/bcdui.core.Renderer.md) | This class renders data to HTML, per default a table view of Wrs, but it does support any kind of input and HTML output when providing a `chain` | Is a Renderer |
 | [Scorecard](../elements/bcdui.component.scorecard.Scorecard.md) | Creates a convenience standard scorecard renderer | Is a Renderer |
 | [ScorecardModel](../elements/bcdui.component.scorecard.ScorecardModel.md) | Creates a scorecard-model from a scorecard definition, the scorecard model is derived DataProvider | Is a DataProvider |
 | [TextNavigation](../elements/bcdui.component.textnavigation.TextNavigation.md) | Create a text navigation based on http://www.businesscode.de/schema/bcdui/textnavigation-1.0.0 XSD | Is a Renderer |
 | [Tree](../elements/bcdui.component.tree.Tree.md) | Creates a tree front end based on a configuration | Is a Renderer |
 | [Uploader](../elements/bcdui.component.docUpload.Uploader.md) | Creates an Uploader | Is a Renderer |
 | [XmlChart](../elements/bcdui.component.chart.XmlChart.md) | Constructor of bcdui.component.XmlChart, called by prototype. | Is a DataProvider |

 ## Auxiliary elements
[createCubeConfigurator](../elements/bcdui.component.createCubeConfigurator.md), [chart.createChartLegend](../elements/bcdui.component.chart.createChartLegend.md), [cube.templateManager.clearLayout](../elements/bcdui.component.cube.templateManager.clearLayout.md), [docUpload.getUploadOverview](../elements/bcdui.component.docUpload.getUploadOverview.md), [exports.detailExport](../elements/bcdui.component.exports.detailExport.md), [exports.exportToExcelTemplate](../elements/bcdui.component.exports.exportToExcelTemplate.md), [exports.exportWysiwygAsExcel](../elements/bcdui.component.exports.exportWysiwygAsExcel.md), [exports.exportWysiwygAsImage](../elements/bcdui.component.exports.exportWysiwygAsImage.md), [exports.exportWysiwygAsPdf](../elements/bcdui.component.exports.exportWysiwygAsPdf.md), [far.createFarConfigurator](../elements/bcdui.component.far.createFarConfigurator.md), [far.enhancer.createEnhancedConfiguration](../elements/bcdui.component.far.enhancer.createEnhancedConfiguration.md), [scorecard.createScorecardConfigurator](../elements/bcdui.component.scorecard.createScorecardConfigurator.md), [scorecardConfigurator.reDisplay](../elements/bcdui.component.scorecardConfigurator.reDisplay.md), [treeView.expandCollapse](../elements/bcdui.component.treeView.expandCollapse.md), [treeView.expandCollapseAll](../elements/bcdui.component.treeView.expandCollapseAll.md), [userCalcEditor.showUserCalcEditor](../elements/bcdui.component.userCalcEditor.showUserCalcEditor.md)