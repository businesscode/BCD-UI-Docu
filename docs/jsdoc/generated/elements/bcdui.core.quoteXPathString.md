# quoteXPathString()
<span hidden class='htmlPackage'>bcdui.core</span>


Quotes a string so that it can be used within an XPath for selectNodes /selectSingleNode. For example the string   myValuebecomes   'myValue'. The quotes are automatically added so that it is a valid XPath string.

````js
// Usage
var ret = bcdui.core.quoteXPathString( str );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| str | string |  | The string to be quotes as an XPath string. |


**Returns**: {string} - The XPath string representing str.
