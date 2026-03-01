# Class Notificator
package bcdui.widget.notifications

Notificator component displaying user notifications

## Constructor

---


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.retainMessagesNumber? | integer | 5 | number of messages to retain in viewable area |
| args.attachMouseHandler? | boolean | false | if true, the mousehover/unhover will close the box |
| args.autoHideMs? | integer | 0 | if greater 0, the box will autohide after that amount of ms, otherwise the box has to be closed manually |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### addMessage
addMessage(message, type?, anchorId?) &#x21FE; {void}


adds a message to notificator and displays notificator if appropriate

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| message | string |  | The message you want to display |
| type? | string | INFO | The type of the message, use WARN or INFO |
| anchorId? | string |  | If given the message will contain a link to that anchor) |

**Returns** {void}


### displayNotificationBar
displayNotificationBar() &#x21FE; {void}


displays notification bar rendering messages in the queue\
**Returns** {void}


### hideNotificationBar
hideNotificationBar() &#x21FE; {void}


hides notification bar\
**Returns** {void}


### removeAllMessages
removeAllMessages() &#x21FE; {void}


removes all messages and hides notification window\
**Returns** {void}


### showNotificationBar
showNotificationBar() &#x21FE; {void}


shows notification bar\
**Returns** {void}