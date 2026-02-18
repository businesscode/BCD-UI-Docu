# applyAction()
<span hidden class='htmlPackage'>bcdui.core.lifecycle</span>


Takes the current guiStatus and re-invokes the current page with it<code>/guiStatus:Status/guiStatus:ClientSettings</code> is removed as it only serves for temporary information

````js
// Usage
bcdui.core.lifecycle.applyAction();
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  |  |
| args.cleanXPath? | boolean |  | Additional XPath to be cleaned from the guiStatus |
| args.validateFilters? | boolean | false | True or false whether or not to check IsValid flags of guiStatus filters |
| args.statusDocument? | DomDocument | bcdui.wkModels.guiStatus | optionally, other statusDocument than guiStatus |
| args.removeAllParams? | boolean | false | True or false whether or not to remove all url parameters first |


**Returns**: {void}
