# getNextIdentifier()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>


Retrieves next identifier from the server (async)

````js
// Usage
bcdui.wrs.wrsUtil.getNextIdentifier({ scope, onSuccessCb });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | Parameter object with the following properties |
| args.scope | string |  | The scope requested |
| args.onSuccessCb | function |  | The callback, receives following args<br/><ul><br/> <li>scope           {string}    - Requested scope<br/> <li>isRange         {boolean}   - false if blockSize = 1, true otherwise<br/> <li>forEach:        {function}  - Helper iterating function, executing a passed function for each identifier; follows forEach() JS API spec; <br/> <li>nextIdentifier  {integer}   - The next identifier; ONLY defined if isRange = false; otherwise undefined<br/> <li>firstIdentifier {integer}   - First identifier; ONLY defined if isRange = true; otherwise undefined<br/> <li>lastIdentifier  {integer}   - Last identifier; ONLY defined if isRange = true; otherwise undefined<br/></ul> |
| args.blockSize? | integer | 1 | Number of identifiers to be retrieved |
| args.onErrorCb? | function |  | An error callback |


**Returns**: {void}
