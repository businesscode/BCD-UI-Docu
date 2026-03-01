# Class SVGVMLDrawer
package bcdui.component.chart

This class represents a base class for SVG and VML Drawers, which have the same interface.

## Constructor

---

Constructor of bcdui.component.chart.SVGVMLDrawer, called by prototype. Instantiate [bcdui.component.chart.SVGDrawer](bcdui.component.chart.SVGDrawer.md) concrete subclass

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter Object |
| args.scale? | Object | {x:1,y:1} | Default is no scaling { x: 1, y: 1 } |
| args.transform? | Object |  | Default is no shifting { x: 0, y: 0 } |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### getResult
getResult() &#x21FE; {DomElement}


Returns the a DOM element containing the SVG drawing\
**Returns** {DomElement}: Returns the a DOM element containing the VML or SVG drawing


### setTransScale
setTransScale(args) &#x21FE; {void}


Set transform and scale

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter Object |
| args.scale? | Object | {x:1,y:1} | Default is no scaling \{ x: 1, y: 1\} |
| args.transform? | Object |  | Default is no shifting \{ x: 0, y: 0 \} |

**Returns** {void}