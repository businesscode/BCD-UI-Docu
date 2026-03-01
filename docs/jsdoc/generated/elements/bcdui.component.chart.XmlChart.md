# Class XmlChart
package bcdui.component.chart

Implements XML-definition interface. Extends the JS implementation of theChart class allowing an XML definition model as input.

_Extends_ [bcdui.component.chart.Chart](bcdui.component.chart.Chart.md), can act as a DataProvider
## Constructor
````js
// Usage
var myXC = new bcdui.component.chart.XmlChart({ targetHtml: "#myDiv", config });
  ````


---

Constructor of bcdui.component.XmlChart, called by prototype.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.targetHtml | targetHtmlRef |  | Where to place the chart |
| args.config | bcdui.core.DataProvider |  | Definition of the chart according to XSD http://www.businesscode.de/schema/bcdui/charts-1.0.0 |
| args.suppressInitialRendering? | boolean | false | If true, the renderer does not initially auto execute but waits for an explicit execute |
| args.id? | string |  | Page unique id for used in declarative contexts. If provided, the chart will register itself |
| args.showAxes? | boolean | true | If false, no axes will be shown |
| args.title? | string |  | Title |
| args.suppressInitialRendering? | boolean | false | As every renderer, charts will execute and output itself automatically and their parameters after creation. This can be suppressed here. |
| args.width? | number |  | Overwrite the chart's auto-width derived from targetHtml |
| args.height? | number |  | Overwrite the chart's auto-height derived from targetHtml |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### getClassName
getClassName() &#x21FE; {string}


Get className \
_Overrides_ bcdui.component.chart.Chart#getClassName\
**Returns** {string}: className


### getData
getData() &#x21FE; {document}


Not implemented for Chart \
_Overrides_ bcdui.component.chart.Chart#getData\
**Returns** {document}: DOM document


### getPrimaryModel
getPrimaryModel() &#x21FE; {bcdui.core.DataProvider}


Not implemented for Chart \
_Overrides_ bcdui.component.chart.Chart#getPrimaryModel\
**Returns** {bcdui.core.DataProvider}: model with the chart data


### addSeries
addSeries(args) &#x21FE; {void}


Adds a data series to the chart \
_Overrides_ bcdui.component.chart.Chart#addSeries

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.yAxis1Or2? | integer |  | 1 for left and 2 for right axis |
| args.yData? | Array.\<number> |  | Data array or provide yDataInfo |
| args.yDataInfo? | DomNodeSet |  | XML nodeset with data |
| args.sizeData? | Array.\<number> |  | The 2nd value for scattered charts |
| args.xValues? | Array.\<number> |  | For x-y charts |
| args.chartType? | (integer\|string) |  | Either name or numeric value for chart type |
| args.rgb? | string |  | Color |
| args.dashstyle? | string |  | Dash style |
| args.baseColors? | Array.\<string> |  | Colors defining the tones of the generated colors, for example in case of a pie chart |
| args.caption? | string |  | Series caption |
| args.width? | number |  | Line width</li> |
| args.onClick? | (function\|string) |  | Either a function or the name of a function |
| args.toSeriesPercentage? | boolean | false | If true, each value is represented by its percentage value of the full series. |

**Returns** {void}


### addStatusListener
addStatusListener(args) &#x21FE; {void}


Listen for any status to be reached. For use cases with the ready status (by far the most common), see onReady() and onceReady() convenience functions. \
_Overrides_ bcdui.component.chart.Chart#addStatusListener

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | (function\|bcdui.core.StatusListener\|AddStatusListenerParam) |  | Either a function executed on all status transitions or a parameter map  of type **AddStatusListenerParam** |

Type **AddStatusListenerParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| listener | function |  | A function or StatusListener object representing the listener action. |
| status | bcdui.core.Status |  | The status it should listen to.<br/>  If it is missing the listener is executed on all status transitions, otherwise it is executed when the status is set to the specified status. |

**Returns** {void}


### debugIsWaitingFor
debugIsWaitingFor() &#x21FE; {string}

 \
_Overrides_ bcdui.component.chart.Chart#debugIsWaitingFor\
**Returns** {string}: Human readable message, which DataProviders, this DataProvider depends on, are not currently in ready state


### debugStatus
debugStatus() &#x21FE; {string}

 \
_Overrides_ bcdui.component.chart.Chart#debugStatus\
**Returns** {string}: Human readable message about the current state state


### execute
execute(doesRefresh?) &#x21FE; {void}


