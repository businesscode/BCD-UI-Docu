# cloneElementContent()
<span hidden class='htmlPackage'>bcdui.util.xml</span>


Copies all child elements and attributes from a source XML element to a targetXML element.

````js
// Usage
var ret = bcdui.util.xml.cloneElementContent( targetElement, sourceElement );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| targetElement | HtmlElement |  | The element the content (child elements + attributes) of the<br/>source element should be copied to. |
| sourceElement | HtmlElement |  | The source for the elements and attributes copied under the<br/>target element. |


**Returns**: {DomElement} - The targetElement.
