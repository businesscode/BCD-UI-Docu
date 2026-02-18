# Class DetachedEvent
<span hidden class='htmlPackage'>bcdui.widget</span>
<p>  This class represents a DOM event which can be stored for later use,  especially in a timeout function. It encapsulates the event functionality  provided by prototype.js, but it is not destroyed when the event has  finished. Instead it can be kept to invoke the event handler later.</p><p>  A use case for this event object is for example a delayed tooltip  appearing for example 200 ms after the mouse over event has occurred.</p>

## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(event, element?, endElement?) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| event | Event |  | The event object that should be the base for this<br/>object. |
| element? | HtmlElement |  | The source element of the event if it should<br/>not be derived from the provided event. |
| endElement? | HtmlElement |  | The optional end element for the findAttribute<br/>method. No attribute on of an ancestor of this element is returned by<br/>findAttribute. |

## Methods


### element
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {HtmlElement}</span>

Getter for the event origin element.\
**Returns** {HtmlElement}: The element that caused the event.


### findAttribute
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

A convenience wrapper for [bcdui.widget._findAttribute](bcdui.widget._findAttribute.md).\
**Returns** {void}


### pointer
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {Object}</span>

Getter for the coordinates the event has been triggered at.\
**Returns** {Object}: An object in the form { x: ##, y: ## } holding the x and y positionwhere the event has been triggered.


### pointerX
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {integer}</span>

Getter for the X coordinate of the event.\
**Returns** {integer}: The X coordinate where the event has been triggered.


### pointerY
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {integer}</span>

Getter for the Y coordinate of the event.\
**Returns** {integer}: The Y coordinate where the event has been triggered.