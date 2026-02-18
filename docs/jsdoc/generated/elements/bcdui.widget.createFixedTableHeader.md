# createFixedTableHeader()
<span hidden class='htmlPackage'>bcdui.widget</span>


Create fixed table header by adding a fixed copy of the originalIts size is derived from the "original" header, still in place for the table

````js
// Usage
bcdui.widget.createFixedTableHeader({ rendererId });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.rendererId | string |  | Id of the renderer to work on |
| args.storeSize? | boolean | true | Decide whether the action is to be called synchronous or not |
| args.enableColumnFilters? | boolean | false | Set to true to enable column filters |
| args.getCaptionForColumnValue? | function |  | if you enabled column filters, you can set its getCaptionForColumnValue here |


**Returns**: {void}
