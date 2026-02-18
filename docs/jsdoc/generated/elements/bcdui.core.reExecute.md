# reExecute()
<span hidden class='htmlPackage'>bcdui.core</span>


Reexecutes the process implemented by the concrete sub-class.

````js
// Usage
bcdui.core.reExecute( obj );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| obj | Object |  | The abstract executable object which should be reexecuted |
| readyFunction? | function |  | Function to be executed once on ready status |
| shouldRefresh? | boolean |  | Set this parameter to "false" if this method should do nothing when the object is already in the ready status. |


**Returns**: {void}
