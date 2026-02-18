# blindUpDown()
<span hidden class='htmlPackage'>bcdui.widget.effects</span>


blinds the content Up/Down

````js
// Usage
bcdui.widget.effects.blindUpDown({ idOrElement });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.idOrElement | Object |  | HTML element or ID that contains element(s) to blind Up/Down |
| args.blindBodyClassName? | string | "bcdBlindUpDownBody" | CSS className of HTML element to blind Up/Down |
| args.duration? | integer | 2 | duration in seconds used for blind animation |
| args.noEffect? | boolean | false | True for a simple show/hide without blind effect (blind can influence charts gradients on IE |


**Returns**: {void}
