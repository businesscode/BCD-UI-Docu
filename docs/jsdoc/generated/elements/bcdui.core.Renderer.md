# Class Renderer
package bcdui.core

A concrete subclass of [TransformationChain](bcdui.core.TransformationChain.md), inserting its output into targetHtml.Renderers execute() automatically on creation, and execute and wait for their dependencies (i.e. parameters) automatically.Logic of Renderers can be implemented as JavaScript functions or XSLTs

_Extends_ [bcdui.core.TransformationChain](bcdui.core.TransformationChain.md), is a Renderer, can act as a DataProvider
## Constructor
````js
// Usage
var myRnd = new bcdui.core.Renderer({ inputModel: myModel });
  ````


---


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | An argument object with the following properties: |
| args.inputModel | bcdui.core.DataProvider |  | The model with the data to be transformed in html |
| args.chain? | chainDef | "/bcdui/xslt/renderer/htmlBuilder.xslt" | The definition of the transformation chain<br/><ul><br/>  <li>Default is a WRS-to-table renderer, capable of row and column dimensions and aware of all Wrs format specifications like scale and @caption</li><br/>  <li>But it can be a single string with the URL of the transformation XSLT or doTjs template</li><br/>  <li>or a JS transformator function</li><br/>  <li>or an array with a mixture of URLs and JS transformators</li><br/>  <li>or a DataProvider with an XML document following xsd http://www.businesscode.de/schema/bcdui/chain-1.0.0</li><br/></ul><br/>Make sure the last transformation outputs html, for example in case of XSLT set the last stylesheet to &lt;xsl:output method="html" |
| args.targetHtml? | targetHtmlRef |  | A reference to the HTML DOM Element where to put the output |
| args.parameters? | Object |  | An object, where each property holds a DataProvider as a transformation parameter<br/>Once this Renderer is [executed](bcdui.core.AbstractExecutable#execute.md), it will check each parameter and execute it if it is not [.isReady()](bcdui.core.AbstractExecutable.md) before executing itself. |
| args.id? | string |  | Globally unique id for use in declarative contexts |
| args.suppressInitialRendering? | boolean | false | If true, the renderer does not initially auto execute but waits for an explicit execute |
| args.postHtmlAttachProcess? | function |  | synchronous js function called after attaching html fragment to dom (either partitially or fully). Note: custom elements will not be applied, wait for isRead() if you need that |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### execute
execute(args) &#x21FE; {void}


<b>Instead of calling this method directly, better rely on a Renderer or on method onReady().</b><br/>Executes the process implemented by the concrete sub-classThis method is called by the Renderer when it is ready to render the modelIt is often asynchronous.Note, Renderer and sub-classes execute all input models recursively automatically.This means, usually you do not need to call this method directly. Note: it is asynchronous.Use method .onReady({executeIfNotReady: true, onSuccess: callback }) if no Renderer is involved. \
_Overrides_ bcdui.core.TransformationChain#execute

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | (boolean\|Type_RendererExecute_Args) |  | either true for forced or parameter map |

Type **Type_RendererExecute_Args**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| fn | function |  | A function called once when the object becomes ready again. Called immediately if we are already ready && shouldRefresh==false |
| partialHtmlTargets | string |  | Space separated list of html element ids. If given, only these elements within targetHmtlElement of the render<br/>        are touched in the DOM tree, plus the chain gets the parameter bcdPartialHtmlTargets set to this value. Valid for this one call only, cleared after. |
| shouldRefresh | boolean |  | "false" if this method should do nothing when the object is already in the ready status. Default is "true"false". |

**Returns** {void}


### getTargetHtml
getTargetHtml() &#x21FE; {void}


Return the target html element where the renderer places its output\
**Returns** {void}


### setTargetHtml
setTargetHtml(targetHtmlElement) &#x21FE; {void}


Sets the target html element where the renderer places its output

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| targetHtmlElement | HtmlElement |  | target html element |

**Returns** {void}


### addDataProvider
addDataProvider(newDataProvider, newName?) &#x21FE; {bcdui.core.DataProvider}


Adds a new data provider to the transformation chain. If there is already a data providerwith the given name it is replaced. \
_Overrides_ bcdui.core.TransformationChain#addDataProvider

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| newDataProvider | Object |  | the new dataprovider which should be added |
| newName? | string |  | an optional new name for the provider. if given an alias will be created |

**Returns** {bcdui.core.DataProvider}: The old data provider registered under the name ornull if there has not been any.


### addStatusListener
addStatusListener(args) &#x21FE; {void}


Listen for any status to be reached. For use cases with the ready status (by far the most common), see onReady() and onceReady() convenience functions. \
_Overrides_ bcdui.core.TransformationChain#addStatusListener

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
_Overrides_ bcdui.core.TransformationChain#debugIsWaitingFor\
**Returns** {string}: Human readable message, which DataProviders, this DataProvider depends on, are not currently in ready state


### debugStatus
debugStatus() &#x21FE; {string}

 \
_Overrides_ bcdui.core.TransformationChain#debugStatus\
**Returns** {string}: Human readable message about the current state state


### fetchData
fetchData() &#x21FE; {Promise.\<bcdui.core.DataProvider>}


asynchronously fetch data for this data provider. \
_Overrides_ bcdui.core.TransformationChain#fetchData\
**Returns** {Promise.\<bcdui.core.DataProvider>}: resolving once data has been loaded, first argument is this instance
#### Examples
````js
new bcdui.core.SimpleModel("data.xml").fetchData().then((dp)=>{ console.info(dp.getData()); })
````


### fire
fire() &#x21FE; {void}


This informs modification listeners, registered via [onChange(args)](bcdui.core.DataProvider#onChange.md), that a change set was completedand data is consistent again. \
_Overrides_ bcdui.core.TransformationChain#fire\
**Returns** {void}
#### Examples
````js
// Use of data modification eventsvar model = new bcdui.core.StaticModel({ data: { value: 3 } });model.execute();model.onChange( function(m) {  console.log(m.getData().value);});model.getData().value ++;model.fire(); // console prints '4'
````


### getClassName
getClassName() &#x21FE; {string}


Get className \
_Inherited from_ bcdui.core.AbstractExecutable\
**Returns** {string}: className


### getData
getData() &#x21FE; {*}


A getter for the document produced by the transformation chain. \
_Overrides_ bcdui.core.TransformationChain#getData\
**Returns** {*}: The output of the last transfomration in the chain if it doesnot produce HTML (output="html").


### getDataProviderByName
getDataProviderByName(name) &#x21FE; {bcdui.core.DataProvider}

 \
_Overrides_ bcdui.core.TransformationChain#getDataProviderByName

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| name | string |  |  |

**Returns** {bcdui.core.DataProvider}: returns the parameter of the given name


### getFailedStatus
getFailedStatus() &#x21FE; {Array.\<bcdui.core.Status>}


Getter for the list of error statuses of this class. This implementation returns anempty list. \
_Overrides_ bcdui.core.TransformationChain#getFailedStatus\
**Returns** {Array.\<bcdui.core.Status>}: Returns all statuses indicating a failure


### getName
getName() &#x21FE; {string}


Getter for the name of the data provider. This name is for example usedto set parameters names of a [bcdui.core.TransformationChain](bcdui.core.TransformationChain.md). \
_Overrides_ bcdui.core.TransformationChain#getName\
**Returns** {string}: The name of the data provider. This name should be uniquewithin the scope it is used and is usually not globally unique (as the id).


### getPrimaryModel
getPrimaryModel() &#x21FE; {bcdui.core.DataProvider}


Getter for the primary model of the chain. The first transformation ofthe chain takes a document as input. This document comes from theprimary model. \
_Overrides_ bcdui.core.TransformationChain#getPrimaryModel\
**Returns** {bcdui.core.DataProvider}: The model the first transformation inthe chain is running on.


### getReadyStatus
getReadyStatus() &#x21FE; {bcdui.core.Status}


The ready status for the transformation chain is reached as soon as alltransformations are finished.<p> The status transitions of the class are as follows:          </p>                                                              <p style="padding-left: 10px"><table><tr><td style="border: 3px double black; text-align: center" colspan="2">     Initialized                                              </td><td style="padding-left: 20px">         All variables have been initialized.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     Loading                                                  </td><td style="padding-left: 20px">         Start loading chain document.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     ChainLoaded                                              </td><td style="padding-left: 20px">         The chain document has been loaded. Start         loading chain stylesheets.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2"> <i> WaitingForParameters </i>                                </td><td style="padding-left: 20px">         Chain stylesheets loaded. Waiting for         parameter data providers (<i>execute</i>).                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     Transforming                                             </td><td style="padding-left: 20px">         The chain stylesheets are running.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 3px double black; text-align: center" colspan="2"> <b> Transformed </b>                                         </td><td style="padding-left: 20px">         The output has been generated. (<b>ready</b>)</td></tr></table></p> \
_Overrides_ bcdui.core.TransformationChain#getReadyStatus\
**Returns** {bcdui.core.Status}: The transformed status.


### getStatus
getStatus() &#x21FE; {bcdui.core.Status}


Getter for the status of this object. See [bcdui.core.status](bcdui.core.status.md) for possible return values. \
_Overrides_ bcdui.core.TransformationChain#getStatus\
**Returns** {bcdui.core.Status}: The current status.


### hasFailed
hasFailed() &#x21FE; {boolean}


Tests if the object has reached a failure status. These status codes arereturned by the "getFailedStatus" method. \
_Overrides_ bcdui.core.TransformationChain#hasFailed\
**Returns** {boolean}: True, if the object's process has failed.


### isClean
isClean() &#x21FE; {boolean}


True, if DataProvider is ready and there are no uncommitted write transactions,see [isReady()](bcdui.core.AbstractExecutable#isReady.md) and [fire()](bcdui.core.DataProvider#onChange.md). \
_Overrides_ bcdui.core.TransformationChain#isClean\
**Returns** {boolean}: 


### isReady
isReady() &#x21FE; {boolean}


Tests if the current state is the readyStatus. This status is the samestatus as returned by "getReadyStatus". \
_Overrides_ bcdui.core.TransformationChain#isReady\
**Returns** {boolean}: True, if the object is ready.


### onceReady
onceReady(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.core.TransformationChain#onceReady

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
_Overrides_ bcdui.core.TransformationChain#onChange

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
_Overrides_ bcdui.core.TransformationChain#onReady

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
_Overrides_ bcdui.core.TransformationChain#promptData\
**Returns** {void}


### query
query(xPath, fillParams?) &#x21FE; {DomNode}


Reads a single node from a given xPath \
_Overrides_ bcdui.core.TransformationChain#query

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |

**Returns** {DomNode}: single node or null if query fails


### queryNodes
queryNodes(xPath, fillParams?) &#x21FE; {Array.\<DomNode>}


Get node list from a given xPath \
_Overrides_ bcdui.core.TransformationChain#queryNodes

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |

**Returns** {Array.\<DomNode>}: node list or empty list if query fails


### read
read(xPath, fillParams?, defaultValue?) &#x21FE; {string}


Reads the string value from a given xPath (or optionally return default value). \
_Overrides_ bcdui.core.TransformationChain#read

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to value (can include dot template placeholders which get filled with the given fillParams) |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| defaultValue? | string |  | default value in case xPath value does not exist |

**Returns** {string}: text value stored at xPath (or null if no text was found and no defaultValue supplied)


### reloadStylesheets
reloadStylesheets() &#x21FE; {void}


Start the loading process of the stylesheets and executes the transformationsagain. \
_Overrides_ bcdui.core.TransformationChain#reloadStylesheets\
**Returns** {void}


### remove
remove(xPath, fillParams?, fire?) &#x21FE; {void}


Deletes data at a given xPath from the model \
_Overrides_ bcdui.core.TransformationChain#remove

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the value |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| fire? | boolean | false | if true a fire is triggered to notify data modification listener |

**Returns** {void}


### removeDataListener
removeDataListener(listenerObject) &#x21FE; {void}

 \
_Overrides_ bcdui.core.TransformationChain#removeDataListener

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
_Overrides_ bcdui.core.TransformationChain#removeStatusListener

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
_Overrides_ bcdui.core.TransformationChain#sendData\
**Returns** {void}


### serialize
serialize() &#x21FE; {string}


Serialize dataprovider's data if available \
_Overrides_ bcdui.core.TransformationChain#serialize\
**Returns** {string}: String containing the serialized data


### setPrimaryModel
setPrimaryModel(primaryModel) &#x21FE; {void}


Adds a new data provider to the list which becomes the new primary modelof the transformation chain. \
_Overrides_ bcdui.core.TransformationChain#setPrimaryModel

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| primaryModel | bcdui.core.DataProvider |  | the new primary model of the transformation chain. |

**Returns** {void}


### setStatus
setStatus(args) &#x21FE; {void}


Makes a transition from the current status to the new status if theyare not equal. After the status is changed it fires the status eventto the registered listeners.<p/>Usually this method will only be called by the library but you can use it to re-trigger an action. For available statuses and their effect, see the concrete class, \
_Overrides_ bcdui.core.TransformationChain#setStatus

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | bcdui.core.Status |  |  |

**Returns** {void}


### tblDelete
tblDelete(args) &#x21FE; {number}


updates wrs rows with given data. Either a single row (via rowId) or single/multiple ones (via filter) \
_Overrides_ bcdui.core.TransformationChain#tblDelete

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
_Overrides_ bcdui.core.TransformationChain#tblInsert

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
_Overrides_ bcdui.core.TransformationChain#tblSelect

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Array.\<Object>}: Array of objects holding the requested data


### tblSelectRow
tblSelectRow(args) &#x21FE; {Object}


returns one object representing the filtered data (either filter or rowId). In case of multiple filter matches, the first one is returned \
_Overrides_ bcdui.core.TransformationChain#tblSelectRow

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
_Overrides_ bcdui.core.TransformationChain#tblUpdate

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


Useful for debugging. \
_Overrides_ bcdui.core.TransformationChain#toString\
**Returns** {string}: String representation of the chain.


### write
write(xPath, fillParams?, value?, fire?) &#x21FE; {DomNode}


Set a value to on a certain xPath and create the xPath where necessary. This combines Element.evaluate() for a single node with creating the path where necessary. It will prefer extending an existing start-part over creating a second one.After the operation the xPath (with the optional value) is guaranteed to exist (pre-existing or created or extended) and the addressed node is returned. \
_Overrides_ bcdui.core.TransformationChain#write

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the node which is set to the value or plain xPath to be created if not there.<br/>   It tries to reuse all matching parts that are already there. If you provide for example `/n:Root/n:MyElem/@attr2` and there is already `/n:Root/n:MyElem/@attr1`, then `/n:Root/n:MyElem` will be "re-used" and get an additional attribute attr2.<br/>   Many expressions are allowed, for example `/n:Root/n:MyElem[@attr1='attr1Value']/n:SubElem` is also ok.<br/>   By nature, some xPath expressions are not allowed, for example using '//' or `/n:Root/n:MyElem/[@attr1 or @attr2]/n:SubElem` is obviously not unambiguous enough and will throw an error.<br/>   This method is Wrs aware, use for example `/wrs:Wrs/wrs:Data/wrs:*[2]/wrs:C[3]` as xPath, and it will turn wrs:R[wrs:C] into wrs:M[wrs:C and wrs:O], see Wrs format.<br/>   (can include dot template placeholders which get filled with the given fillParams) |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions<br/>    Example: `bcdui.wkModels.guiStatus.write("/guiStatus:Status/guiStatus:ClientSettings/guiStatus:Test[@caption='{{=it[0]}}' and @caption2='{{=it[1]}}']", ["china's republic", "drag\"n drop"])` |
| value? | string |  | Optional value which should be written, for example to `/n:Root/n:MyElem/@attr` or with `/n:Root/n:MyElem` as the element's text content.<br/>   If not provided, the xPath contains all values like in `/n:Root/n:MyElem[@attr='a' and @attr1='b']` or needs none like `/n:Root/n:MyElem` |
| fire? | boolean | false | If true a fire is triggered to inform data modification listeners |

**Returns** {DomNode}: The xPath's node or null if dataProvider isn't ready
#### Examples
````js
// To change an individual value, use this to set the second column in the 3rd row to 'HALLO'.// It turns the row into a proper `wrs:M`, if it detects the model is a Wrs.// Writing by pointing to a node. wrs:* makes sure that it matches wrs:R as well as wrs:MmyModel.write("/wrs:Wrs/wrs:Data/wrs:*[3]/wrs:C[2]", "HELLO")// Writing 2 values by describing, what xPath should match: wrs:*[3][..]// If the row 3 does not exist, it is created (wrs:I)myModel.write("/wrs:Wrs/wrs:Data/wrs:*[3][wrs:C[1]='{{=it[0]}}' and wrs:C[2]='{{=it[2]}}']", ["HELLO", "WORLD"])
````