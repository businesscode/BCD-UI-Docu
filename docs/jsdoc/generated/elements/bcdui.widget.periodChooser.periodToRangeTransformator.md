# periodToRangeTransformator()
<span hidden class='htmlPackage'>bcdui.widget.periodChooser</span>


A transformer, taking the input, leaving everything 1:1 except a period filter, which is transformed to a rangewith the given date or range end as the end and keeping the input period type

````js
// Usage
bcdui.widget.periodChooser.periodToRangeTransformator({ rangeSize, targetModelXPath: "$guiStatus/cust:Elem/@value" });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| parameters |  |  |  |
| parameters.rangeSize | integer |  | Size of the range. |
| parameters.targetModelXPath | string |  | The xPath pointing to the period filter within the transformed document. |


**Returns**: {void}
