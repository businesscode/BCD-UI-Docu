# Class AbstractExecutable
<span hidden class='htmlPackage'>bcdui.core</span>
The abstract executable class is a base class for asynchronous operating status-based classes in BCD-UI library. It offers a basic set ofmethods that these classes share. Most methods deal with status handling, transitions, listeners and synchronization.<br/>Most common implementations are:[bcdui.core.StaticModel](bcdui.core.StaticModel.md) and [bcdui.core.SimpleModel](bcdui.core.SimpleModel.md)

## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args?) &#x21FE; {void}</span>

The constructor which must be called by all sub-classes. It initializes the listeners, status and id fields.This class is abstract and not meant to be instantiated directly

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args? | Object |  | Parameter object |
| args.id? | string |  | A unique id for declarative contexts |
| args.bcdPreInit? | function |  | a function which can be used to execute code before any super code of derived classes |

## Methods


### addStatusListener
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Listen for any status to be reached. For use cases with the ready status (by far the most common), see onReady() and onceReady() convenience functions.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | (function\|bcdui.core.StatusListener\|AddStatusListenerParam) |  | Either a function executed on all status transitions or a parameter map  of type **AddStatusListenerParam** |

Type **AddStatusListenerParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| listener | function |  | A function or StatusListener object representing the listener action. |
| status | bcdui.core.Status |  | The status it should listen to.<br/>  If it is missing the listener is executed on all status transitions, otherwise it is executed when the status is set to the specified status. |

**Returns** {void}


### execute
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(doesRefresh?) &#x21FE; {void}</span>

<b>Instead of calling this method directly, better rely on a Renderer or on method onReady().</b><br/>Executes the process implemented by the concrete sub-classThis method is called by the Renderer when it is ready to render the modelIt is often asynchronous.Note, Renderer and sub-classes execute all input models recursively automatically.This means, usually you do not need to call this method directly. Note: it is asynchronous.Use method .onReady({executeIfNotReady: true, onSuccess: callback }) if no Renderer is involved.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doesRefresh? | boolean | true | Set this parameter to "false" if this method should do<br/>nothing when the object is already in the ready status. The default is "true"<br/>meaning that the process is re-started when it is currently ready. |

**Returns** {void}


### getClassName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>

Get className\
**Returns** {string}: className


### getFailedStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {Array.\<bcdui.core.Status>}</span>

Getter for the list of error statuses of this class. This implementation returns anempty list.\
**Returns** {Array.\<bcdui.core.Status>}: The status objects corresponding to failures in the object'sprocess.


### getReadyStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.Status}</span>

Getter for the ready status of the instance. This status is a final statedefined by each sub-class which is reached when the process has finishednormally.\
**Returns** {bcdui.core.Status}: The status object indicating that the process belongingto this class is finished.


### getStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.Status}</span>

Getter for the status of this object. See [bcdui.core.status](bcdui.core.status.md) for possible return values.\
**Returns** {bcdui.core.Status}: The current status.


### hasFailed
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

Tests if the object has reached a failure status. These status codes arereturned by the "getFailedStatus" method.\
**Returns** {boolean}: True, if the object's process has failed.


### isReady
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

Tests if the current state is the readyStatus. This status is the samestatus as returned by "getReadyStatus".\
**Returns** {boolean}: True, if the object is ready.


### onceReady
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(listenerObject) &#x21FE; {void}</span>


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


### onReady
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(listenerObject) &#x21FE; {void}</span>


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


### removeStatusListener
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | (function\|bcdui.core.StatusListener\|RemoveStatusListenerParam) |  | The listener to be removed. This can either be a function or a [StatusListener](bcdui.core.StatusListener.md) or a parameter map  of type **RemoveStatusListenerParam**. |

Type **RemoveStatusListenerParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| listener | function |  | A function <p/>or StatusListener object representing the listener action. |
| status | bcdui.core.Status |  | The status this listener is listening to. If it is missing it is assumed that the listener belongs to the global scope. |

**Returns** {void}


### setStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Makes a transition from the current status to the new status if theyare not equal. After the status is changed it fires the status eventto the registered listeners.<p/>Usually this method will only be called by the library but you can use it to re-trigger an action. For available statuses and their effect, see the concrete class,

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | bcdui.core.Status |  | Either a Status object or a parameter map with a property<br/>"status" holding a Status object. |

**Returns** {void}


### toString
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
\
**Returns** {string}: Debug string with this class and its id.