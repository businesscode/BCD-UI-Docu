# Package bcdui.core.magicChar

These are named magic UTF-8 constants, defined by BCD-UI. When referring to it in xml, use &#xE0F0;


----
<h4>Classes</h4>



----
<h4>Functions</h4>



----
<h4>Members</h4>



**dimEmpty** {string}\
Indicates a null dimension value in expressions like "DE|\uE0F0" for DE-total or simple an empty station value

**dimNull** {string}\
Indicates that the null in the expression above stands for a real null in the data

**dimTotal** {string}\
Indicates that the null in the expression above stands for a null due to aggregation level (grouping=1)

**measureGTC** {string}\
Grand total column

**measureSTC** {string}\
Sub total column

**measureGTR** {string}\
Grand total row

**measureSTR** {string}\
Subtotal row

**separator** {string}\
Used when concatenating strings as a separator which cannot (should not) appear in any data

**nonWord** {string}\
Used in expressions similar to zin(), i.e. a null should become a value which cannot (should not) appear in any data and is also != separator

----
<h4>Subpackages</h4>

