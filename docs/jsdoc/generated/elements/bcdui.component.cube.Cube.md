# Class Cube
<span hidden class='htmlPackage'>bcdui.component.cube</span>
Creates a cube front end based on given data or a configuration

_Extends_ [bcdui.core.Renderer](bcdui.core.Renderer.md)
## Constructor
````js
// Usage
var myCb = new bcdui.component.cube.Cube({ targetHtml: "#myDiv" });
  ````




<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args |  |  | The parameter map contains the following properties: |
| args.targetHtml | targetHtmlRef |  | A reference to the HTML DOM Element where to put the output |
| args.config? | bcdui.core.DataProvider |  | The model containing the cube's configuration (see cube-2.0.0.xsd). If it is not present, the configuration at './cubeConfiguration.xml' is used |
| args.statusModel? | bcdui.core.DataProvider | bcdui.wkModels.guiStatusEstablished | StatusModel (default is 'guiStatusEstablished'), containing the filters as /SomeRoot/f:Filter and the layout definition at /SomeRoot//cube:Layout[@cubeId=args.cubeId] |
| args.detailExportFilterModel? | bcdui.core.DataProvider |  | Use this to overwrite filters found in args.statusModel, default set to args.statusModel |
| args.id? | string |  | The object's id, needed only when later accessing via id. If given the Cube registers itself at [bcdui.factory.objectRegistry](bcdui.factory.objectRegistry.md) |
| args.chain? | chainDef |  | An alternative rendering chain, See [bcdui.core.Renderer](bcdui.core.Renderer.md). Default here is HtmlBuilder. |
| args.parameters? | Object |  | An object, where each property holds a DataProvider being a renderer parameter used in custom chains |
| args.requestChain? | chainDef |  | An alternative request building chain. Default here is /bcdui/js/component/cube/request.xslt. |
| args.requestParameters? | Object |  | An object, where each property holds a DataProvider, used as a transformation parameters. |

## Methods


### getClassName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Get className \
_Overrides_ bcdui.core.Renderer#getClassName\
**Returns** {string}: className


### getConfigModel
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.DataProvider}</span>
\
**Returns** {bcdui.core.DataProvider}: configuration model of the cube


### getEnhancedConfiguration
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.DataProvider}</span>
\
**Returns** {bcdui.core.DataProvider}: Enhanced configuration model of the cube


### addDataProvider
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(newDataProvider, newName?) &#x21FE; {bcdui.core.DataProvider}</span>

Adds a new data provider to the transformation chain. If there is already a data providerwith the given name it is replaced. \
_Overrides_ bcdui.core.Renderer#addDataProvider

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| newDataProvider | Object |  | the new dataprovider which should be added |
| newName? | string |  | an optional new name for the provider. if given an alias will be created |

**Returns** {bcdui.core.DataProvider}: The old data provider registered under the name ornull if there has not been any.


### addStatusListener
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Listen for any status to be reached. For use cases with the ready status (by far the most common), see onReady() and onceReady() convenience functions. \
_Overrides_ bcdui.core.Renderer#addStatusListener

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
_Overrides_ bcdui.core.Renderer#debugIsWaitingFor\
**Returns** {string}: Human readable message, which DataProviders, this DataProvider depends on, are not currently in ready state


### debugStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
 \
_Overrides_ bcdui.core.Renderer#debugStatus\
**Returns** {string}: Human readable message about the current state state


### execute
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

<b>Instead of calling this method directly, better rely on a Renderer or on method onReady().</b><br/>Executes the process implemented by the concrete sub-classThis method is called by the Renderer when it is ready to render the modelIt is often asynchronous.Note, Renderer and sub-classes execute all input models recursively automatically.This means, usually you do not need to call this method directly. Note: it is asynchronous.Use method .onReady({executeIfNotReady: true, onSuccess: callback }) if no Renderer is involved. \
_Overrides_ bcdui.core.Renderer#execute

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


### fetchData
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {Promise.\<bcdui.core.DataProvider>}</span>

asynchronously fetch data for this data provider. \
_Overrides_ bcdui.core.Renderer#fetchData\
**Returns** {Promise.\<bcdui.core.DataProvider>}: resolving once data has been loaded, first argument is this instance


### fire
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

This informs modification listeners, registered via [onChange(args)](bcdui.core.DataProvider#onChange.md), that a change set was completedand data is consistent again. \
_Overrides_ bcdui.core.Renderer#fire\
**Returns** {void}


### getData
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {*}</span>

A getter for the document produced by the transformation chain. \
_Overrides_ bcdui.core.Renderer#getData\
**Returns** {*}: The output of the last transfomration in the chain if it doesnot produce HTML (output="html").


### getDataProviderByName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(name) &#x21FE; {bcdui.core.DataProvider}</span>
 \
_Overrides_ bcdui.core.Renderer#getDataProviderByName

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| name | string |  |  |

**Returns** {bcdui.core.DataProvider}: returns the parameter of the given name


### getFailedStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {Array.\<bcdui.core.Status>}</span>

Getter for the list of error statuses of this class. This implementation returns anempty list. \
_Overrides_ bcdui.core.Renderer#getFailedStatus\
**Returns** {Array.\<bcdui.core.Status>}: Returns all statuses indicating a failure


### getName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Getter for the name of the data provider. This name is for example usedto set parameters names of a [bcdui.core.TransformationChain](bcdui.core.TransformationChain.md). \
_Overrides_ bcdui.core.Renderer#getName\
**Returns** {string}: The name of the data provider. This name should be uniquewithin the scope it is used and is usually not globally unique (as the id).


### getPrimaryModel
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.DataProvider}</span>

