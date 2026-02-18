# translateRelativeURL()
<span hidden class='htmlPackage'>bcdui.util.url</span>


This utility function applies a relative URL to a base URL and returns theresulting URL. It is quite useful to compute for example the value of thexml:base attribute of XIncludes, because the xml:base URL it the model'sdata URL applied to the browser's href. For example if the relativeBaseUrlis "/myProject/reports/myReport.jsp" and the relativeUrl is"../include/data.xml" the result will be "/myProject/include/data.xml".

````js
// Usage
var ret = bcdui.util.url.translateRelativeURL( relativeBaseUrl, relativeUrl );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| relativeBaseUrl | string |  | The URL the relativeUrl is based on. This may be a relative or an absolute URL. |
| relativeUrl | string |  | The relative URL to be resolved. |


**Returns**: {string} - The result of applying the relativeUrl to the relativeBaseUrl.
