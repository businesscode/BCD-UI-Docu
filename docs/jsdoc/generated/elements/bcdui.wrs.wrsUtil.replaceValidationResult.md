# replaceValidationResult()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Replaces validationResult/Wrs document in the Wrs,the validationDoc can be provided as NULL to remove the validationResult Wrs from previous validation;the validationId is mandatory to provide to uniquelly identify the subject of validation.

````js
// Usage
bcdui.wrs.wrsUtil.replaceValidationResult( wrsRootNode, validationResultNode, validationId );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| wrsRootNode | (DomElement\|DomDocument) |  | Wrs itself or an element containing Wrs (i.e. Wrs document)<br/>                                                         where to replace the validation result in |
| validationResultNode | (DomElement\|DomDocument) |  | wrs:ValidationResult (or container with it) containing wrs:Wrs element(s) (which obligatory is tagged with bcdValidationId attribute)<br/>                                                         if NULL, then the possible existing validationResult is effectively removed from wrs document |
| validationId | string |  | the validationId of the validation result Wrs to replace |


**Returns**: {void}