Getter for the primary model of the chain. The first transformation ofthe chain takes a document as input. This document comes from theprimary model. \
_Overrides_ bcdui.core.Renderer#getPrimaryModel\
**Returns** {bcdui.core.DataProvider}: The model the first transformation inthe chain is running on.


### getReadyStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.Status}</span>

The ready status for the transformation chain is reached as soon as alltransformations are finished.<p> The status transitions of the class are as follows:          </p>                                                              <p style="padding-left: 10px"><table><tr><td style="border: 3px double black; text-align: center" colspan="2">     Initialized                                              </td><td style="padding-left: 20px">         All variables have been initialized.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     Loading                                                  </td><td style="padding-left: 20px">         Start loading chain document.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     ChainLoaded                                              </td><td style="padding-left: 20px">         The chain document has been loaded. Start         loading chain stylesheets.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2"> <i> WaitingForParameters </i>                                </td><td style="padding-left: 20px">         Chain stylesheets loaded. Waiting for         parameter data providers (<i>execute</i>).                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 1px solid black; text-align: center" colspan="2">     Transforming                                             </td><td style="padding-left: 20px">         The chain stylesheets are running.                                                              </td></tr><tr><td>&nbsp;</td><td style="border-left: 1px solid black">&nbsp;</td><td></td></tr><tr><td style="border: 3px double black; text-align: center" colspan="2"> <b> Transformed </b>                                         </td><td style="padding-left: 20px">         The output has been generated. (<b>ready</b>)</td></tr></table></p> \
_Overrides_ bcdui.core.Renderer#getReadyStatus\
**Returns** {bcdui.core.Status}: The transformed status.


### getStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.Status}</span>

Getter for the status of this object. See [bcdui.core.status](bcdui.core.status.md) for possible return values. \
_Overrides_ bcdui.core.Renderer#getStatus\
**Returns** {bcdui.core.Status}: The current status.


### getTargetHtml
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

Return the target html element where the renderer places its output \
_Overrides_ bcdui.core.Renderer#getTargetHtml\
**Returns** {void}


### hasFailed
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

Tests if the object has reached a failure status. These status codes arereturned by the "getFailedStatus" method. \
_Overrides_ bcdui.core.Renderer#hasFailed\
**Returns** {boolean}: True, if the object's process has failed.


### isClean
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

True, if DataProvider is ready and there are no uncommitted write transactions,see [isReady()](bcdui.core.AbstractExecutable#isReady.md) and [fire()](bcdui.core.DataProvider#onChange.md). \
_Overrides_ bcdui.core.Renderer#isClean\
**Returns** {boolean}: 


### isReady
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

Tests if the current state is the readyStatus. This status is the samestatus as returned by "getReadyStatus". \
_Overrides_ bcdui.core.Renderer#isReady\
**Returns** {boolean}: True, if the object is ready.


### onceReady
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(listenerObject) &#x21FE; {void}</span>
 \
_Overrides_ bcdui.core.Renderer#onceReady

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
_Overrides_ bcdui.core.Renderer#onChange

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
_Overrides_ bcdui.core.Renderer#onReady

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
_Overrides_ bcdui.core.Renderer#promptData\
**Returns** {void}


### query
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?) &#x21FE; {DomNode}</span>

Reads a single node from a given xPath \
_Overrides_ bcdui.core.Renderer#query

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |

**Returns** {DomNode}: single node or null if query fails


### queryNodes
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?) &#x21FE; {Array.\<DomNode>}</span>

Get node list from a given xPath \
_Overrides_ bcdui.core.Renderer#queryNodes

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath to query |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |

**Returns** {Array.\<DomNode>}: node list or empty list if query fails


### read
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?, defaultValue?) &#x21FE; {string}</span>

Reads the string value from a given xPath (or optionally return default value). \
_Overrides_ bcdui.core.Renderer#read

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to value (can include dot template placeholders which get filled with the given fillParams) |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| defaultValue? | string |  | default value in case xPath value does not exist |

**Returns** {string}: text value stored at xPath (or null if no text was found and no defaultValue supplied)


### reloadStylesheets
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

Start the loading process of the stylesheets and executes the transformationsagain. \
_Overrides_ bcdui.core.Renderer#reloadStylesheets\
**Returns** {void}


### remove
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?, fire?) &#x21FE; {void}</span>

