# createEnhancedConfiguration()
<span hidden class='htmlPackage'>bcdui.component.far.enhancer</span>


Create an enhanced configuration data provider which is required as a configurationfor any part of the FAR component.

````js
// Usage
var ret = bcdui.component.far.enhancer.createEnhancedConfiguration({ config });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  | The arguments |
| args.config | bcdui.core.DataProvider |  | Configuration document from http://www.businesscode.de/schema/bcdui/far-1.0.0 |
| args.componentId? | string | "far" | An ID for the component, 'far' is the default. This is not the data provider's,<br/>                                                           this ID is used as component identifer to support multiple components on single page |
| args.statusModel? | bcdui.core.DataProvider | bcdui.wkModels.guiStatusEstablished | StatusModel, containing the filters at /SomeRoot/f:Filter,<br/>                                                                                           far:Far/far:ConfiguratorLayout element, etc. default is 'guiStatusEstablished' |
| args.chain? | chainDef | /bcdui/js/component/far/config-enhancer.xslt | Overrides default chain definition. |


**Returns**: {bcdui.core.DataProvider} - Dataprovider with enhanced configuration document                                   based on the input configuration. This data provider                                   does not listen to changes on the input configuration                                   document.
