# Class QuickEdit
package bcdui.widgetNg

QuickEdit widget provides UI to edit Wrs row

## Constructor
````js
// Usage
var myQE = new bcdui.widgetNg.QuickEdit({ wrsDataProvider, rowId, targetHtml: "#myDiv" });
  ````


---


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  | the arguments |
| args.wrsDataProvider | bcdui.core.DataProvider |  | The dataProvider with Wrs document |
| args.rowId | string |  | the rowId to edit, the row with such ID must exist in the document already |
| args.targetHtml | targetHtmlRef |  | the targetHtml to render UI |
| args.columnTypeWidgetRendererMap? | object |  | optional mapping for widget renderers mapped by 'type-name' of Wrs |
| args.callbackHandler? | Type_Quickedit_CallbackHandler |  | optional callback handler function.<br/>                                                            It is recommended to provide a handler to at least handle "DISPOSE" type,<br/>                                                            otherwise we just hide the widget and clean its targetHtml if user clicks on "close" button. |

#### Examples
````js
<caption>HTML container for QuickEdit</caption>&lt;div id="formContainer">&lt;/div>
````
````js
<caption>Sample 1: static call</caption>jQuery("#formContainer").bcduiQuickEdit({  wrsDataProvider  : new bcdui.core.SimpleModel(), // some wrs data  rowId            : "R1"                          // i.e. first row});
````
````js
<caption>Sample 2: call edit form from Wrs grid rendering (default/htmlBuilder.xslt rendering)</caption>const targetHtml = jQuery(".grid-rendering");  // element for grid rendererconst wrsModel = new bcdui.core.SimpleModel(); // Wrs data model// default Wrs renderingconst wrsRendering = new bcdui.core.Renderer({ targetHtml, inputModel:wrsModel });// attach DOM event to open quickEdit on doubleclick on grid rowtargetHtml.on("dblclick", "[bcdrowident]", function(){  jQuery("&lt;div/>").appendTo(jQuery("#formContainer").empty()) // add DIV wrapper for repetitive rendering  .bcduiQuickEdit({    wrsDataProvider  : wrsModel,    rowId            : jQuery(this).attr("bcdrowident"), // current row identifier    callbackHandler  : (instance, type, args) => {       // our callback to process callbacks      if (type == "DISPOSE"){        wrsRendering.execute(); // refresh rendered grid on disposal of the form      }    }  });});
````
<!-- LLM_HINT DETAILS_STARTING -->
## Methods