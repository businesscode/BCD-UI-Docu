# postWrs()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>



````js
// Usage
bcdui.wrs.wrsUtil.postWrs( args );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | (PostWrsParam\|XMLDocument\|Array.\<XMLDocument>\|bcdui.core.DataProvider\|Array.\<bcdui.core.DataProvider>) |  | DataProvider(s), Document(s) or a parameter object |

Type **PostWrsParam**

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args.wrsDoc | DomDocument |  | Document(s) / DataProvider |
| onSuccess | function |  | Callback on success, is called after successful POST or if POST was not issued due to to changes in the document |
| onFailure | function |  | Callback on failure, is called if error occurs |
| onWrsValidationFailure | function |  | Callback on serverside validate failure, if omitted the onFailure is used in case of validation failures |
| uri | string |  | An URI (i.e. SomeDoc) which is appended as pathInfo to WrsServlet |


**Returns**: {void}
