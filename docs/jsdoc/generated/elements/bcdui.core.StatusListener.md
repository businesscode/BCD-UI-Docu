# Class StatusListener
<span hidden class='htmlPackage'>bcdui.core</span>
An interface that status listeners must implement.A StatusListener is informed by DataProviders (more precisely by [AbstractExecutables](bcdui.core.AbstractExecutable.md)) about status changes, becoming ready is the most important.

## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

## Methods


### handleStatusEvent
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(statusEvent) &#x21FE; {void}</span>

This method is called when the status transition the listener is registeredfor occurs.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| statusEvent | bcdui.core.StatusEvent |  | The status event belonging to the status transition. This<br/>object must not be modified, because it is shared among all listeners. |

**Returns** {void}