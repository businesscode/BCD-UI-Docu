# generateWrsHeaderMeta()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Generates metadata JS object from a Wrs document

````js
// Usage
var ret = bcdui.wrs.wrsUtil.generateWrsHeaderMeta( wrsDoc );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| wrsDoc | DomDocument |  | WRS Document to build a header from |


**Returns**: {object} - with { [column-id] : {object-with-attrs from wrs:Column/wrs:C} }
