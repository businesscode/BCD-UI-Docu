# executeXSLT()
<span hidden class='htmlPackage'>bcdui.factory</span>


Executes a transformation chain producing an XML document. Then it replaces the XMLdocument of the specified target DataProvider with the generated XML document. Thisis useful when the target DataProvider should be initialized with some client-sidecomputed values. The behavior of the function is similar to the createModelWrapperfunction and therefore it inherits all parameters from it. The only additionalparameter required is the "targetModel" parameter described below.

````js
// Usage
bcdui.factory.executeXSLT({ targetModel });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args |  |  | The parameter map |
| args.targetModel | (bcdui.core.DataProvider\|SymLink\|string) |  | The ID of the Model<br/>         (DataProvider) whose content is supposed to be transformed. |
| args.chain? | (bcdui.core.DataProvider\|SymLink\|string) |  | from modelWrapper - A DataProvider (or SymLink or<br/>         its ID) which contains the list of style sheets that make up the<br/>         transformation chain of this renderer. This DataProvider must<br/>         contain an XML document satisfying the XML Schema 'chain-1.0.0.xsd'.<br/>         The 'url' and 'chain' parameters are mutually exclusive. |
| args.url? | string |  | from modelWrapper - This parameter can be set when the renderer should only<br/>         apply one single XSLT style sheet. It contains the URL pointing to<br/>         it. If this parameter is set the 'chain' parameter must be omitted. |
| args.inputModel? | (bcdui.core.DataProvider\|SymLink) |  | from modelWrapper - The DataProvider instance that<br/>         becomes the input of the transformation chain. If omitted the first<br/>         element of the dataProviders[] array is the input. |
| args.dataProviders? | (bcdui.core.DataProvider\|Array.\<SymLink>) |  | from modelWrapper - An array of DataProviders passed to<br/>         the transformation chain. These data providers can be access in the<br/>         transformation style sheets with xsl:param. |
| args.parameters? | Object |  | from modelWrapper - A mapping from parameter names to DataProviders (or<br/>         SymLinks) which are passed to the transformation chain. This is a more<br/>         convenient way to pass parameters compared to the dataProviders array. |


**Returns**: {void}

**Example:**
````js
bcdui.factory.executeXSLT({
        targetModel    : myModel,
        url            : "../../insertValues.xslt",
        parameters     : { rowCount: 5 },
      });
````