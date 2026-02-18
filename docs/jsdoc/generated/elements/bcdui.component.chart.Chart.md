# Class Chart
<span hidden class='htmlPackage'>bcdui.component.chart</span>
This class represents a chart.In many cases you use [bcdui.component.chart.XmlChart](bcdui.component.chart.XmlChart.md) and you have a config for the chart

_Extends_ [bcdui.core.DataProvider](bcdui.core.DataProvider.md)
## Constructor
````js
// Usage
var myChr = new bcdui.component.chart.Chart({ targetHtml: "#myDiv" });
  ````




<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object: |
| args.targetHtml | targetHtmlRef |  | Where to place the chart |
| args.suppressInitialRendering? | boolean | false | If true, the renderer does not initially auto execute but waits for an explicit execute |
| args.id? | string |  | Page unique id for used in declarative contexts. If provided, the chart will register itself |
| args.showAxes? | boolean | true | If false, no axes will be shown |
| args.title? | string |  | Title |
| args.width? | number |  | Overwrite the chart's auto-width derived from targetHtml |
| args.height? | number |  | Overwrite the chart's auto-height derived from targetHtml |

## Methods


### addSeries
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Adds a data series to the chart

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.yAxis1Or2? | integer |  | 1 for left and 2 for right axis |
| args.yData? | Array.\<number> |  | Data array or provide yDataInfo |
| args.yDataInfo? | DomNodeSet |  | XML nodeset with data |
| args.sizeData? | Array.\<number> |  | 2nd value for scattered charts |
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


### getClassName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Get className \
_Overrides_ bcdui.core.DataProvider#getClassName\
**Returns** {string}: className


### getData
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {document}</span>

Not implemented for Chart \
_Overrides_ bcdui.core.DataProvider#getData\
**Returns** {document}: will always be null


### getPrimaryModel
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.DataProvider}</span>

Not implemented for Chart\
**Returns** {bcdui.core.DataProvider}: will always be null


### getReadyStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.Status}</span>

Getter for the ready status of the instance. This status is a final statedefined by each sub-class which is reached when the process has finishednormally. \
_Overrides_ bcdui.core.DataProvider#getReadyStatus\
**Returns** {bcdui.core.Status}: The status object indicating that the process belongingto this class is finished.


### setStacked
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Define series as being stacked

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | map with |
| args.axis | integer |  | 1 for left axis 2 for right one</li> |
| args.chartType | (integer\|string) |  | Either name or numeric value for chart type |
| args.asPercent? | boolean |  | Each series is calculated to its percentage of the sum if all series and shown as *100'%' |
| args.isStacked? | boolean | true | Whether to stack or not |

**Returns** {void}


### setXAxis
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Defines x (horizontal) axis

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
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Defines left y axis

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
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Defines right y axis

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.caption? | string |  | Axis caption |
| args.unit? | string |  | Unit like € or sec. If '%', values are shown as percent. Use '% ' to show percent without dividing by 100 |
| args.layoutFlow? | string |  | css value |
| args.minValueUser? | number |  | User set axis min value. Only used when below lowest actual value |
| args.maxValueUser? | number |  | User set axis max value. Only used when above highest actual value |

**Returns** {void}


### toString
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Debugging function showing a text for this class. \
_Overrides_ bcdui.core.DataProvider#toString\
**Returns** {string}: A summary of the class.


### addStatusListener
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Listen for any status to be reached. For use cases with the ready status (by far the most common), see onReady() and onceReady() convenience functions. \
_Overrides_ bcdui.core.DataProvider#addStatusListener

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
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
 \
_Overrides_ bcdui.core.DataProvider#debugIsWaitingFor\
**Returns** {string}: Human readable message, which DataProviders, this DataProvider depends on, are not currently in ready state


### debugStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
 \
_Overrides_ bcdui.core.DataProvider#debugStatus\
**Returns** {string}: Human readable message about the current state state


### execute
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(doesRefresh?) &#x21FE; {void}</span>

<b>Instead of calling this method directly, better rely on a Renderer or on method onReady().</b><br/>Executes the process implemented by the concrete sub-classThis method is called by the Renderer when it is ready to render the modelIt is often asynchronous.Note, Renderer and sub-classes execute all input models recursively automatically.This means, usually you do not need to call this method directly. Note: it is asynchronous.Use method .onReady({executeIfNotReady: true, onSuccess: callback }) if no Renderer is involved. \
_Overrides_ bcdui.core.DataProvider#execute

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doesRefresh? | boolean | true | Set this parameter to "false" if this method should do<br/>nothing when the object is already in the ready status. The default is "true"<br/>meaning that the process is re-started when it is currently ready. |

**Returns** {void}


### fetchData
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {Promise.\<bcdui.core.DataProvider>}</span>

asynchronously fetch data for this data provider. \
_Overrides_ bcdui.core.DataProvider#fetchData\
**Returns** {Promise.\<bcdui.core.DataProvider>}: resolving once data has been loaded, first argument is this instance


### fire
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

