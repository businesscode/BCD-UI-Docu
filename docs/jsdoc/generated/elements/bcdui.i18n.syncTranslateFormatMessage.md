# syncTranslateFormatMessage()
<span hidden class='htmlPackage'>bcdui.i18n</span>


Assumes bcdui.wkModels.bcdI18nModel is ready and synchronously translates and formats the given message id.

````js
// Usage
var ret = bcdui.i18n.syncTranslateFormatMessage( messageId );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| messageId | (SyncTranslateFormatMessageParam\|string) |  | Either an object with property msgid, or the messageId itself |

Type **SyncTranslateFormatMessageParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| msgid | string |  | the message id |


**Returns**: {string} - translated and formated message
