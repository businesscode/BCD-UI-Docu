# Class AutoRefresh
<span hidden class='htmlPackage'>bcdui.core.lifecycle</span>
Support for auto-refreshing a {bcdui.core.DataProvider} in the background and detecting, if new data is available.<br/>After trying to reload every periodSec, args.modifiedIf to see, if new data was sent.<br/>* If the server sent an 'expires' header in the future, our re-load attempts will not even go to the server but befullfilled from the cache.<br/>* If the server sent a 304, we keep using the latest data sent from server.<br/>Both is supported for example by DataRefreshedFilter for example.Once new data was received from the server, args.onModified will be executed.

## Constructor
````js
// Usage
var myAR = new bcdui.core.lifecycle.AutoRefresh({ model });
  ````




<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(args) &#x21FE; {void}</span>


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties: |
| args.model | bcdui.core.DataProvider |  | Model to monitor for updates by calling execute(true) and checking with modifiedIf |
| args.periodSec? | number | 300 | Period in sec how often to query the server |
| args.activeIf? | (boolean\|function) | true | Boolean or function to determine whether we should check for model updates, queries all periodSec. Also see strategies below |
| args.modifiedIf? | (boolean\|function) | strategy.modifiedIf.wrsTs | Function called (with the current AutoRefresh as param) to check whether model was updated. Also see strategies below |
| args.onModified? | function | strategy.onModified.applyAction | Function called (with the current AutoRefresh as param) when new model data is available. Also see strategies below |

#### Examples
````js
let arModel = myCube.getPrimaryModel().getPrimaryModel();new bcdui.core.lifecycle.AutoRefresh({ model: arModel });
````
## Methods


### isActive
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

Check whether we are still active according to args.activeIf\
**Returns** {void}