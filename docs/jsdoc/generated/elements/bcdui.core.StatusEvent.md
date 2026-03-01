# Class StatusEvent
package bcdui.core

Represents a status event thrown to status listeners of [DataProviders](bcdui.core.DataProvider.md), see [bcdui.core.AbstractExecutable#removeStatusListener](bcdui.core.AbstractExecutable#removeStatusListener.md) and [bcdui.core.StatusListener](bcdui.core.StatusListener.md)

## Constructor
````js
// Usage
var mySE = new bcdui.core.StatusEvent({ source, newStatus });
  ````


---

The constructor creating a new StatusEvent object.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | This parameter map must contain two properties: |
| args.source | Object |  | The object the status transition happened |
| args.newStatus | bcdui.core.Status |  | The new status of the source object |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### getSource
getSource() &#x21FE; {object}


Getter for the object that made the status transition.\
**Returns** {object}: The causer of the event.


### getStatus
getStatus() &#x21FE; {bcdui.core.Status}

\
**Returns** {bcdui.core.Status}: The new status of the source object.


### toString
toString() &#x21FE; {string}

\
**Returns** {string}: A summary of the status event.