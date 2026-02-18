# validate()
<span hidden class='htmlPackage'>bcdui.widgetNg.utils</span>


Asynchronously triggers re-validation of visible widgets within container and focuses on first invalid inputinside the targetHtml.

````js
// Usage
var ret = bcdui.widgetNg.utils.validate( targetHtml );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| targetHtml | targetHtmlRef |  | element to undergo widget validation, selector, element or jQuery object. |


**Returns**: {Promise.<Object>} - resolving to { isValid : true|false }

**Example:**
````js
const form = jQuery('.form');bcdui.widgetNg.utils.validate(form).then((validationResult) => {  if (validationResult.isValid) {    form.submit();  }});
````