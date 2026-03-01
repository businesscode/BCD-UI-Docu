# Class Menu
package bcdui.widget.menu



## Constructor
````js
// Usage
var myMn = new bcdui.widget.menu.Menu({ rootIdOrElement, name, customConfigFunction });
  ````


---


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args |  |  |  |
| args.rootIdOrElement | (string\|HtmlElement) |  | root Node of the menu (ul) |
| args.name | string |  | name of the variable that stores the result<br/>                                                          of this constructor function |
| args.customConfigFunction | function |  | optional config function to override the default settings<br/>                                                         for an example see Menu.prototype.config |

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### getClassName
getClassName() &#x21FE; {string}

\
**Returns** {string}: class name