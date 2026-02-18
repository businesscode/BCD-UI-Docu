# asyncCreateXsltProcessor()
<span hidden class='htmlPackage'>bcdui.core.browserCompatibility</span>


Asynchronous creation of an XSLTProcessor object from a DOM document.

````js
// Usage
bcdui.core.browserCompatibility.asyncCreateXsltProcessor({ model, callBack, callerDebug });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  | An argument map containing the following elements: |
| args.model | DomDocument |  | The XSLT document the XSLTProcessor instance should be |
| args.callBack | function |  | The callback function executed when the processor has been created. It takes the processor instance as argument |
| args.callerDebug | string |  | Additional (debug) information from the caller for logging |


**Returns**: {void}
