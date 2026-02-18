# addValidityMessage()
<span hidden class='htmlPackage'>bcdui.widgetNg.validation</span>


appends validity message to validationResult object and returns validationResult,creates a new one if none is provided. message must not be null.

````js
// Usage
var ret = bcdui.widgetNg.validation.addValidityMessage( validationResult, message );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| validationResult | object |  | The validationResult object to extend or null to create a new one, this object is modified. |
| message | (string\|Array.\<string>) |  | Message to append to the validationResult.validationMessage |


**Returns**: {object} - validationResult object with validationMessage array with appended message(s)
