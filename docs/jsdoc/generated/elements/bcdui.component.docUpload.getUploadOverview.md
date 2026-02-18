# getUploadOverview()
<span hidden class='htmlPackage'>bcdui.component.docUpload</span>


Generate a wrs modelwrapper holding overview information for the given scope (optionally limited to instances)The wrs holds 1 row per instance with the information about loaded, needed and missing required documents

````js
// Usage
var ret = bcdui.component.docUpload.getUploadOverview({ scope });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args |  |  | The parameter map contains the following properties: |
| args.scope | string |  | The scope identifier |
| args.id? | string |  | The id of the returned wrs modelwrapper |
| args.instance? | (string\|Array.\<string>) |  | Array or string or space separated string of instance ids in case you want to limit the output |
| args.filterBRefs? | string |  | The space separated list of binding Refs that will be used in filter clause of request document |
| args.config? | bcdui.core.DataProvider | bcdui.wkModels.bcdDocUpload | The model containing the docUpload configuration data. If it is not present the well known bcdui.wkModels.bcdDocUpload is used |


**Returns**: {bcdui.core.DataProvider} - a wrs model holding the overview information
