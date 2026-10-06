# format()
<span hidden class='htmlPackage'>bcdui.wrs.jsUtil</span>


Mirrors BCD-UI's numberFormatting.xslt formatNumber logic.

````js
// Usage
var ret = bcdui.wrs.jsUtil.format( value, scale, locale, unit );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| value | (string\|number) |  |  |
| scale | (number\|null) |  | A) If abs(scale)&lt; 10 the number of decimal digits. If positive padded with trailing 0.<br/>  B) If abs(scale)> 10 then rounded to the nearest multiple of scale, negative here is only allowed for scale = 10 pow n.<br/>  C) Samples (in US format) for 14990.404: scale 2 -> 1490.40, scale -2 -> 1490.4, scale 1000 -> 15,000, scale -1000 -> 1.5. |
| locale | string |  | 'en' (default) or 'de' |
| unit | string |  | optional unit string. If '%', the value is multiplied by 100 and '%' is appended. Everything else (including ' %') is just appened |


**Returns**: {string}
