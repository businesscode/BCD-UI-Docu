# classifyLink()
<span hidden class='htmlPackage'>bcdui.util.url</span>


Classifies a link as either internal, external, or injection (i.e. usually dangerous).

````js
// Usage
var ret = bcdui.util.url.classifyLink( href );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| href | string |  | The link to check |


**Returns**: {string} - One of bcdui.util.url.CLASSIFY_LINK_RESULT: 'injection' | 'internal' | 'external'

**Example:**
````js
if( bcdui.util.url.classifyLink(url) === bcdui.util.url.CLASSIFY_LINK_RESULT.SAFE_EXTERNAL ) warnOpen(url);
````