<b>Instead of calling this method directly, better rely on a Renderer or on method onReady().</b><br/>Executes the process implemented by the concrete sub-classThis method is called by the Renderer when it is ready to render the modelIt is often asynchronous.Note, Renderer and sub-classes execute all input models recursively automatically.This means, usually you do not need to call this method directly. Note: it is asynchronous.Use method .onReady({executeIfNotReady: true, onSuccess: callback }) if no Renderer is involved. \
_Overrides_ bcdui.component.chart.Chart#execute

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doesRefresh? | boolean | true | Set this parameter to "false" if this method should do<br/>nothing when the object is already in the ready status. The default is "true"<br/>meaning that the process is re-started when it is currently ready. |

**Returns** {void}


### fetchData
fetchData() &#x21FE; {Promise.\<bcdui.core.DataProvider>}


asynchronously fetch data for this data provider. \
_Overrides_ bcdui.component.chart.Chart#fetchData\
**Returns** {Promise.\<bcdui.core.DataProvider>}: resolving once data has been loaded, first argument is this instance
#### Examples
````js
new bcdui.core.SimpleModel("data.xml").fetchData().then((dp)=>{ console.info(dp.getData()); })
````


### fire
fire() &#x21FE; {void}


This informs modification listeners, registered via [onChange(args)](bcdui.core.DataProvider#onChange.md), that a change set was completedand data is consistent again. \
_Overrides_ bcdui.component.chart.Chart#fire\
**Returns** {void}
#### Examples
````js
// Use of data modification eventsvar model = new bcdui.core.StaticModel({ data: { value: 3 } });model.execute();model.onChange( function(m) {  console.log(m.getData().value);});model.getData().value ++;model.fire(); // console prints '4'
````


### getFailedStatus
getFailedStatus() &#x21FE; {Array.\<bcdui.core.Status>}


Getter for the list of error statuses of this class. This implementation returns anempty list. \
_Overrides_ bcdui.component.chart.Chart#getFailedStatus\
**Returns** {Array.\<bcdui.core.Status>}: The status objects corresponding to failures in the object'sprocess.


### getName
getName() &#x21FE; {string}


Getter for the name of the data provider. This name is for example usedto set parameters names of a [bcdui.core.TransformationChain](bcdui.core.TransformationChain.md). \
_Overrides_ bcdui.component.chart.Chart#getName\
**Returns** {string}: The name of the data provider. This name should be uniquewithin the scope it is used and is usually not globally unique (as the id).


### getReadyStatus
getReadyStatus() &#x21FE; {bcdui.core.Status}


Getter for the ready status of the instance. This status is a final statedefined by each sub-class which is reached when the process has finishednormally. \
_Inherited from_ bcdui.core.AbstractExecutable\
**Returns** {bcdui.core.Status}: The status object indicating that the process belongingto this class is finished.


### getStatus
getStatus() &#x21FE; {bcdui.core.Status}


Getter for the status of this object. See [bcdui.core.status](bcdui.core.status.md) for possible return values. \
_Overrides_ bcdui.component.chart.Chart#getStatus\
**Returns** {bcdui.core.Status}: The current status.


### hasFailed
hasFailed() &#x21FE; {boolean}


Tests if the object has reached a failure status. These status codes arereturned by the "getFailedStatus" method. \
_Overrides_ bcdui.component.chart.Chart#hasFailed\
**Returns** {boolean}: True, if the object's process has failed.


### isClean
isClean() &#x21FE; {boolean}


True, if DataProvider is ready and there are no uncommitted write transactions,see [isReady()](bcdui.core.AbstractExecutable#isReady.md) and [fire()](bcdui.core.DataProvider#onChange.md). \
_Overrides_ bcdui.component.chart.Chart#isClean\
**Returns** {boolean}: 


### isReady
isReady() &#x21FE; {boolean}


Tests if the current state is the readyStatus. This status is the samestatus as returned by "getReadyStatus". \
_Overrides_ bcdui.component.chart.Chart#isReady\
**Returns** {boolean}: True, if the object is ready.


### onceReady
onceReady(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.component.chart.Chart#onceReady

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| listenerObject | (function\|OnceReadyParam) |  | Either a function to be called on ready status (i.e. onSuccess) or a parameter map  of type **OnceReadyParam**. To listen for other states see addStatusListener() |

Type **OnceReadyParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| onSuccess | function |  | callback function which is called when [bcdui.core.AbstractExecutable](bcdui.core.AbstractExecutable.md) is or gets ready |
| onFailure | function |  | callback function which is called when [bcdui.core.AbstractExecutable](bcdui.core.AbstractExecutable.md) gets into failed status |
| executeIfNotReady | boolean | false | do execute [bcdui.core.AbstractExecutable](bcdui.core.AbstractExecutable.md) if it's not ready |

**Returns** {void}
#### Examples
````js
myModel.onceReady({onSuccess: myCallback, executeIfNotReady: true})
````


### onChange
onChange(listenerObject, trackingXPath?) &#x21FE; {void}

 \
_Overrides_ bcdui.component.chart.Chart#onChange

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| listenerObject | (function\|OnChangeParam) |  | Either a function to be called after changes or a parameter map  of type **OnChangeParam**. Listeners can be removed with removeDataListener() |
| trackingXPath? | string |  | xPath to monitor to monitor for changes |

Type **OnChangeParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| callback | function |  | function to be called after changes |
| trackingXPath | string |  | xPath to monitor for changes |
| onlyOnce | boolean | false | fire on each change or only once  (higher priority than listenerObject's onlyOnce) |
| id | string |  | listener id (only needed for removeDataListener usability) |

**Returns** {void}


### onReady
onReady(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.component.chart.Chart#onReady

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| listenerObject | (function\|OnReadyParam) |  | Either a function to be called on ready status (i.e. onSuccess) or a parameter map  of type **OnReadyParam**. To listen for other states see addStatusListener() |

Type **OnReadyParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| onSuccess | function |  | callback function which is called when [bcdui.core.AbstractExecutable](bcdui.core.AbstractExecutable.md) is or gets ready |
| onFailure | function |  | callback function which is called when [bcdui.core.AbstractExecutable](bcdui.core.AbstractExecutable.md) gets into failed status |
| onlyOnce | boolean | false | call callback only once or on each ready state |
| onlyFuture | boolean | false | only future ready states will trigger the callback. Per default the callback is called immediately (but async), if the AbstractExecutable is already in ready state |
| executeIfNotReady | boolean | false | do execute [bcdui.core.AbstractExecutable](bcdui.core.AbstractExecutable.md) if it's not ready |

**Returns** {void}
#### Examples
````js
myModel.onReady({onSuccess: function(){ console.log("ready") }, executeIfNotReady: true, onlyFuture: true})
````


### promptData
promptData() &#x21FE; {void}


Convenience method for debugging showing data in a prompt for copy-and-paste \
_Overrides_ bcdui.component.chart.Chart#promptData\
**Returns** {void}


### removeDataListener
removeDataListener(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.component.chart.Chart#removeDataListener

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| listenerObject | (string\|function\|RemoveDataListenerParam) |  | Either a listener function or id or a parameter map  of type **RemoveDataListenerParam**. Listeners are added with onChange() |

Type **RemoveDataListenerParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| id | string |  | listener id |
| callback | string |  | listener function |

**Returns** {void}


### removeStatusListener
removeStatusListener(args) &#x21FE; {void}

 \
_Overrides_ bcdui.component.chart.Chart#removeStatusListener

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | (function\|bcdui.core.StatusListener\|RemoveStatusListenerParam) |  | The listener to be removed. This can either be a function or a [StatusListener](bcdui.core.StatusListener.md) or a parameter map  of type **RemoveStatusListenerParam**. |

Type **RemoveStatusListenerParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| listener | function |  | A function <p/>or StatusListener object representing the listener action. |
| status | bcdui.core.Status |  | The status this listener is listening to. If it is missing it is assumed that the listener belongs to the global scope. |

**Returns** {void}


### sendData
sendData() &#x21FE; {void}


Sends the current data to the original URL \
_Overrides_ bcdui.component.chart.Chart#sendData\
**Returns** {void}


### serialize
serialize() &#x21FE; {string}


Serialize dataprovider's data if available \
_Overrides_ bcdui.component.chart.Chart#serialize\
**Returns** {string}: String containing the serialized data


### setStacked
setStacked(args) &#x21FE; {void}


Define series as being stacked \
_Overrides_ bcdui.component.chart.Chart#setStacked

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | map with |
| args.axis | integer |  | 1 for left axis 2 for right one</li> |
| args.chartType | (integer\|string) |  | Either name or numeric value for chart type |
| args.asPercent? | boolean |  | Each series is calculated to its percentage of the sum if all series and shown as *100'%' |
| args.isStacked? | boolean | true | Whether to stack or not |

**Returns** {void}


### setStatus
setStatus(args) &#x21FE; {void}


Makes a transition from the current status to the new status if theyare not equal. After the status is changed it fires the status eventto the registered listeners.<p/>Usually this method will only be called by the library but you can use it to re-trigger an action. For available statuses and their effect, see the concrete class, \
_Overrides_ bcdui.component.chart.Chart#setStatus

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | bcdui.core.Status |  |  |

**Returns** {void}


### setXAxis
setXAxis(args) &#x21FE; {void}


Defines x (horizontal) axis \
_Overrides_ bcdui.component.chart.Chart#setXAxis

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.categories? | Array.\<number> |  | Distinct values, provide this or xValues |
| args.xValues? | Array.\<number> |  | Values for continuous axis for x-y charts |
| args.caption? | string |  | Axis caption |
| args.unit? | string |  | Unit like € or sec. If '%', values are shown as percent. Use '% ' to show percent without dividing by 100 |
| args.layoutFlow? | string |  | css value |

**Returns** {void}


### setYAxis1
setYAxis1(args) &#x21FE; {void}


Defines left y axis \
_Overrides_ bcdui.component.chart.Chart#setYAxis1

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.caption? | string |  | Axis caption |
| args.unit? | string |  | Unit like € or sec. If '%', values are shown as percent. Use '% ' to show percent without dividing by 100 |
| args.layoutFlow? | string |  | css value |
| args.minValueUser? | number |  | User set axis min value. Only used when below lowest actual value |
| args.maxValueUser? | number |  | User set axis max value. Only used when above highest actual value |
| args.showGrid? | boolean | true | If false, no horizontal grid is shown but only small lines next to the y-axis values |

**Returns** {void}


### setYAxis2
setYAxis2(args) &#x21FE; {void}


Defines right y axis \
_Overrides_ bcdui.component.chart.Chart#setYAxis2

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.caption? | string |  | Axis caption |
| args.unit? | string |  | Unit like € or sec. If '%', values are shown as percent. Use '% ' to show percent without dividing by 100 |
| args.layoutFlow? | string |  | css value |
| args.minValueUser? | number |  | User set axis min value. Only used when below lowest actual value |
| args.maxValueUser? | number |  | User set axis max value. Only used when above highest actual value |

**Returns** {void}


### tblDelete
tblDelete(args) &#x21FE; {number}


updates wrs rows with given data. Either a single row (via rowId) or single/multiple ones (via filter) \
_Overrides_ bcdui.component.chart.Chart#tblDelete

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.rmi? | boolean | true | use wrs:M syntax when this is true, otherwise row columns element name is not touched |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |
| args.rowId? | string |  | id specifying row which should be deleted (or use filter) |

**Returns** {number}: count of removed rows


### tblInsert
tblInsert(args) &#x21FE; {string}


inserts a new row in the wrs data, values given as object \
_Overrides_ bcdui.component.chart.Chart#tblInsert

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.values | Object |  | object holding cell values which should be inserted, e.g. { country: 'DE', flag: true } |
| args.rmi? | boolean | true | use wrs:I syntax when this is true, otherwise wrs:R is used, rmi=true also prefills default values |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |

**Returns** {string}: row id of newly inserted row


### tblSelect
tblSelect(args) &#x21FE; {Array.\<Object>}


returns an array of requested data \
_Overrides_ bcdui.component.chart.Chart#tblSelect

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Array.\<Object>}: Array of objects holding the requested data


### tblSelectRow
tblSelectRow(args) &#x21FE; {Object}


returns one object representing the filtered data (either filter or rowId). In case of multiple filter matches, the first one is returned \
_Overrides_ bcdui.component.chart.Chart#tblSelectRow

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.rowId? | string |  | rowId of row which should be queried (or use filter) |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Object}: Array  of objects holding the requested data


### tblUpdate
tblUpdate(args) &#x21FE; {number}


updates wrs rows with given data. Either a single row (via rowId) or single/multiple ones (via filter) \
_Overrides_ bcdui.component.chart.Chart#tblUpdate

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.values | Object |  | object holding cell values which should be used for updating, e.g. { country: 'DE', flag: true } |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.rmi? | boolean | true | use wrs:M syntax when this is true, otherwise row columns element name is not touched |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |
| args.rowId? | string |  | id specifying row which should be updated (or use filter) |

**Returns** {number}: count of updated rows


### toString
toString() &#x21FE; {string}


Debugging function showing a text for this class. \
_Overrides_ bcdui.component.chart.Chart#toString\
**Returns** {string}: A summary of the class.