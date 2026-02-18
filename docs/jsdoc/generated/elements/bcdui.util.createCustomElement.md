# createCustomElement()
<span hidden class='htmlPackage'>bcdui.util</span>


Custom element creation helper.

````js
// Usage
bcdui.util.createCustomElement( elementName, createdCallback );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| elementName | string |  | The name of the custom element to create, must adhere to custom element standards. |
| createdCallback | function |  | The function which is called on the element once it is attached to the document, the context is set to the element. |


**Returns**: {void}
