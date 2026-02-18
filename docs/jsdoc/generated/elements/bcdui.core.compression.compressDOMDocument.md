# compressDOMDocument()
<span hidden class='htmlPackage'>bcdui.core.compression</span>


Compresses a DOMDocument and encodes it in a string. This string can then be addedto the URL to pass the DOMDocument to another page. Whenever possible this functiontries to do the compression and encoding on the client. However if the client-sideencoding is too big it makes a server request to get a more compact encoding.URL length limits for GET in chars:<ul>  <li>IE       - 2048  <li>FF       - 65536  <li>Webkit   - 80000  <li>Opera    - 190000  <li>Tomcat/Apache  - 8190 overall, including url, header etc</ul>therefore max guiStatusGZ length:max URL length minus path length

````js
// Usage
bcdui.core.compression.compressDOMDocument( doc, fn );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| doc | DomDocument |  | The DOM document to be compressed. |
| fn | function |  | The callback function executed when the compression succeeds. This<br/>function gets a string argument with the compressed document. |
| errorFn? | function |  |  |
| isSync? | boolean | false | If set to true the compression is forced to call the callback *fn* synchronously,<br/>i.e. keeping the event call stack, etc |
| compressAll? | boolean | false | I f set to true 'tiny' compression is taken into account even for non guiStatus docs |


**Returns**: {void}