This informs modification listeners, registered via [onChange(args)](bcdui.core.DataProvider#onChange.md), that a change set was completedand data is consistent again. \
_Overrides_ bcdui.core.DataProvider#fire\
**Returns** {void}


### getFailedStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {Array.\<bcdui.core.Status>}</span>

Getter for the list of error statuses of this class. This implementation returns anempty list. \
_Overrides_ bcdui.core.DataProvider#getFailedStatus\
**Returns** {Array.\<bcdui.core.Status>}: The status objects corresponding to failures in the object'sprocess.


### getName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Getter for the name of the data provider. This name is for example usedto set parameters names of a [bcdui.core.TransformationChain](bcdui.core.TransformationChain.md). \
_Overrides_ bcdui.core.DataProvider#getName\
**Returns** {string}: The name of the data provider. This name should be uniquewithin the scope it is used and is usually not globally unique (as the id).


### getStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.Status}</span>

Getter for the status of this object. See [bcdui.core.status](bcdui.core.status.md) for possible return values. \
_Overrides_ bcdui.core.DataProvider#getStatus\
**Returns** {bcdui.core.Status}: The current status.


### hasFailed
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

Tests if the object has reached a failure status. These status codes arereturned by the "getFailedStatus" method. \
_Overrides_ bcdui.core.DataProvider#hasFailed\
**Returns** {boolean}: True, if the object's process has failed.


### isClean
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

True, if DataProvider is ready and there are no uncommitted write transactions,see [isReady()](bcdui.core.AbstractExecutable#isReady.md) and [fire()](bcdui.core.DataProvider#onChange.md). \
_Overrides_ bcdui.core.DataProvider#isClean\
**Returns** {boolean}: 


### isReady
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

Tests if the current state is the readyStatus. This status is the samestatus as returned by "getReadyStatus". \
_Overrides_ bcdui.core.DataProvider#isReady\
**Returns** {boolean}: True, if the object is ready.


### onceReady
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(listenerObject) &#x21FE; {void}</span>
 \
_Overrides_ bcdui.core.DataProvider#onceReady

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


### onChange
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(listenerObject, trackingXPath?) &#x21FE; {void}</span>
 \
_Overrides_ bcdui.core.DataProvider#onChange

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
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(listenerObject) &#x21FE; {void}</span>
 \
_Overrides_ bcdui.core.DataProvider#onReady

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


### promptData
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

Convenience method for debugging showing data in a prompt for copy-and-paste \
_Overrides_ bcdui.core.DataProvider#promptData\
**Returns** {void}


### removeDataListener
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(listenerObject) &#x21FE; {void}</span>
 \
_Overrides_ bcdui.core.DataProvider#removeDataListener

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
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>
 \
_Overrides_ bcdui.core.DataProvider#removeStatusListener

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
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

Sends the current data to the original URL \
_Overrides_ bcdui.core.DataProvider#sendData\
**Returns** {void}


### serialize
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Serialize dataprovider's data if available \
_Overrides_ bcdui.core.DataProvider#serialize\
**Returns** {string}: String containing the serialized data


### setStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Makes a transition from the current status to the new status if theyare not equal. After the status is changed it fires the status eventto the registered listeners.<p/>Usually this method will only be called by the library but you can use it to re-trigger an action. For available statuses and their effect, see the concrete class, \
_Overrides_ bcdui.core.DataProvider#setStatus

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | bcdui.core.Status |  |  |

**Returns** {void}


### tblDelete
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {number}</span>

updates wrs rows with given data. Either a single row (via rowId) or single/multiple ones (via filter) \
_Overrides_ bcdui.core.DataProvider#tblDelete

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.rmi? | boolean | true | use wrs:M syntax when this is true, otherwise row columns element name is not touched |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |
| args.rowId? | string |  | id specifying row which should be deleted (or use filter) |

**Returns** {number}: count of removed rows


### tblInsert
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {string}</span>

inserts a new row in the wrs data, values given as object \
_Overrides_ bcdui.core.DataProvider#tblInsert

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.values | Object |  | object holding cell values which should be inserted, e.g. { country: 'DE', flag: true } |
| args.rmi? | boolean | true | use wrs:I syntax when this is true, otherwise wrs:R is used, rmi=true also prefills default values |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |

**Returns** {string}: row id of newly inserted row


### tblSelect
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {Array.\<Object>}</span>

returns an array of requested data \
_Overrides_ bcdui.core.DataProvider#tblSelect

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Array.\<Object>}: Array of objects holding the requested data


### tblSelectRow
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {Object}</span>

returns one object representing the filtered data (either filter or rowId). In case of multiple filter matches, the first one is returned \
_Overrides_ bcdui.core.DataProvider#tblSelectRow

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.rowId? | string |  | rowId of row which should be queried (or use filter) |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Object}: Array  of objects holding the requested data


### tblUpdate
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {number}</span>

updates wrs rows with given data. Either a single row (via rowId) or single/multiple ones (via filter) \
_Overrides_ bcdui.core.DataProvider#tblUpdate

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.values | Object |  | object holding cell values which should be used for updating, e.g. { country: 'DE', flag: true } |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.rmi? | boolean | true | use wrs:M syntax when this is true, otherwise row columns element name is not touched |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |
| args.rowId? | string |  | id specifying row which should be updated (or use filter) |

**Returns** {number}: count of updated rows