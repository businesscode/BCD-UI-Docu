# reDisplay()
<span hidden class='htmlPackage'>bcdui.component.cube.configuratorDND</span>


Refreshes the cube drag'n drop areaThis is e.g. necessary when a template is applied or the layout is cleanedor a client sided cube action is applied and you want to have e.g. icons beingrefreshed in the dnd area, or you have some custom options which remove measuresdimensions on special rules and the dnd area needs to be in sync with the changes

````js
// Usage
bcdui.component.cube.configuratorDND.reDisplay( cubeId );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| cubeId | string |  | The id of the linked cube |


**Returns**: {void}
