# expandCollapseAll()
<span hidden class='htmlPackage'>bcdui.component.treeView</span>


This function expands or collapses all levels of a treeView.It relies on the @dimId and wrs:Data of the primary model of the renderer to calculate all levelsand sets the guiStatus accordingly.

````js
// Usage
bcdui.component.treeView.expandCollapseAll({ rendererId, isExpand });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The argument map containing the following elements: |
| args.rendererId | string |  | Id of the treeView's renderer |
| args.isExpand | boolean |  | True for expand, false for collapse |


**Returns**: {void}
