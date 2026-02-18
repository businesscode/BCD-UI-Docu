# Class SVGDrawer
<span hidden class='htmlPackage'>bcdui.component.chart</span>
A SVG drawer, drawing basic geometries

_Extends_ [bcdui.component.chart.SVGVMLDrawer](bcdui.component.chart.SVGVMLDrawer.md)
## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.doc | DomDocument |  | Document for creating the SVG drawing |
| args.scale? | Object | {x:1,y:1} | Default is no scaling { x: 1, y: 1} |
| args.transform? | Object |  | Default is no shifting { x: 0, y: 0 } |
| args.createToolTipCb? | function |  | Call back getting the source element, returning the tool tip HTML</li> |
| args.addAttr? | Object |  | A set of additional string attributes to be attached to the root element</li> |

## Methods


### arc
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Draw a SVG arc

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.x | number |  | Center |
| args.y | number |  | Center |
| args.radius | number |  | Radius |
| args.start | number |  | Start |
| args.end | number |  | End |
| args.effect? | string |  | An effect to be used for areas. Possible values: linearGradient, radialPlate, linearRound, linearPlate |
| args.percWidth? | number |  | Inner radius |
| args.rgb? | string | "black" | Fill color |
| args.stroke? | string | "black" | Border color |
| args.isFilled? | boolean | false | Fill area |
| args.onClick? | function |  | On click callback |
| args.addAttr? | Object |  | A set of additional string attributes to be attached to the root element</li> |

**Returns** {void}


### box
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Draw a SVG box

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.x | number |  | Left |
| args.y | number |  | Top |
| args.width | number |  | Width |
| args.height | number |  | Height |
| args.effect? | string |  | An effect to be used for areas. Possible values: linearGradient, radialPlate, linearRound, linearPlate |
| args.rgb? | string | "black" | Color |
| args.isFilled? | boolean | false | Fill area |
| args.onClick? | function |  | On click callback |
| args.addAttr? | Object |  | A set of additional string attributes to be attached to the root element</li> |

**Returns** {void}


### circle
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Draw a SVG circle

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.x | number |  | Center |
| args.y | number |  | Center |
| args.radius | number |  | Radius |
| args.effect? | string |  | An effect to be used for areas. Possible values: linearGradient, radialPlate, linearRound, linearPlate |
| args.rgb? | string | "black" | Color |
| args.isFilled? | boolean | false | Fill area |
| args.onClick? | function |  | On click callback |
| args.addAttr? | Object |  | A set of additional string attributes to be attached to the root element</li> |

**Returns** {void}


### image
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Draw an SVG image element

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.x | number |  | Left |
| args.y | number |  | Top |
| args.width | number |  | Width |
| args.height | number |  | Height |
| args.href? | string |  | The image |
| args.onClick? | function |  | On click callback |
| args.addAttr? | Object |  | A set of additional string attributes to be attached to the root element</li> |

**Returns** {void}


### line
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Draw a SVG line

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.points | Array.\<Array.\<number>> |  | 2 dimensional array with x,y points, args.points[0][0] being the first one</li> |
| args.effect? | string |  | An effect to be used for areas. Possible values: linearGradient, radialPlate, linearRound, linearPlate |
| args.rgb? | string | "black" | Line color |
| args.width? | number | 1 | Line width |
| args.isFilled? | boolean | false | Fill area |
| args.onClick? | function |  | On click callback |
| args.addAttr? | Object |  | A set of additional string attributes to be attached to the root element</li> |

**Returns** {void}


### text
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Draw a SVG text

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.x | number |  | Position |
| args.y | number |  | Position |
| args.text | string |  | The text |
| args.cssClass? | string |  | A css class to be used |
| args.align? | string |  | Possible values middle, end |
| args.layoutFlow? | string |  | A css value lie vertical-ideographic |

**Returns** {void}


### getResult
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {DomElement}</span>

Returns the a DOM element containing the SVG drawing \
_Overrides_ bcdui.component.chart.SVGVMLDrawer#getResult\
**Returns** {DomElement}: Returns the a DOM element containing the VML or SVG drawing


### setTransScale
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>

Set transform and scale \
_Overrides_ bcdui.component.chart.SVGVMLDrawer#setTransScale

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | parameter Object |
| args.scale? | Object | {x:1,y:1} | Default is no scaling \{ x: 1, y: 1\} |
| args.transform? | Object |  | Default is no shifting \{ x: 0, y: 0 \} |

**Returns** {void}