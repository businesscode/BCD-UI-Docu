# translateHTMLElement()
<span hidden class='htmlPackage'>bcdui.i18n</span>


Translates HTML element and its children according to i18n model values, the method is asynchronous and "schedules" the translation

````js
// Usage
var ret = bcdui.i18n.translateHTMLElement({ targetHtml: "#myDiv", elementOrId, i18nModelId, display });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. This is prefered over args.elementOrId |
| args.elementOrId | (HtmlElement\|string) |  | ID or HTML element to translate, default "document" |
| args.i18nModelId | string |  | model with i18n entries, default "bcdI18nModel" |
| args.display | string |  | original css 'display' value of the HTML element to be set after translation |


**Returns**: {void}
