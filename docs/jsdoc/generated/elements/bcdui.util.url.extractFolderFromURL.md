# extractFolderFromURL()
<span hidden class='htmlPackage'>bcdui.util.url</span>


Gets the folder containing the document identified by the URL. So if theURL is for example "http://xxxxx/root/data.xml" it returns"http://xxxxx/root/". If the URL is already pointing to a folder (endingwith "/") it simply returns this URL.

````js
// Usage
var ret = bcdui.util.url.extractFolderFromURL( url );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| url | string |  | The URL the folder is computed from. |


**Returns**: {string} - The parent folder of the element denoted by the URL orthe URL itself if it is already a folder (ending with slash "/").
