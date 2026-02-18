# invalidModelDataValidator()
<span hidden class='htmlPackage'>bcdui.widgetNg.validation.validators.widget</span>


checks that target data node is not tagged invalid with bcdInvalid attribute. The attributeitself carries the validation-message. This validator shall not be used generally by stickingit to other widget validators, since it does NOT validate widget's validity but the model'svalidity. This validator shall be handled manually by a widget only during SYNC_READ, so thatit is always able to SYNC_WRITE (write back) widget's data to the model. General widget validationAPI supports this case as of widget.validator.validateElement(htmlElementId, checkDataValidity) function.extended widget configuration api used: - config.target.modelId - config.target.xPath

````js
// Usage
bcdui.widgetNg.validation.validators.widget.invalidModelDataValidator();
  ````
**Parameters**: _None_

**Returns**: {void}
