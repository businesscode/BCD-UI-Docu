# attach()
<span hidden class='htmlPackage'>bcdui.widgetNg.commons.balloon</span>


attaches the balloon to given, focusable element,this function does nothing in case a balloon is already attachedon this element.

````js
// Usage
var ret = bcdui.widgetNg.commons.balloon.attach();
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| htmlElementId | (HtmlElement\|string) |  | The target to attach ballon to. |
| args? | object |  | Object literal containing following properties |
| args.noTooltip? | boolean |  | If balloon is attach a tooltip (mouseover) is attached as well,you can disable it here. |
| args.noBalloon? | boolean |  | If set to TRUE the static balloon is not displayed |


**Returns**: {boolean} - true if attached, false if not; if both noTooltip and noBalloon parameters are set, this function returns FALSE and has no effect.
