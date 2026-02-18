# exportWysiwygAsExcel()
<span hidden class='htmlPackage'>bcdui.component.exports</span>


Produces a WYSIWYG Excel export of a windows.document subtree

````js
// Usage
bcdui.component.exports.exportWysiwygAsExcel({ rootElement });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties: |
| args.rootElement | (string\|HtmlElement) |  | The id of or the root element itself |
| args.fileName? | string | "export(_timestamp).xsl" | The name of the returned Excel document |


**Returns**: {void}
