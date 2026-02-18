# Class TransformationChain
<span hidden class='htmlPackage'>bcdui.core</span>
A class representing one or more transformations applied on models with parameters. Transformators can be js functions, XSLTs or doTjs templates.Use [Renderer](bcdui.core.Renderer.md) or [ModelWrapper](bcdui.core.ModelWrapper.md) as concrete sub classes

_Extends_ [bcdui.core.DataProvider](bcdui.core.DataProvider.md)
## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

The constructor for the TransformationChain class.
## Methods


### addDataProvider
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(newDataProvider, newName?) &#x21FE; {bcdui.core.DataProvider}</span>

Adds a new data provider to the transformation chain. If there is already a data providerwith the given name it is replaced.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| newDataProvider | Object |  | the new dataprovider which should be added |
| newName? | string |  | an optional new name for the provider. if given an alias will be created |

**Returns** {bcdui.core.DataProvider}: The old data provider registered under the name ornull if there has not been any.


### getData
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {*}</span>

A getter for the document produced by the transformation chain. \
_Overrides_ bcdui.core.DataProvider#getData\
**Returns** {*}: The output of the last transfomration in the chain if it doesnot produce HTML (output="html").


### getDataProviderByName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(name) &#x21FE; {bcdui.core.DataProvider}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| name | string |  |  |

**Returns** {bcdui.core.DataProvider}: returns the parameter of the given name


### getFailedStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {Array.\<bcdui.core.Status>}</span>

Getter for the list of error statuses of this class. This implementation returns anempty list. \
_Overrides_ bcdui.core.DataProvider#getFailedStatus\
**Returns** {Array.\<bcdui.core.Status>}: Returns all statuses indicating a failure


### getPrimaryModel
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.DataProvider}</span>

Getter for the primary model of the chain. The first transformation ofthe chain takes a document as input. This document comes from theprimary model.\
**Returns** {bcdui.core.DataProvider}: The model the first transformation inthe chain is running on.


### getReadyStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.Status}</span>

The ready status for the transformation chain is reached as soon as alltransformations are finished.<p> The status transitions of the class are as follows:          </p>                                                              <p style="padding-left: 10px"><table><tr><td style="border: 3px double black; text-align: center" colspan="2">     Initialized                                              </td><td style="padding-left: 20px">         All variables have been initialized.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     Loading                                                  </td><td style="padding-left: 20px">         Start loading chain document.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     ChainLoaded                                              </td><td style="padding-left: 20px">         The chain document has been loaded. Start         loading chain stylesheets.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2"> <i> WaitingForParameters </i>                                </td><td style="padding-left: 20px">         Chain stylesheets loaded. Waiting for         parameter data providers (<i>execute</i>).                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     Transforming                                             </td><td style="padding-left: 20px">         The chain stylesheets are running.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 3px double black; text-align: center" colspan="2"> <b> Transformed </b>                                         </td><td style="padding-left: 20px">         The output has been generated. (<b>ready</b>)</td></tr></table></p> \
_Overrides_ bcdui.core.DataProvider#getReadyStatus\
**Returns** {bcdui.core.Status}: The transformed status.


### reloadStylesheets
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

Start the loading process of the stylesheets and executes the transformationsagain.\
**Returns** {void}


### setPrimaryModel
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(primaryModel) &#x21FE; {void}</span>

Adds a new data provider to the list which becomes the new primary modelof the transformation chain.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| primaryModel | bcdui.core.DataProvider |  | the new primary model of the transformation chain. |

**Returns** {void}


### toString
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Useful for debugging. \
_Overrides_ bcdui.core.DataProvider#toString\
**Returns** {string}: String representation of the chain.


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


### getClassName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Get className \
_Inherited from_ bcdui.core.AbstractExecutable\
**Returns** {string}: className


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


### query
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?) &#x21FE; {DomNode}</span>

Reads a single node from a given xPath \
_Overrides_ bcdui.core.DataProvider#query

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |

**Returns** {DomNode}: single node or null if query fails


### queryNodes
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?) &#x21FE; {Array.\<DomNode>}</span>

Get node list from a given xPath \
_Overrides_ bcdui.core.DataProvider#queryNodes

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |

**Returns** {Array.\<DomNode>}: node list or empty list if query fails


### read
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?, defaultValue?) &#x21FE; {string}</span>

Reads the string value from a given xPath (or optionally return default value). \
_Overrides_ bcdui.core.DataProvider#read

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to value (can include dot template placeholders which get filled with the given fillParams) |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| defaultValue? | string |  | default value in case xPath value does not exist |

**Returns** {string}: text value stored at xPath (or null if no text was found and no defaultValue supplied)


### remove
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?, fire?) &#x21FE; {void}</span>

Deletes data at a given xPath from the model \
_Overrides_ bcdui.core.DataProvider#remove

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the value |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| fire? | boolean | false | if true a fire is triggered to notify data modification listener |

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


### write
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?, value?, fire?) &#x21FE; {DomNode}</span>

Set a value to on a certain xPath and create the xPath where necessary. This combines Element.evaluate() for a single node with creating the path where necessary. It will prefer extending an existing start-part over creating a second one.After the operation the xPath (with the optional value) is guaranteed to exist (pre-existing or created or extended) and the addressed node is returned. \
_Overrides_ bcdui.core.DataProvider#write

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the node which is set to the value or plain xPath to be created if not there.<br/>   It tries to reuse all matching parts that are already there. If you provide for example "/n:Root/n:MyElem/@attr2" and there is already "/n:Root/n:MyElem/@attr1", then "/n:Root/n:MyElem" will be "re-used" and get an additional attribute attr2.<br/>   Many expressions are allowed, for example "/n:Root/n:MyElem[@attr1='attr1Value']/n:SubElem" is also ok.<br/>   By nature, some xPath expressions are not allowed, for example using '//' or "/n:Root/n:MyElem/[@attr1 or @attr2]/n:SubElem" is obviously not unambiguous enough and will throw an error.<br/>   This method is Wrs aware, use for example '/wrs:Wrs/wrs:Data/wrs:*[2]/wrs:C[3]' as xPath and it will turn wrs:R[wrs:C] into wrs:M[wrs:C and wrs:O], see Wrs format.<br/>   (can include dot template placeholders which get filled with the given fillParams) |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions<br/>    Example: bcdui.wkModels.guiStatus.write("/guiStatus:Status/guiStatus:ClientSettings/guiStatus:Test[@caption='{{=it[0]}}' and @caption2='{{=it[1]}}']", ["china's republic", "drag\"n drop"]) |
| value? | string |  | Optional value which should be written, for example to "/n:Root/n:MyElem/@attr" or with "/n:Root/n:MyElem" as the element's text content.<br/>   If not provided, the xPath contains all values like in "/n:Root/n:MyElem[@attr='a' and @attr1='b']" or needs none like "/n:Root/n:MyElem" |
| fire? | boolean | false | If true a fire is triggered to inform data modification listeners |

**Returns** {DomNode}: The xPath's node or null if dataProvider isn't ready