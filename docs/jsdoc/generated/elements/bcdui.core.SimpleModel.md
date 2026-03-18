# Class SimpleModel
package bcdui.core

This class represents the standard case of a model where the data is loaded from a specified URL. Its document can be accessed  via [myModel.getData()](bcdui.core.SimpleModel#getData.md). Javascript and [Modelupdaters](bcdui.core.Modelupdater.md) can modify the data.  Data loading is triggered by [myModel.execute()](bcdui.core.AbstractExecutable#execute.md)The constructor of the model takes only one property besides the mandatory"id" property (defined in AbstractExecutable) in its args parameter map namelythe "url" property. It specifies the URL the XML document represented by thismodel should be loaded from.The parameter isAutoRefresh=true forces a reload if the DataProvider has changed.If not text/plain, (derived or via mimeType), the data is parsed. <table>   <tr><th>file extension</th><th>value</th><th>Result</th></tr>   <tr><td>*.json</td><td>"application/json"</td><td>are turned into a js object</td></tr>   <tr><td>*.js</td><td>"application/javascript"</td><td>are loaded and executed</td></tr>   <tr><td>*.xml, .xsl, .xslt</td><td>"application/xml", "application/xslt+xml"</td><td>are parsed into DOM</td></tr> </table> All other content is just loaded as plain text.

_Extends_ [bcdui.core.AbstractUpdatableModel](bcdui.core.AbstractUpdatableModel.md), can act as a DataProvider
## Constructor

---


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | (string\|SimpleModelParam) |  | An url for the data or an argument map  of type **SimpleModelParam** |

Type **SimpleModelParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| url | string |  | A string with the URL or a RequestDocumentDataProvider providing the request. See [RequestDocumentDataProvider](bcdui.core.RequestDocumentDataProvider.md) for an example. |
| uri | string |  | uri extension as a suffix to .url to tag requests, must not start with '/'. This parameter is ineffective if .url is provided. |
| id | string |  | Globally unique id for used in declarative contexts |
| isAutoRefresh | boolean | false | If true, each change of args.urlProvider triggers a reload of the model |
| mimeType | string | auto | Mimetype of the expected data. If "auto" or none is given it is derived from the url |
| saveOptions | SimpleModelParamSaveOptions |  | An argument map for save options [SimpleModelParamSaveOptions](SimpleModelParamSaveOptions.md) |

#### Examples
````js
// Load fix xml content and use a Renderer to display itvar bookModel = new bcdui.core.SimpleModel( "../docs/allBooks.xml" );var renderer  = new bcdui.core.Renderer({ targetHtml: "booksDiv", chain: "myRenderer.xslt", inputModel: bookModel });
````
````js
// Load a model using a Wrs-Request document Wrq from Wrs servlet// Provide data as a [DataProvider](bcdui.core.DataProvider.md)var myModel = new bcdui.core.SimpleModel({ id: "dayModel", url: new bcdui.core.RequestDocumentDataProvider({ url: "daysWrq.xml"}) });// Reference by id in an xPath in a widget ($dayModel)bcdui.widgetNg.createSingleSelect({ targetHtml: "selectDayHtml", optionsModelXPath: "$dayModel/Values/V", targetModelXPath: "$guiStatus/guiStatus:Status/guiStatus:SelectedDay/@value" });// Note: Only if using in plain JS, execute the model to load the data. Renderers and Widgets do that for you automatically.myModel.onceReady({ executeIfNotReady: true, onSuccess: () => {  var myVal = myModel.getData().selectSingleNode("/wrs:Wrs/wrs:Data/wrs:R[1]/wrs:C[3]").nodeValue;  // ...});// Add a row and save itmyModel.tblInsert({ values: {author: 'Descartes', title: "Principles of Philosophy", year: "1644"} });myModel.sendData();
````
<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### getClassName
getClassName() &#x21FE; {string}


Get className \
_Overrides_ bcdui.core.AbstractUpdatableModel#getClassName\
**Returns** {string}: className


### getData
getData() &#x21FE; {*}


Access to the data of this DataProvider for read and modification access \
_Overrides_ bcdui.core.AbstractUpdatableModel#getData\
**Returns** {*}: The data provided by the specific sub-class.


### getFailedStatus
getFailedStatus() &#x21FE; {Array.\<bcdui.core.Status>}


Returns the list of status objects indicating that something has failed. \
_Overrides_ bcdui.core.AbstractUpdatableModel#getFailedStatus\
**Returns** {Array.\<bcdui.core.Status>}: The array of failure [bcdui.core.Status](bcdui.core.Status.md) objects.


### getReadyStatus
getReadyStatus() &#x21FE; {bcdui.core.Status}


The SimpleModel reaches its ready status when the XML document has beenloaded from the URL and the optional model updates have run. The documentcan then be retrieved with the "getDataDoc" method.<p> The status transitions of the class are as follows:          </p>                                                              <p style="padding-left: 10px"><table><tr><td rowspan="10">&nbsp;</td><td style="border: 3px double black; text-align: center" colspan="2">     [InitializedStatus](bcdui.core.status.InitializedStatus.md)  </td><td style="padding-left: 20px">         All variables have been initialized.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2"> <i> Loading </i>                                             </td><td style="padding-left: 20px">         If it is not ready execute URL data provider         (<i>execute</i>).                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     URLAvailable                                             </td><td style="padding-left: 20px">         The URL data provider is ready, start loading data.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     Loaded                                                   </td><td style="padding-left: 20px">         The data has been loaded from the URL.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     RefreshingModelUpdaters                                  </td><td style="padding-left: 20px">         ModelUpdaters are currently running.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td rowspan="5" style="padding: 5px 0px 5px 5px"><div style="height: 6em; width: 0.5em; border-left: 1px solid black; border-top: 1px solid black; border-bottom: 1px solid black">&nbsp;</div></td><td style="border: 3px double black; text-align: center" colspan="2"> <b>[TransformedStatus](bcdui.core.status.TransformedStatus.md)</b></td><td style="padding-left: 20px">         All model updaters have run. (<b>ready</b>)                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     Saving                                                   </td><td style="padding-left: 20px">         The posting of data will start.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     [SavedStatus](bcdui.core.status.SavedStatus.md)        </td><td style="padding-left: 20px">         The data has been posted to the server.</td></tr></table></p> \
_Overrides_ bcdui.core.AbstractUpdatableModel#getReadyStatus\
**Returns** {bcdui.core.Status}: The ready state of the document.


### toString
toString() &#x21FE; {string}


Debugging function showing a text for this model. \
_Overrides_ bcdui.core.AbstractUpdatableModel#toString\
**Returns** {string}: A summary of the model.


### addStatusListener
addStatusListener(args) &#x21FE; {void}


Listen for any status to be reached. For use cases with the ready status (by far the most common), see onReady() and onceReady() convenience functions. \
_Overrides_ bcdui.core.AbstractUpdatableModel#addStatusListener

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
_Overrides_ bcdui.core.AbstractUpdatableModel#debugIsWaitingFor\
**Returns** {string}: Human readable message, which DataProviders, this DataProvider depends on, are not currently in ready state


### debugStatus
debugStatus() &#x21FE; {string}

 \
_Overrides_ bcdui.core.AbstractUpdatableModel#debugStatus\
**Returns** {string}: Human readable message about the current state state


### execute
execute(doesRefresh?) &#x21FE; {void}


<b>Instead of calling this method directly, better rely on a Renderer or on method onReady().</b><br/>Executes the process implemented by the concrete sub-classThis method is called by the Renderer when it is ready to render the modelIt is often asynchronous.Note, Renderer and sub-classes execute all input models recursively automatically.This means, usually you do not need to call this method directly. Note: it is asynchronous.Use method .onReady({executeIfNotReady: true, onSuccess: callback }) if no Renderer is involved. \
_Overrides_ bcdui.core.AbstractUpdatableModel#execute

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doesRefresh? | boolean | true | Set this parameter to "false" if this method should do<br/>nothing when the object is already in the ready status. The default is "true"<br/>meaning that the process is re-started when it is currently ready. |

**Returns** {void}


### fetchData
fetchData() &#x21FE; {Promise.\<bcdui.core.DataProvider>}


asynchronously fetch data for this data provider. \
_Overrides_ bcdui.core.AbstractUpdatableModel#fetchData\
**Returns** {Promise.\<bcdui.core.DataProvider>}: resolving once data has been loaded, first argument is this instance
#### Examples
````js
new bcdui.core.SimpleModel("data.xml").fetchData().then((dp)=>{ console.info(dp.getData()); })
````


### fire
fire() &#x21FE; {void}


This informs modification listeners, registered via [onChange(args)](bcdui.core.DataProvider#onChange.md), that a change set was completedand data is consistent again. \
_Overrides_ bcdui.core.AbstractUpdatableModel#fire\
**Returns** {void}
#### Examples
````js
// Use of data modification eventsvar model = new bcdui.core.StaticModel({ data: { value: 3 } });model.execute();model.onChange( function(m) {  console.log(m.getData().value);});model.getData().value ++;model.fire(); // console prints '4'
````


### getName
getName() &#x21FE; {string}


Getter for the name of the data provider. This name is for example usedto set parameters names of a [bcdui.core.TransformationChain](bcdui.core.TransformationChain.md). \
_Overrides_ bcdui.core.AbstractUpdatableModel#getName\
**Returns** {string}: The name of the data provider. This name should be uniquewithin the scope it is used and is usually not globally unique (as the id).


### getStatus
getStatus() &#x21FE; {bcdui.core.Status}


Getter for the status of this object. See [bcdui.core.status](bcdui.core.status.md) for possible return values. \
_Overrides_ bcdui.core.AbstractUpdatableModel#getStatus\
**Returns** {bcdui.core.Status}: The current status.


### hasFailed
hasFailed() &#x21FE; {boolean}


Tests if the object has reached a failure status. These status codes arereturned by the "getFailedStatus" method. \
_Overrides_ bcdui.core.AbstractUpdatableModel#hasFailed\
**Returns** {boolean}: True, if the object's process has failed.


### isClean
isClean() &#x21FE; {boolean}


True, if DataProvider is ready and there are no uncommitted write transactions,see [isReady()](bcdui.core.AbstractExecutable#isReady.md) and [fire()](bcdui.core.DataProvider#onChange.md). \
_Overrides_ bcdui.core.AbstractUpdatableModel#isClean\
**Returns** {boolean}: 


### isReady
isReady() &#x21FE; {boolean}


Tests if the current state is the readyStatus. This status is the samestatus as returned by "getReadyStatus". \
_Overrides_ bcdui.core.AbstractUpdatableModel#isReady\
**Returns** {boolean}: True, if the object is ready.


### onceReady
onceReady(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.core.AbstractUpdatableModel#onceReady

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
_Overrides_ bcdui.core.AbstractUpdatableModel#onChange

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
_Overrides_ bcdui.core.AbstractUpdatableModel#onReady

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
_Overrides_ bcdui.core.AbstractUpdatableModel#promptData\
**Returns** {void}


### query
query(xPath, fillParams?) &#x21FE; {DomNode}


Reads a single node from a given xPath \
_Overrides_ bcdui.core.AbstractUpdatableModel#query

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |

**Returns** {DomNode}: single node or null if query fails


### queryNodes
queryNodes(xPath, fillParams?) &#x21FE; {Array.\<DomNode>}


Get node list from a given xPath \
_Overrides_ bcdui.core.AbstractUpdatableModel#queryNodes

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |

**Returns** {Array.\<DomNode>}: node list or empty list if query fails


### read
read(xPath, fillParams?, defaultValue?) &#x21FE; {string}


Reads the string value from a given xPath (or optionally return default value). \
_Overrides_ bcdui.core.AbstractUpdatableModel#read

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to value (can include dot template placeholders which get filled with the given fillParams) |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| defaultValue? | string |  | default value in case xPath value does not exist |

**Returns** {string}: text value stored at xPath (or null if no text was found and no defaultValue supplied)


### remove
remove(xPath, fillParams?, fire?) &#x21FE; {void}


Deletes data at a given xPath from the model \
_Overrides_ bcdui.core.AbstractUpdatableModel#remove

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the value |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| fire? | boolean | false | if true a fire is triggered to notify data modification listener |

**Returns** {void}


### removeDataListener
removeDataListener(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.core.AbstractUpdatableModel#removeDataListener

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
_Overrides_ bcdui.core.AbstractUpdatableModel#removeStatusListener

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
_Overrides_ bcdui.core.AbstractUpdatableModel#sendData\
**Returns** {void}


### serialize
serialize() &#x21FE; {string}


Serialize dataprovider's data if available \
_Overrides_ bcdui.core.AbstractUpdatableModel#serialize\
**Returns** {string}: String containing the serialized data


### setStatus
setStatus(args) &#x21FE; {void}


Makes a transition from the current status to the new status if theyare not equal. After the status is changed it fires the status eventto the registered listeners.<p/>Usually this method will only be called by the library but you can use it to re-trigger an action. For available statuses and their effect, see the concrete class, \
_Overrides_ bcdui.core.AbstractUpdatableModel#setStatus

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | bcdui.core.Status |  |  |

**Returns** {void}


### tblDelete
tblDelete(args) &#x21FE; {number}


Delete Wrs rows. Either a single row (via rowId) or single/multiple ones via filterThe filter's property names refer to the columns ids. \
_Overrides_ bcdui.core.AbstractUpdatableModel#tblDelete

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | affected row(s) for example `{ country: 'DE', flag: true }` |
| args.rmi? | boolean | true | use wrs:M syntax when this is true, otherwise row columns element name is not touched |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |
| args.rowId? | string |  | id specifying row which should be deleted (or use filter) |

**Returns** {number}: count of removed rows
#### Examples
````js
// Update all values for 'AT', for example, even it has 3 sitesmyModel.tblDelete({ filter: {country: 'AT'} });
````


### tblInsert
tblInsert(args) &#x21FE; {string}


Inserts a new row in the Wrs. The property names match the Wrs header ids. \
_Overrides_ bcdui.core.AbstractUpdatableModel#tblInsert

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.values | Object |  | object holding cell values which should be inserted, e.g. { country: 'DE', flag: true } |
| args.rmi? | boolean | true | use wrs:I syntax when this is true, otherwise wrs:R is used, rmi=true also prefills default values |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |

**Returns** {string}: row id of newly inserted row
#### Examples
````js
// Wrs has columns with matching ids wrs:header/wrs:Columns/wrs:C/@id='author' etcmyModel.tblInsert({ values: {author: 'Descartes', title: "Principles of Philosophy", year: "1644"} });
````


### tblSelect
tblSelect(args) &#x21FE; {Array.\<Object>}


Selects an array of row values like `[{ctr: 'DE', site: 'HAM', flag: true}, {ctr: 'DE', site: 'BER', flag: false}];` for a given filter.The filter's and the returned property names match the column ids. \
_Overrides_ bcdui.core.AbstractUpdatableModel#tblSelect

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Array.\<Object>}: Array of objects holding the requested data
#### Examples
````js
// Select all rows with country 'DE'let ret = myModel.tblSelect({ filter: { ctr: 'DE' } });// ret equals [{ctr: 'DE', site: 'Hamburg', flag: true}, {ctr: 'DE', site: 'Berlin', flag: false}]
````
````js
// Select only books names and publishing years for author 'Hobbes'let ret = myModel.tblSelect({ filter: { author: 'Hobbes' }, columns: ['title', 'year'] });// ret equals [{title: 'De Cive', year: '1642'}, {title: 'Problemata Physica', year: '1662'}]
````


### tblSelectRow
tblSelectRow(args) &#x21FE; {Object}


Returns an object with the values of a single row, which is either identified by its `wrs:/@id` if given, or the first one matching the filter.The filter's and the returned property names match the column ids. \
_Overrides_ bcdui.core.AbstractUpdatableModel#tblSelectRow

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.rowId? | string |  | rowId of row which should be queried (or use filter) |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Object}: Array  of objects holding the requested data
#### Examples
````js
// Select only books names and publishing years for author 'Hobbes'let ret = myModel.tblSelectRow({ filter: { ctr: 'US', state: 'CA' }, columns: ['area', 'population'] });// ret equals {area: '423.970', population: '39.538.223'}}
````


### tblUpdate
tblUpdate(args) &#x21FE; {number}


Updates one or multiple Wrs rows with given data.Either a single row (via rowId) or single/multiple ones (via filter)The filter's and the given values' property names refer to the columns ids. \
_Overrides_ bcdui.core.AbstractUpdatableModel#tblUpdate

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.values | Object |  | columns and values to be updated. This sets 2 columns { country: 'DE', flag: true } |
| args.filter? | Object |  | affected row(s) for example `{ country: 'DE', flag: true }` |
| args.rmi? | boolean | true | use wrs:M syntax when this is true, otherwise row columns element name is not touched |
| args.fire? | boolean | true | lets the listeners know, that the update was finished |
| args.rowId? | string |  | id specifying row which should be updated (or use filter) |

**Returns** {number}: count of updated rows
#### Examples
````js
// Update sales information for a bookmyModel.tblUpdate({ values: {sold: 16, lastSold: new Date()},                    filter: {author: 'Descartes', title: "Principles of Philosophy"} });
````
````js
// Update all values for 'AT', for example, even it has 3 sitesmyModel.tblUpdate({ values: {supervisor: 'Karl Popper'}, filter: {country: 'AT'} });
````


### write
write(xPath, fillParams?, value?, fire?) &#x21FE; {DomNode}


Set a value to on a certain xPath and create the xPath where necessary. This combines Element.evaluate() for a single node with creating the path where necessary. It will prefer extending an existing start-part over creating a second one.After the operation the xPath (with the optional value) is guaranteed to exist (pre-existing or created or extended) and the addressed node is returned. \
_Overrides_ bcdui.core.AbstractUpdatableModel#write

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the node which is to be modified. Only the first match will be modified.<br/>   If it does not exist, it will be created.<br/>   For example, if you provide `/n:Root/n:MyElem/@attr2` and there is already `/n:Root/n:MyElem/@attr1`, then `/n:Root/n:MyElem` will be "re-used" and get an additional attribute attr2.<br/>   Even complex expressions are allowed, like predicates `/n:Root/n:MyElem[@attr1='attr1Value']/n:SubElem`.<br/>   Ambiguous xPaths are not allowed, for example, using `//` or `/n:Root/n:MyElem/[@attr1 or @attr2]/n:SubElem`, and will throw an error.<br/>   The method is Wrs aware, for Wrs it turns wrs:R into wrs:M etc., see Wrs format.<br/>   Using {{=it[0]}} templates makes sure values are escaped correctly. |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions<br/>    Example: `bcdui.wkModels.guiStatus.write("/guiStatus:Status/guiStatus:ClientSettings/guiStatus:Test[@caption='{{=it[0]}}' and @caption2='{{=it[1]}}']", ["china's republic", "drag\"n drop"])` |
| value? | string |  | Optional value which should be written, for example to `/n:Root/n:MyElem/@attr` or with `/n:Root/n:MyElem` as the element's text content.<br/>   If not provided, the xPath contains all values and either there is a full match or it will be created. |
| fire? | boolean | false | If true a fire is triggered to inform data modification listeners |

**Returns** {DomNode}: The xPath's node or null if dataProvider isn't ready
#### Examples
````js
// Set column 2 for 'UK' to 'Hello UK'.// For Wrs, it also turns the row into a proper `wrs:M`, ready to be saved.// If there is no row for 'UK' in the first column, it will create it (wrs:I), and then set the second column.myModel.write("/wrs:Wrs/wrs:Data/wrs:*[wrs:C[1]='{{=it[0]}}']/wrs:C[2]", ['UK'], "Hello UK")
````