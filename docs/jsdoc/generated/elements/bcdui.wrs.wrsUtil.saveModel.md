# saveModel()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Save Wrs data of a [bcdui.core.DataProvider](bcdui.core.DataProvider.md)

````js
// Usage
bcdui.wrs.wrsUtil.saveModel({ model });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties: |
| args.model | (string\|bcdui.core.DataProvider) |  | DataProvider (or its id), holding the Wrs with wrs:R|I|M|D row and wrs:C|O column nodesto be saved |
| args.reload? | boolean | false | Useful especially for models of type SimpleModel for refreshing from server after save |
| args.onSuccess? | function |  | Callback after saving (and optionally reloading) was successfully finished |


**Returns**: {void}
