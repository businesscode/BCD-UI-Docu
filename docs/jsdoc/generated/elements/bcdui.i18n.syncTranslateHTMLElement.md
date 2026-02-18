# syncTranslateHTMLElement()
<span hidden class='htmlPackage'>bcdui.i18n</span>


Translates the given over HTML element or the whole documentwithout waiting for i18nModel, we rely on it being loaded and executed before. Ifthe catalog is not initialized up to this moment (the cataloginitialization is asynchronous) then translation is optionally scheduled to a pointwhen the catalog is loaded.

````js
// Usage
bcdui.i18n.syncTranslateHTMLElement({ targetHtml: "#myDiv", elementOrId, catalog, doDefer });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. This is prefered over args.elementOrId |
| args.elementOrId | (HtmlElement\|string) |  | ID or HTML element to translate, default "document" |
| args.catalog | Object |  | Catalog with i18n entries |
| args.doDefer | boolean | true | If true, in case at time of syncTranslateHtmlElement the catalog is not loaded yet, the translation is deferred and re-executed once catalog is loaded |


**Returns**: {void}
