# indicateFieldValidity()
<span hidden class='htmlPackage'>bcdui.widgetNg.validation</span>


checks the field for validity via html5 constraint validation api and indicateby adding/removing particular CSS classes. The classes are always added, even in casenative validation is supported (via :invalid pseudo class)

````js
// Usage
var ret = bcdui.widgetNg.validation.indicateFieldValidity();
  ````
**Parameters**: _None_

**Returns**: {boolean} - TRUE if validation message has been placed, so field is not valid, false otherwise.
