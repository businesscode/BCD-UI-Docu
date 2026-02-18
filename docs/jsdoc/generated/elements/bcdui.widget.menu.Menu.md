# Class Menu
<span hidden class='htmlPackage'>bcdui.widget.menu</span>


## Constructor
````js
// Usage
var myMn = new bcdui.widget.menu.Menu({ rootIdOrElement, name, customConfigFunction });
  ````




<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args |  |  |  |
| args.rootIdOrElement | (string\|HtmlElement) |  | root Node of the menu (ul) |
| args.name | string |  | name of the variable that stores the result<br/>                                                          of this constructor function |
| args.customConfigFunction | function |  | optional config function to override the default settings<br/>                                                         for an example see Menu.prototype.config |

## Methods


### getClassName
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
\
**Returns** {string}: class name