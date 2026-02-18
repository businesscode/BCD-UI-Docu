# bookmarkAction()
<span hidden class='htmlPackage'>bcdui.core.lifecycle</span>


Creates a bookmark entry for the current page + guiStatus

````js
// Usage
bcdui.core.lifecycle.bookmarkAction();
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  |  |
| args.proposedName? | Object | document.title | Name of the bookmark |
| args.cleanClientSettings? | Object | true | True or false whether or not to clean /guiStatus:Status/guiStatus:ClientSettings from the $guiStatus |
| args.cleanXPath? | Object |  | Additional XPath to be cleaned from the guiStatus, useful for removing current period filter for example |


**Returns**: {void}
