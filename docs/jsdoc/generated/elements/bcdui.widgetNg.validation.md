# Package bcdui.widgetNg.validation

validators package, common API all validators share:validator functions are simple functions taking argument object as parameter and returningeither NULL (for successful validation) or a validationError object in case of a failed validation.the validationErrorObject properties:validationMessage{i18nToken}validation function MUST not run asynchronously! it is expected to block and return once validation is done.the argument object is arbitrary and defined by particular validation function.


----
<h4>Classes</h4>



----
<h4>Functions</h4>



[addValidityMessage()](bcdui.widgetNg.validation.addValidityMessage.md)\
appends validity message to validationResult object and returns validationResult,creates a new one if none is provided.

[hasValidStatus()](bcdui.widgetNg.validation.hasValidStatus.md)\
NO REVALIDATION, just retrieval of current validity state, consideresnative (constraint validation api) state and bcdui-internal ( existence of 'bcdInvalid' class).

[indicateFieldValidity()](bcdui.widgetNg.validation.indicateFieldValidity.md)\
checks the field for validity via html5 constraint validation api and indicateby adding/removing particular CSS classes.

[setCustomValidity()](bcdui.widgetNg.validation.setCustomValidity.md)\
sets custom validity, use html5 constraint validation API ensures that following properties are set properly: (Boolean) validity.valid (Boolean) validity.customError (String)  validationMessage (is set to "INVALID") in case of non-validity.

[validateField()](bcdui.widgetNg.validation.validateField.md)\
this function carries out validation via native html5 constraint validation api (if available and not suppressed)and optionally marks the field as invalid in case customValidationMessages are provided (i.e.

----
<h4>Members</h4>



----
<h4>Subpackages</h4>



[bcdui.widgetNg.validation.validators](bcdui.widgetNg.validation.validators.md)\
Validators for new generation of Widgets.