# Class DataProviderWithXPath
package bcdui.core

Reading a single data item from an XPath on getData() as string.See [DataProviderWithXPathNodes](bcdui.core.DataProviderWithXPathNodes.md) for reading a full XML node-set

_Extends_ [bcdui.core.DataProviderHolder](bcdui.core.DataProviderHolder.md), can act as a DataProvider
## Constructor
````js
// Usage
var myDPWXP = new bcdui.core.DataProviderWithXPath({ xPath });
  ````


---


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  |  |
| args.xPath | modelXPath |  | Data source like <code>"$modelId/guiStatus:MyNode/@myAttr"</code> |
| args.name? | string |  | Logical name of this DataProvider when used as a parameter in a transformation |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### getClassName
getClassName() &#x21FE; {string}


Get className \
_Overrides_ bcdui.core.DataProviderHolder#getClassName\
**Returns** {string}: className


### getData
getData() &#x21FE; {*}


Access to the data of this DataProvider for read and modification access \
_Overrides_ bcdui.core.DataProviderHolder#getData\
**Returns** {*}: The data provided by the specific sub-class.


### getXPath
getXPath() &#x21FE; {string}

\
**Returns** {string}: 


### addStatusListener
addStatusListener(args) &#x21FE; {void}


Listen for any status to be reached. For use cases with the ready status (by far the most common), see onReady() and onceReady() convenience functions. \
_Overrides_ bcdui.core.DataProviderHolder#addStatusListener

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
_Overrides_ bcdui.core.DataProviderHolder#debugIsWaitingFor\
**Returns** {string}: Human readable message, which DataProviders, this DataProvider depends on, are not currently in ready state


### debugStatus
debugStatus() &#x21FE; {string}

 \
_Overrides_ bcdui.core.DataProviderHolder#debugStatus\
**Returns** {string}: Human readable message about the current state state


### execute
execute(doesRefresh?) &#x21FE; {void}


<b>Instead of calling this method directly, better rely on a Renderer or on method onReady().</b><br/>Executes the process implemented by the concrete sub-classThis method is called by the Renderer when it is ready to render the modelIt is often asynchronous.Note, Renderer and sub-classes execute all input models recursively automatically.This means, usually you do not need to call this method directly. Note: it is asynchronous.Use method .onReady({executeIfNotReady: true, onSuccess: callback }) if no Renderer is involved. \
_Overrides_ bcdui.core.DataProviderHolder#execute

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doesRefresh? | boolean | true | Set this parameter to "false" if this method should do<br/>nothing when the object is already in the ready status. The default is "true"<br/>meaning that the process is re-started when it is currently ready. |

**Returns** {void}


### fetchData
fetchData() &#x21FE; {Promise.\<bcdui.core.DataProvider>}


asynchronously fetch data for this data provider. \
_Overrides_ bcdui.core.DataProviderHolder#fetchData\
**Returns** {Promise.\<bcdui.core.DataProvider>}: resolving once data has been loaded, first argument is this instance
#### Examples
````js
new bcdui.core.SimpleModel("data.xml").fetchData().then((dp)=>{ console.info(dp.getData()); })
````


### fire
fire() &#x21FE; {void}


Informs listeners that data was modified \
_Overrides_ bcdui.core.DataProviderHolder#fire\
**Returns** {void}


### getFailedStatus
getFailedStatus() &#x21FE; {Array.\<bcdui.core.Status>}


Getter for the list of error statuses of this class. This implementation returns anempty list. \
_Overrides_ bcdui.core.DataProviderHolder#getFailedStatus\
**Returns** {Array.\<bcdui.core.Status>}: The status objects corresponding to failures in the object'sprocess.


### getName
getName() &#x21FE; {string}


Getter for the name of the data provider. This name is for example usedto set parameters names of a [bcdui.core.TransformationChain](bcdui.core.TransformationChain.md). \
_Overrides_ bcdui.core.DataProviderHolder#getName\
**Returns** {string}: The name of the data provider. This name should be uniquewithin the scope it is used and is usually not globally unique (as the id).


### getReadyStatus
getReadyStatus() &#x21FE; {bcdui.core.Status}


Getter for the ready status of the instance. This status is a final statedefined by each sub-class which is reached when the process has finishednormally. \
_Overrides_ bcdui.core.DataProviderHolder#getReadyStatus\
**Returns** {bcdui.core.Status}: Returns the final state indicating the the value is available.


### getStatus
getStatus() &#x21FE; {bcdui.core.Status}


Getter for the status of this object. See [bcdui.core.status](bcdui.core.status.md) for possible return values. \
_Overrides_ bcdui.core.DataProviderHolder#getStatus\
**Returns** {bcdui.core.Status}: The current status.


### hasFailed
hasFailed() &#x21FE; {boolean}


Tests if the object has reached a failure status. These status codes arereturned by the "getFailedStatus" method. \
_Overrides_ bcdui.core.DataProviderHolder#hasFailed\
**Returns** {boolean}: True, if the object's process has failed.