Deletes data at a given xPath from the model \
_Overrides_ bcdui.core.Renderer#remove

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the value |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions |
| fire? | boolean | false | if true a fire is triggered to notify data modification listener |

**Returns** {void}


### removeDataListener
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(listenerObject) &#x21FE; {void}</span>
 \
_Overrides_ bcdui.core.Renderer#removeDataListener

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
_Overrides_ bcdui.core.Renderer#removeStatusListener

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
_Overrides_ bcdui.core.Renderer#sendData\
**Returns** {void}


### serialize
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Serialize dataprovider's data if available \
_Overrides_ bcdui.core.Renderer#serialize\
**Returns** {string}: String containing the serialized data


### setPrimaryModel
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(primaryModel) &#x21FE; {void}</span>

Adds a new data provider to the list which becomes the new primary modelof the transformation chain. \
_Overrides_ bcdui.core.Renderer#setPrimaryModel

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| primaryModel | bcdui.core.DataProvider |  | the new primary model of the transformation chain. |

**Returns** {void}


### setStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Makes a transition from the current status to the new status if theyare not equal. After the status is changed it fires the status eventto the registered listeners.<p/>Usually this method will only be called by the library but you can use it to re-trigger an action. For available statuses and their effect, see the concrete class, \
_Overrides_ bcdui.core.Renderer#setStatus

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | bcdui.core.Status |  |  |

**Returns** {void}


### setTargetHtml
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(targetHtmlElement) &#x21FE; {void}</span>

Sets the target html element where the renderer places its output \
_Overrides_ bcdui.core.Renderer#setTargetHtml

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| targetHtmlElement | HtmlElement |  | target html element |

**Returns** {void}


### tblDelete
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {number}</span>

updates wrs rows with given data. Either a single row (via rowId) or single/multiple ones (via filter) \
_Overrides_ bcdui.core.Renderer#tblDelete

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
_Overrides_ bcdui.core.Renderer#tblInsert

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
_Overrides_ bcdui.core.Renderer#tblSelect

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter bag |
| args.filter? | Object |  | object holding cell values which should be used for selecting the rows for update, e.g. { country: 'DE', flag: true } |
| args.columns? | Array.\<string> |  | string array of requested columns, if not given, all columns are returned |

**Returns** {Array.\<Object>}: Array of objects holding the requested data


### tblSelectRow
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {Object}</span>

returns one object representing the filtered data (either filter or rowId). In case of multiple filter matches, the first one is returned \
_Overrides_ bcdui.core.Renderer#tblSelectRow

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
_Overrides_ bcdui.core.Renderer#tblUpdate

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
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Useful for debugging. \
_Overrides_ bcdui.core.Renderer#toString\
**Returns** {string}: String representation of the chain.


### write
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(xPath, fillParams?, value?, fire?) &#x21FE; {DomNode}</span>

Set a value to on a certain xPath and create the xPath where necessary. This combines Element.evaluate() for a single node with creating the path where necessary. It will prefer extending an existing start-part over creating a second one.After the operation the xPath (with the optional value) is guaranteed to exist (pre-existing or created or extended) and the addressed node is returned. \
_Overrides_ bcdui.core.Renderer#write

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| xPath | string |  | xPath pointing to the node which is set to the value or plain xPath to be created if not there.<br/>   It tries to reuse all matching parts that are already there. If you provide for example "/n:Root/n:MyElem/@attr2" and there is already "/n:Root/n:MyElem/@attr1", then "/n:Root/n:MyElem" will be "re-used" and get an additional attribute attr2.<br/>   Many expressions are allowed, for example "/n:Root/n:MyElem[@attr1='attr1Value']/n:SubElem" is also ok.<br/>   By nature, some xPath expressions are not allowed, for example using '//' or "/n:Root/n:MyElem/[@attr1 or @attr2]/n:SubElem" is obviously not unambiguous enough and will throw an error.<br/>   This method is Wrs aware, use for example '/wrs:Wrs/wrs:Data/wrs:*[2]/wrs:C[3]' as xPath and it will turn wrs:R[wrs:C] into wrs:M[wrs:C and wrs:O], see Wrs format.<br/>   (can include dot template placeholders which get filled with the given fillParams) |
| fillParams? | Object |  | array or object holding the values for the dot placeholders in the xpath. Values with "'" get 'escaped' with a concat operation to avoid bad xpath expressions<br/>    Example: bcdui.wkModels.guiStatus.write("/guiStatus:Status/guiStatus:ClientSettings/guiStatus:Test[@caption='{{=it[0]}}' and @caption2='{{=it[1]}}']", ["china's republic", "drag\"n drop"]) |
| value? | string |  | Optional value which should be written, for example to "/n:Root/n:MyElem/@attr" or with "/n:Root/n:MyElem" as the element's text content.<br/>   If not provided, the xPath contains all values like in "/n:Root/n:MyElem[@attr='a' and @attr1='b']" or needs none like "/n:Root/n:MyElem" |
| fire? | boolean | false | If true a fire is triggered to inform data modification listeners |

**Returns** {DomNode}: The xPath's node or null if dataProvider isn't ready