# Class SVGVMLDrawer
<span hidden class='htmlPackage'>bcdui.component.chart</span>
This class represents a base class for SVG and VML Drawers, which have the same interface.

## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Constructor of bcdui.component.chart.SVGVMLDrawer, called by prototype. Instantiate [bcdui.component.chart.SVGDrawer](bcdui.component.chart.SVGDrawer.md) concrete subclass

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter Object |
| args.scale? | Object | {x:1,y:1} | Default is no scaling { x: 1, y: 1 } |
| args.transform? | Object |  | Default is no shifting { x: 0, y: 0 } |

## Methods


### getResult
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {DomElement}</span>

Returns the a DOM element containing the SVG drawing\
**Returns** {DomElement}: Returns the a DOM element containing the VML or SVG drawing


### setTransScale
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Set transform and scale

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter Object |
| args.scale? | Object | {x:1,y:1} | Default is no scaling \{ x: 1, y: 1\} |
| args.transform? | Object |  | Default is no shifting \{ x: 0, y: 0 \} |

**Returns** {void}