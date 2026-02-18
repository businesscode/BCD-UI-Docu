# parseFilterExpression()
<span hidden class='htmlPackage'>bcdui.wrs.wrsUtil</span>



````js
// Usage
var ret = bcdui.wrs.wrsUtil.parseFilterExpression( expression, params );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| expression | string |  | the expression to parse |
| params | object |  | the expression to parse |


**Returns**: {DomDocument} - containing parsed expression

**Example:**
````js
bcdui.wrs.wrsUtil.parseFilterExpression("country = :country or (revenue >= :revenue or today = :today and allow='true' or string='a and b')",{    country:"DE",    revenue:1000,    today:"2018-12-09"  });    // yields following result document  &lt;f:And xmlns:f="http://www.businesscode.de/schema/bcdui/filter-1.0.0">   &lt;f:Or>     &lt;f:Expression bRef="country" op="=" value="DE"/>     &lt;f:Or>       &lt;f:Or>         &lt;f:Expression bRef="revenue" op="&gt;=" value="1000"/>         &lt;f:And>           &lt;f:Expression bRef="today" op="=" value="2018-12-09"/>           &lt;f:Expression bRef="allow" op="=" value="true"/>         &lt;/f:And>       &lt;/f:Or>       &lt;f:Expression bRef="string" op="=" value="a and b"/>     &lt;/f:Or>   &lt;/f:Or>  &lt;/f:And>
````