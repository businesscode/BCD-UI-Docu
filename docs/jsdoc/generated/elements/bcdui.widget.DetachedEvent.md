# Class DetachedEvent
package bcdui.widget

<p>  This class represents a DOM event which can be stored for later use,  especially in a timeout function. It encapsulates the event functionality  provided by prototype.js, but it is not destroyed when the event has  finished. Instead it can be kept to invoke the event handler later.</p><p>  A use case for this event object is for example a delayed tooltip  appearing for example 200 ms after the mouse over event has occurred.</p>

## Constructor

---


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| event | Event |  | The event object that should be the base for this<br/>object. |
| element? | HtmlElement |  | The source element of the event if it should<br/>not be derived from the provided event. |
| endElement? | HtmlElement |  | The optional end element for the findAttribute<br/>method. No attribute on of an ancestor of this element is returned by<br/>findAttribute. |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### element
element() &#x21FE; {HtmlElement}


Getter for the event origin element.\
**Returns** {HtmlElement}: The element that caused the event.


### findAttribute
findAttribute() &#x21FE; {void}


A convenience wrapper for [bcdui.widget._findAttribute](bcdui.widget._findAttribute.md).\
**Returns** {void}


### pointer
pointer() &#x21FE; {Object}


Getter for the coordinates the event has been triggered at.\
**Returns** {Object}: An object in the form { x: ##, y: ## } holding the x and y positionwhere the event has been triggered.


### pointerX
pointerX() &#x21FE; {integer}


Getter for the X coordinate of the event.\
**Returns** {integer}: The X coordinate where the event has been triggered.


### pointerY
pointerY() &#x21FE; {integer}


Getter for the Y coordinate of the event.\
**Returns** {integer}: The Y coordinate where the event has been triggered.