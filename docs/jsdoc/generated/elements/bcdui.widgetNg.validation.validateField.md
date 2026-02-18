# validateField()
<span hidden class='htmlPackage'>bcdui.widgetNg.validation</span>


this function carries out validation via native html5 constraint validation api (if available and not suppressed)and optionally marks the field as invalid in case customValidationMessages are provided (i.e.already has been validation with custom validators), additionally it displays the validationMessagesto the user. Also resets the field to valid if neither customValidationMessages has been provided nornative validation has returned negative result.

````js
// Usage
var ret = bcdui.widgetNg.validation.validateField( htmlElementId, customValidationMessages );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| htmlElementId | (string\|Element) |  | validatable element |
| customValidationMessages | Array.\<string> |  | An array of custom validation messages to display for this element (optional) |
| skipNativeValidation? | boolean | false | If you want to skip implicit, native html5 validation on the element. |


**Returns**: {boolean} - TRUE if field has been validated and has no errors, false otherwise
