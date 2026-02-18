# exportWysiwygAsPdf()
<span hidden class='htmlPackage'>bcdui.component.exports</span>


Produces a WYSIWYG pdf export of a windows.document subtree, needs pdf extension, part of EnterpriseEdition

````js
// Usage
bcdui.component.exports.exportWysiwygAsPdf({ rootElement });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties: |
| args.rootElement | (string\|HtmlElement) |  | The id of or the root element itself |
| args.fileName? | string | report.pdf | The name of the returned pdf |
| args.css? | (Array.\<string>\|string) |  | An array or space separated list of URLs containing CSS files to be used, relative the the current page.<br/>This allows using different styling on export than on the page. You can also use an bcdPdfStyle for inline style only to be applied on export.<br/>Absolute paths starting with '/' are relative to the context path. Use more specific rule precedence. (css precedence based on later declaration is not supported).<br/>Local css are being cached. |
| args.orientationLandscape? | boolean | false | Set this flag to true to make the PDF appear in landscape page orientation |
| args.dimension? | string | A4 | Physical dimension of the output like 'A5' or 'LETTER', default is A4. |


**Returns**: {void}

**Example:**
````js
bcdui.component.exports.exportWysiwygAsPdf( { rootElement: "myReportDiv", css: ["/bcdui/theme/css/allStyles.css", "my.css"] } );
````