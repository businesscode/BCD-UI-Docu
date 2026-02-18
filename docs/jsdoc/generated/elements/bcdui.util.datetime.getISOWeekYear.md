# getISOWeekYear()
<span hidden class='htmlPackage'>bcdui.util.datetime</span>


Calculates The year of the ISO week the date lies within. This can be different fromthe year of the date, especially when the year has 53 ISO weeks.

````js
// Usage
var ret = bcdui.util.datetime.getISOWeekYear( date );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| date | (Date\|string) |  | date for which to determine the CW |


**Returns**: {integer} - cwYr
