# Class StatusEvent
<span hidden class='htmlPackage'>bcdui.core</span>
Represents a status event thrown to status listeners of [DataProviders](bcdui.core.DataProvider.md), see [bcdui.core.AbstractExecutable#removeStatusListener](bcdui.core.AbstractExecutable#removeStatusListener.md) and [bcdui.core.StatusListener](bcdui.core.StatusListener.md)

## Constructor
````js
// Usage
var mySE = new bcdui.core.StatusEvent({ source, newStatus });
  ````




<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

The constructor creating a new StatusEvent object.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | This parameter map must contain two properties: |
| args.source | Object |  | The object the status transition happened |
| args.newStatus | bcdui.core.Status |  | The new status of the source object |

## Methods


### getSource
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {object}</span>

Getter for the object that made the status transition.\
**Returns** {object}: The causer of the event.


### getStatus
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {bcdui.core.Status}</span>
\
**Returns** {bcdui.core.Status}: The new status of the source object.


### toString
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
\
**Returns** {string}: A summary of the status event.