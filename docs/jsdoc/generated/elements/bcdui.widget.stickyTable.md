# stickyTable()
<span hidden class='htmlPackage'>bcdui.widget</span>


make parts of the given table sticky

````js
// Usage
bcdui.widget.stickyTable({ targetHtml: "#myDiv" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  |  |
| args.targetHtml | HtmlElement |  | targetHtml containing/being table |
| args.width? | string |  | the width of the table  (e.g. 10, 20px or 30em) |
| args.height? | string |  | the height of the table (e.g. 10, 20px or 30em) |
| args.header? | boolean | false | make header sticky |
| args.footer? | boolean | false | make footer sticky |
| args.nFirstCols? | integer |  | make the first n columns sticky |
| args.nFirstRows? | integer |  | make the first n rows sticky |
| args.nLastCols? | integer |  | make the last n columns sticky |
| args.nLastRows? | integer |  | make the last n rows sticky |
| args.bcdDimension? | boolean | false | make all dimension cells (cube) sticky (higher prio than other options) |
| args.disableMaxWH? | boolean | false | setting this to true will use width/heigth instead of max-width/max-height |


**Returns**: {void}
