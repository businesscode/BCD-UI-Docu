# uncompressDOMDocument()
<span hidden class='htmlPackage'>bcdui.core.compression</span>


This function decodes an encoded and compressed XML document passed as the[compressedXmlString()](bcdui.core.compression.compressDOMDocument.md) argument. It can either make the computations on theclient or on the server dependent on the encoding type.

````js
// Usage
var ret = bcdui.core.compression.uncompressDOMDocument( compressedXmlString, id );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| compressedXmlString | string |  | The encoded and compressed XML document to<br/>be reconstructed. |
| id | string |  | id the model will get, a random one i set otherwise |


**Returns**: {bcdui.core.DataProvider} - A DataProvider instance holding theuncompressed data when it is in the Ready state.
