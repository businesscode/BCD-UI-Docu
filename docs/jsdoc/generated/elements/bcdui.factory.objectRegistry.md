# Class ObjectRegistry
package bcdui.factory

The object registry is a class that tracks registration of BCD-UI objects bytheir id. It also offers methods to wait for the registration of one or moreobjects so that the dependencies can be managed more easily.<p/>Use the singleton [bcdui.factory.objectRegistry](bcdui.factory.objectRegistry.md) for registering

## Constructor

---

This class should not be instantiated directly, because there is already asingleton instance at [bcdui.factory.objectRegistry](bcdui.factory.objectRegistry.md) (note the lower case 'o'), which is used bythe factory methods.
<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### deRegisterObject
deRegisterObject(obj) &#x21FE; {void}


Removes a DataProvider from the object registry.<p/>Use this if you need access from XSLT, XAPI or JSP to objects created via JavaScript.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| obj | bcdui.core.DataProvider |  | The DataProvider to be removed from the registry. |

**Returns** {void}


### generateTemporaryId
generateTemporaryId() &#x21FE; {void}


Get a new page-unique id. Use this if you don't car about the id's value but need a unique one.\
**Returns** {void}


### generateTemporaryIdInScope
generateTemporaryIdInScope() &#x21FE; {void}


Get a new page-unique id for a certain scope, i.e. prefix. The prefix makes it easier to debug.\
**Returns** {void}


### getObject
getObject(id) &#x21FE; {bcdui.core.DataProvider}


Retrieves a DataProvider from the ObjectRegistry by the provided id.Use this if you need access from JavaScript to objects, which where created via XSLT, XAPI or JSP.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| id | (string\|SymLink) |  | The object to be resolved from the registry. |

**Returns** {bcdui.core.DataProvider}: The object registered under the id or null if no such object exists.


### registerObject
registerObject(obj) &#x21FE; {void}


Registers a new object in the object registry by its unique id property.Pending listeners can be informed on that event. Additionally it createsa JavaScript variable with the name of the object id and the object asvalue.<p/>Use this if you need access from XSLT, XAPI or JSP to objects created via JavaScript.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| obj | bcdui.core.DataProvider |  | The DataProvider to be registered. |

**Returns** {void}


### toString
toString() &#x21FE; {string}

\
**Returns** {string}: A string describing the current state of the object registry.


### withObjects
withObjects(args1, args2) &#x21FE; {void}


Waits until one or more ids are registered (but not necessarily ready) and then calls a JavaScript function. If theyare already registered the JavaScript function will be called immediately.<p/>Use this if you need access from JavaScript to objects, which where created via XSLT, XAPI or JSP.See [withReadyObjects()](bcdui.factory.objectRegistry.withReadyObjects.md)

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args1 | (Object\|Array.\<string>\|string) |  | This can either be a parameter object or an array of id<br/>strings or a single id. The format of the parameter object is as follows<br/>  <ul><br/>    <li>ids: {string[]|string} The array of ids that must be registered before the callback<br/>              function is called.</li><br/>    <li>fn: {Function} The function to be called when the ids are registered.</li><br/>  </ul> |
| args2 | function |  | If the first parameter is not a parameter object, then<br/>this is the callback function that is called as soon as the requested ids are registered. |

**Returns** {void}


### withReadyObjects
withReadyObjects(args1, args2, skipExecute) &#x21FE; {void}


Waits until the specified DataProvider ids are registered and reach their ready states.Then it calls the specified callback function. Please note that it also works when thedata providers are already in their ready state; then the callback is called immediately.Note that it will also execute the DataProviders it waits fir, if they are not yet ready.The interface is identical to the [withObjects()](bcdui.factory.objectRegistry.withObjects.md) function.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args1 | (Object\|Array.\<string>\|string) |  | The parameter object or the object ids. |
| args2 | function |  | The callback function if argsOrIds is an array. |
| skipExecute | boolean |  | do not execute the non-ready dataproviders |

**Returns** {void}


### withReadyObjectsNoExecute
withReadyObjectsNoExecute(args1, args2) &#x21FE; {void}


Waits until the specified DataProvider ids are registered and reach their ready states.Then it calls the specified callback function. Please note that it also works when thedata providers are already in their ready state; then the callback is called immediately.It does not execute the DataProviders it waits for, it waits until somebody else executes it.The interface is identical to the [bcdui.factory.objectRegistry.withObjects](bcdui.factory.objectRegistry.withObjects.md) function.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args1 | (Object\|Array.\<string>\|string) |  | The parameter object or the object ids. |
| args2 | function |  | The callback function if argsOrIds is an array. |

**Returns** {void}