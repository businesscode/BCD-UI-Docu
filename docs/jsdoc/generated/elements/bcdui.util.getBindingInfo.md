# getBindingInfo()
<span hidden class='htmlPackage'>bcdui.util</span>


returns an object map holding information for a binding's items (id, description and type)

````js
// Usage
bcdui.util.getBindingInfo( bindingSetId, bRefs, callback );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| bindingSetId | string |  | The id of the binding set |
| bRefs | (string\|Array.\<string>) |  | requested binding items. Can be a comma-separated value list or an array |
| callback | function |  | The function which is called after a successful call of the BindingInfo servlet and returns the collected data |


**Returns**: {void}
