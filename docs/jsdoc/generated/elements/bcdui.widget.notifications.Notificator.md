# Class Notificator
<span hidden class='htmlPackage'>bcdui.widget.notifications</span>
Notificator component displaying user notifications

## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.retainMessagesNumber? | integer | 5 | number of messages to retain in viewable area |
| args.attachMouseHandler? | boolean | false | if true, the mousehover/unhover will close the box |
| args.autoHideMs? | integer | 0 | if greater 0, the box will autohide after that amount of ms, otherwise the box has to be closed manually |

## Methods


### addMessage
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(message, type?, anchorId?) &#x21FE; {void}</span>

adds a message to notificator and displays notificator if appropriate

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| message | string |  | The message you want to display |
| type? | string | INFO | The type of the message, use WARN or INFO |
| anchorId? | string |  | If given the message will contain a link to that anchor) |

**Returns** {void}


### displayNotificationBar
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

displays notification bar rendering messages in the queue\
**Returns** {void}


### hideNotificationBar
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

hides notification bar\
**Returns** {void}


### removeAllMessages
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

removes all messages and hides notification window\
**Returns** {void}


### showNotificationBar
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

shows notification bar\
**Returns** {void}