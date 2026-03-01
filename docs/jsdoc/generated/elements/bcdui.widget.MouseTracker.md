# Class MouseTracker
package bcdui.widget

<p>  A utility class tracking mouse enter and leave events within a specified  parent element. It keeps track of the mouse movement and fires the event  as soon as the mouse does not move for a certain amount of time (default  200 ms). This is useful because when the function does a complex  computation like executing a tooltip XSLT it is not recommended to  execute it with every mouse move.</p><p>  Please note that "onLeave" does NOT work on HTML table elements in FireFox. So  in this case the baseElement must be the DIV containing the table.</p><p>  Example:</p><pre>
 new bcdui.widget.MouseTracker({
           baseElement: $$("table.treeView")[0].up()
         , delay: 1000
         , onEnter: function(e) {
             bcdui.log.isTraceEnabled() && bcdui.log.trace("row No: " + e.element().rowIndex);
           }
         , onLeave: function() {
             bcdui.log.isTraceEnabled() && bcdui.log.trace("onLeave")
           }
         , filter: "tr"
       }).start();
 </pre>

## Constructor
````js
// Usage
var myMT = new bcdui.widget.MouseTracker({ baseElement });
  ````


---

Creates a new mouse tracker instance. This instance is inactive until the[#start()](#start.md) method is called. Then it tracks the mouse movement on thespecified base element until the [#stop()](#stop.md) method is executed.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The argument map offers the following properties: |
| args.baseElement | (HtmlElement\|string) |  | The id or HTML element that contains<br/>        the sub-elements the mouse enter / leave events should be tracked on.<br/>        It is recommended to use an HTML DIV element as base element. |
| args.onEnter? | function |  | The function to be executed when an observed<br/>        element is entered by the mouse pointer. This function gets an event<br/>        parameter (of the type [bcdui.widget.DetachedEvent](bcdui.widget.DetachedEvent.md)) as<br/>        argument. |
| args.onLeave? | function |  | A function which is run when the mouse leaves an<br/>        observed element. The function has no arguments. |
| args.filter? | string |  | The tag name (or multiple pipe-separated tag names)<br/>        that should be observed for the onEnter / onLeave events. It is often<br/>        TD or TR so that moving the mouse over table cells / rows inside the<br/>        base element is observed. If omitted every child element is observed. |
| args.delay? | integer |  | The duration in milliseconds defining how long the<br/>        events should be idle until the provided function is triggered. The<br/>        default value is 200. |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### start
start() &#x21FE; {void}


Starts the observation of the base element. New instances of the MouseTrackerobject do not automatically start tracking so the start() method should becalled on them.\
**Returns** {void}


### stop
stop() &#x21FE; {void}


Stops observing the base element for mouse enter / leave.\
**Returns** {void}