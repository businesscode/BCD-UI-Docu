# getValue()
<span hidden class='htmlPackage'>bcdui.i18n</span>


synchronously translates i18n key, please always use bcdTranslate attribute on html for i18n whenever possible.bcdui.is18n.isReady() must be true prior calling this, otherwise catalog is not loaded yet. You can wrapyour main init function into bcdui.core.ready() to ensure core resources are initialized prior executing your code.

````js
// Usage
var ret = bcdui.i18n.getValue( key, defaultValue );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| key | string |  | the key to translate |
| defaultValue | string |  | to return in case no translation was found or the i18n model is not ready yet |


**Returns**: {string} - translated or default value
