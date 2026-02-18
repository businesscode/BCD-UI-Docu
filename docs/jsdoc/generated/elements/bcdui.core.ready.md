# ready()
<span hidden class='htmlPackage'>bcdui.core</span>


Registers a callback function to be executed when the browser has finishedloading. If the loading has already finished the function is executedimmediately.

````js
// Usage
bcdui.core.ready( fn );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| fn | function |  | The function executed as soon as the browser has finished loading. |


**Returns**: {void}
