# parseDate()
<span hidden class='htmlPackage'>bcdui.util.datetime</span>


Parses a date if the argument is a string or returns the date otherwise. Thedate can be in XML date or timestamp format.

````js
// Usage
var ret = bcdui.util.datetime.parseDate( date );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| date | (Date\|string) |  | The date object to be parsed. |


**Returns**: {Date} - The parsed date or the "date" argument if it is already a date object.
