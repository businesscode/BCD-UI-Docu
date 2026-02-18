# fillBucketModel()
<span hidden class='htmlPackage'>bcdui.component.cube.configuratorDND</span>


Used for initial filling but can also be used to reinitialize bucket model (e.g. after hiding selectable measures)

````js
// Usage
bcdui.component.cube.configuratorDND.fillBucketModel( cubeBucketModelId, configId );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| cubeBucketModelId | string |  | The id of the cubeBucketModel |
| configId | string |  | The id of the used configuration |
| noClear? | boolean | false | true if current selection should not get changed |
| callback? | function |  | callback function which is called as soon as bucketModel is fully filled |


**Returns**: {void}
