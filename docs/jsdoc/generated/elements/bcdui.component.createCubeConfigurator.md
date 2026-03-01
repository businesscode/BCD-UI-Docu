# createCubeConfigurator()
<span hidden class='htmlPackage'>bcdui.component</span>


Creates a cube configurator, providing the cube:Layout section of the cube configuration, able of1) Showing the drag and drop area for the dimensions and measures2) Providing templates to the user3) Allowing the user to save templates for him/herself4) Allowing the user to create new measures with the formula editor

````js
// Usage
bcdui.component.createCubeConfigurator({ id, targetHtml: "#myDiv", cubeRenderer });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties: |
| args.id | string |  | Id of the created object |
| args.targetHtml | targetHtmlRef |  | The target HTML element for the drag-and-drop matrix. |
| args.targetModelXPath? | writableModelXPath | "$guiStatus/guiStatus:Status/cube:Layout" | Where to write the result |
| args.config? | (string\|bcdui.core.DataProvider) | "./dimensionsAndMeasures.xml" | DataProvider containing the configuration for the cube configurator, per defaulz ./dimensionsAndMeasures.xml is loaded |
| args.cubeRenderer | (string\|bcdui.component.cube.Cube) |  | Cube we belong to |
| args.isRanking? | boolean | false | Show ranking editor. This is an Enterprise Edition only feature. |
| args.isTemplate? | boolean | false | Show template Editor true/false. This is an Enterprise Edition only feature. |
| args.showSummary? | boolean | false | Show summary of cube settings |
| args.rankingTargetHtmlElementId? | string |  | Custom location for ranking editor |
| args.templateTargetHtmlElementId? | string |  | Custom location for template editor |
| args.summaryTargetHtmlElementId? | string |  | Custom location for summary display |
| args.contextMenu? | (boolean\|string) | false | If true, cube's default context menu is used, otherwise provide the url to your context menu xslt here. |
| args.contextMenuResolver? | (function\|string) |  | Function which gets a parameter bag with well known attributes and the dataset of the selected context menu entry. Should return false if action is not provided so that default functions are called. |
| args.tooltip? | (boolean\|string) | false | If true, cube's default tooltip is used, otherwise provide the url to your tooltip xslt here. |
| args.isDefaultHtmlLayout? | boolean | false | If true, a standard layout for dnd area, ranking, templates and summary is created. Separate targetHtmlElements will be obsolete then. If false, you need to provide containers with classes: bcdCurrentRowDimensionList, bcdCurrentColMeasureList, bcdCurrentColDimensionList, bcdCurrentMeasureList, bcdDimensionList, bcdMeasureList within an outer bcdCubeDndMatrix container. if your targetHtml got classes bcdDndBlindOpen or bcdDndBlindClosed, the actual dnd area is also put in collapsable boxes (either open or closed by default). |
| args.hasUserEditRole? | boolean |  | Template Editor also has edit capability. If not given, bcdui.config.clientRights.bcdCubeTemplateEdit is used to determine state (either *(any) or cubeId to enable). |
| args.applyFunction? | string | bcdui.core.lifecycle.applyAction | Function name which is used for the apply button in isDefaultHtmlLayout=true mode. |
| args.url? | string | WrsServlet | The URL the model for the grouping editor is loaded from. If omitted the WrsServlet is taken as default. |
| args.expandCollapseCells? | string |  | When specified (with 'expand' or 'collapse' or 'collapse2nd'), cube turns on the expand/collapse mode. collapse2nd initially keeps level one open. |
| args.doSortOptions? | boolean | false | When setting this to true, dimensions and measures lists are sorted by caption. |


**Returns**: {void}

**Examples:**
````js
new bcdui.core.SimpleModel({   id:  "myDndOptions", // define ID explicitly   url: "dndOptionsModel.xml"  );  bcdui.component.createCubeConfigurator({      id:                  "cubeConfigurator",    , config:              "myDndOptions"    , targetHtml:          "cubeConfiguratorDiv"    , targetModelId        "guiStatus"    , isRanking            true    , cubeRenderer:        "cube"    , rankingTargetHtmlElementId: "rankingDiv"  });
````
````js
<div class='container_24 bcdCubeDndMatrix'>   <div class='grid_24'>     <div class='grid_3 omega bcdCurrentRowDimensionList alpha'></div>     <div class='grid_3 omega bcdCurrentColMeasureList'></div>     <div class='grid_3 omega'>       <div class='bcdCurrentColDimensionList'></div>       <div class='bcdCurrentMeasureList'></div>     </div>     <div class='grid_5 omega'>       <div class='bcdHeader'>Dimensions</div>       <div class='bcdDimensionList'></div>     </div>     <div class='grid_5 omega'>       <div class='bcdHeader'>Measures</div>       <div class='bcdMeasureList'></div>     </div>   </div> </div>
````