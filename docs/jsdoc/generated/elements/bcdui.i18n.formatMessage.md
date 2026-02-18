# formatMessage()
<span hidden class='htmlPackage'>bcdui.i18n</span>


formats message

````js
// Usage
bcdui.i18n.formatMessage( message, values, formattingFunctions );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| message | string |  |  |
| values | Array.\<any> |  | Array values to set |
| formattingFunctions | object |  |  |


**Returns**: {void}

**Example:**
````js
bcdui.i18n.formatMessage( "Successfully updated {0} records in {1,number,#0.00} columns.", [ 3, 2 ] );
````