### isClean
isClean() &#x21FE; {boolean}


True, if DataProvider is ready and there are no uncommitted write transactions,see [isReady()](bcdui.core.AbstractExecutable#isReady.md) and [fire()](bcdui.core.DataProvider#onChange.md). \
_Overrides_ bcdui.core.DataProviderHolder#isClean\
**Returns** {boolean}: 


### isReady
isReady() &#x21FE; {boolean}


Tests if the current state is the readyStatus. This status is the samestatus as returned by "getReadyStatus". \
_Overrides_ bcdui.core.DataProviderHolder#isReady\
**Returns** {boolean}: True, if the object is ready.


### onceReady
onceReady(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.core.DataProviderHolder#onceReady

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
_Overrides_ bcdui.core.DataProviderHolder#onChange

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
_Overrides_ bcdui.core.DataProviderHolder#onReady

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
_Overrides_ bcdui.core.DataProviderHolder#promptData\
**Returns** {void}


### query
query(xPath) &#x21FE; {DomNode}


Reads a single node from a given xPath \
_Overrides_ bcdui.core.DataProviderHolder#query

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |

**Returns** {DomNode}: single node or null if query fails or source isn't set yet


### queryNodes
queryNodes(xPath) &#x21FE; {Array.\<DomNode>}


Get node list from a given xPath \
_Overrides_ bcdui.core.DataProviderHolder#queryNodes

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |

**Returns** {Array.\<DomNode>}: node list or empty list if query fails or source isn't set yet


### read
read(xPath, fillParams?, defaultValue?) &#x21FE; {string}


Reads value from a given xPath (or optionally return default value) \
_Overrides_ bcdui.core.DataProviderHolder#read

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to value |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| defaultValue? | string |  | default value in case xPath value does not exist |

**Returns** {string}: text value stored at xPath (or null if nothing found and no defaultValue supplied or when source isn't set yet)


### remove
remove(xPath, fillParams?, fire?) &#x21FE; {void}


removes given xPath \
_Overrides_ bcdui.core.DataProviderHolder#remove

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to value |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| fire? | boolean | false | if true a fire is triggered to notify data modification listener |

**Returns** {void}


### removeDataListener
removeDataListener(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.core.DataProviderHolder#removeDataListener

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
_Overrides_ bcdui.core.DataProviderHolder#removeStatusListener

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
_Overrides_ bcdui.core.DataProviderHolder#sendData\
**Returns** {void}


### serialize
serialize() &#x21FE; {string}


Serialize dataprovider's data if available \
_Overrides_ bcdui.core.DataProviderHolder#serialize\
**Returns** {string}: String containing the serialized data


### setSource
setSource() &#x21FE; {void}


Set the underlying source delayed instead of via the constructor.The DataProviderHolder does only become ready after the source was set and is or becomes ready. \
_Overrides_ bcdui.core.DataProviderHolder#setSource\
**Returns** {void}


### setStatus
setStatus(args) &#x21FE; {void}


Makes a transition from the current status to the new status if theyare not equal. After the status is changed it fires the status eventto the registered listeners.<p/>Usually this method will only be called by the library but you can use it to re-trigger an action. For available statuses and their effect, see the concrete class, \
_Overrides_ bcdui.core.DataProviderHolder#setStatus

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | bcdui.core.Status |  |  |

**Returns** {void}


### tblDelete
tblDelete(args) &#x21FE; {number}


Delete Wrs rows. Either a single row (via rowId) or single/multiple ones via filterThe filter's property names refer to the columns ids. \
_Overrides_ bcdui.core.DataProviderHolder#tblDelete

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


### tblGetColumnMetadata
tblGetColumnMetadata(args?) &#x21FE; {Array.\<Object>}


Returns an array of columns of a Wrs with their metadata attributes like id, caption, type-name etc.Includes id, caption, pos, type-name, display-size, scale, isKey, nullable, references etc.For example: `[{id: 'ctr', caption: 'Country', pos: '1'}, {id: 'state', caption: 'State', pos: '2', references: [ {value: '#e00', caption: 'Red'}, {value: '#0e0', caption: 'Green'} ]}]` \
_Overrides_ bcdui.core.DataProviderHolder#tblGetColumnMetadata

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args? | object |  |  |
| args.columns? | Array.\<string> |  | Limit to these column ids |
| args.doSort? | boolean | false | Sort the columns according to the given columns list. If not given, the columns are returned in the order they are defined in the WRS. |

**Returns** {Array.\<Object>}: column metadata


### tblGetRowIds
tblGetRowIds(args) &#x21FE; {Array.\<string>}


Returns an array of row ids (wrs:R/@id) of the rows matching the filter.If no filter is given, all row ids are returned.The order of ids matches the order of the rows in the Wrs. \
_Overrides_ bcdui.core.DataProviderHolder#tblGetRowIds

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  |  |
| args.filter? | object |  | object holding requested filter conditions, e.g. `{ country: 'DE', flag: true }` |

**Returns** {Array.\<string>}: row ids


### tblInsert
tblInsert(args) &#x21FE; {string}


Inserts a new row in the Wrs. The property names match the Wrs header ids. \
_Overrides_ bcdui.core.DataProviderHolder#tblInsert

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
_Overrides_ bcdui.core.DataProviderHolder#tblSelect

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
// Select all book titles and publishing years for author 'Hobbes'let ret = myModel.tblSelect({ filter: { author: 'Hobbes' }, columns: ['title', 'year'] });// ret equals [{title: 'De Cive', year: '1642'}, {title: 'Problemata Physica', year: '1662'}]
````


### tblSelectRow
tblSelectRow(args) &#x21FE; {Object}


Get the values of a single row, identified either by its `wrs:/@id`, or the first one matching the filter.The filter's and the returned property names match the column ids. \
_Overrides_ bcdui.core.DataProviderHolder#tblSelectRow

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.rowId? | string |  | rowId of row which should be queried (or use filter) |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Object}: Array  of objects holding the requested data
#### Examples
````js
// Select area and population for Californialet ret = myModel.tblSelectRow({ filter: { ctr: 'US', state: 'CA' }, columns: ['area', 'population'] });// ret equals {area: '423.970', population: '39.538.223'}}
````


### tblUpdate
tblUpdate(args) &#x21FE; {number}


Updates one or multiple Wrs rows with given data.Either a single row (via rowId) or single/multiple ones (via filter)The filter's and the given values' property names refer to the columns ids. \
_Overrides_ bcdui.core.DataProviderHolder#tblUpdate

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


### tblValidateRowChange
tblValidateRowChange(args) &#x21FE; {Array.\<{colId: string, errorCode: string}>}


Validates a set of column values against the WRS header constraints of this DataProvider.The check is purely client-side (no server round-trip): type, scale, display-size, nullable,embedded header References, and key uniqueness within the loaded data are all covered.Only columns present in args.values are validated.For a planned tblUpdate, provide rowId or filter to exclude the changed row from uniqueness check.For a planned tblInsert, rowId is not needed as the uniqueness check is performed against all current loaded data. \
_Overrides_ bcdui.core.DataProviderHolder#tblValidateRowChange

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.values | Object |  | { colId: value } map of values to validate |
| args.rowId? | string |  | only needed for key uniqueness: identifies the row being validated so it is excluded from the duplicate check. If not given values is treated like a new row to be inserted |
| args.filter? | Object |  | alternative to rowId, only needed for key uniqueness exclusion; first matching row is used |

**Returns** {Array.\<{colId: string, errorCode: string}>}: list of validation errors
#### Examples
````js
const errors = myModel.tblValidateRowChange({ rowId: 'R1', values: { amount: 'abc', color: '#xyz' } });// errors: [{ colId: 'amount', errorCode: 'bcd_ValidTypeName_NUMERIC' },//          { colId: 'color',  errorCode: 'bcd_ValidReferences' }]
````


### toString
toString() &#x21FE; {string}


Useful for debugging. \
_Overrides_ bcdui.core.DataProviderHolder#toString\
**Returns** {string}: Human readable summary of this class.


### write
write(xPath, fillParams?, value?, fire?) &#x21FE; {DomNode}


Set a value to on a certain xPath and create the xPath where necessary. This combines Element.evaluate() for a single node with creating the path where necessary. It will prefer extending an existing start-part over creating a second one.After the operation the xPath (with the optional value) is guaranteed to exist (pre-existing or created or extended) and the addressed node is returned. \
_Overrides_ bcdui.core.DataProviderHolder#write

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the node which is set to the value value or plain xPath to be created if not there. <br/>   It tries to reuse all matching parts that are already there. If you provide for example "/n:Root/n:MyElem/@attr1" and there is already "/n:Root/n:MyElem@attr1", then ""/n:Root/n:MyElem" will be "re-used" and get a second attribute attr1.<br/>   Many expressions are allowed, for example "/n:Root/n:MyElem[@attr1='attr1Value']/n:SubElem" is also ok.<br/>   By nature, some xPath expressions are not allowed, for example using '//' or "/n:Root/n:MyElem/[@attr1 or @attr2]/n:SubElem" is obviously not unambiguous enough and will throw an error.<br/>   This method is Wrs aware, use for example '/wrs:Wrs/wrs:Data/wrs:*[2]/wrs:C[3]' as xPath and it will turn wrs:R[wrs:C] into wrs:M[wrs:C and wrs:O], see Wrs format. |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| value? | string |  | Optional value which should be written, for example to "/n:Root/n:MyElem/@attr" or with "/n:Root/n:MyElem" as the element's text content. <br/>   If not provided, the xPath contains all values like in "/n:Root/n:MyElem[@attr='a' and @attr1='b']" or needs none like "/n:Root/n:MyElem" |
| fire? | boolean | false | If true a fire is triggered to inform data modification listeners |

**Returns** {DomNode}: The xPath's node (can be null if source isn't set yet or dataProvider isn't ready)