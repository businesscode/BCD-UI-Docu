# createElementWithPrototype()
<span hidden class='htmlPackage'>bcdui.util.xml</span>


This function works similar to selectSingleNode in that executes an XPathon a DOMDocument or XML element and returns an XML element. However if theelement does not exists it creates XML elements on the XPath so that the XPathreturns an element afterwards. For example if the document contains only a rootelement and the path is<pre>
         /Root/Filter[@name = 'abc']/Item</pre>it does the following:<ol>  <li>create an element "Filter" under the root node,</li>  <li>set an attribute "name" with content "abc" on it,</li>  <li>create an Item under it,</li>  <li>return the Item. So the XPath "/Root/Filter[@name = 'abc']/Item" can be      regarded as an XML prototype that is created if the element does not      exist.</li></ol></p><p>Please note that this function accepts only a very limited set ofXPaths because otherwise the inversion of the XPath would be too complicatedto be computed. For example it is not allowed to specify "//" in the XPathand the "or" conjunction cannot be used.</p>

````js
// Usage
var ret = bcdui.util.xml.createElementWithPrototype( baseElement, path );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| baseElement | (DomDocument\|DomElement\|bcdui.core.DataProvider) |  | The DOM document or the XML element the path is evaluated on. |
| path | (modelXPath\|string) |  | The XPath identifying the element to be retrieved or<br/>created. |
| enableWrsExtensions? | boolean | true | Set this flag to "true" if the function should treat<br/>wrs elements differently (like converting wrs:R to wrs:M or creating wrs:I<br/>elements). It is "true" by default. |


**Returns**: {DomElement} - The XML element to be found under the specified XPath.
