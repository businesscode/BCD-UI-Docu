# Class LoadFailedStatus
<span hidden class='htmlPackage'>bcdui.core.status</span>
An generic error status which is reached when loading an XML document has failed.

_Extends_ [bcdui.core.Status](bcdui.core.Status.md)
## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

## Methods


### equals
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

Test the status for logical equivalence to another status object. Usuallythis function should test if the target status is of the same class asthis status. \
_Overrides_ bcdui.core.Status#equals\
**Returns** {boolean}: True, if the specified status object represents the samelogical status as the current one.


### getCode
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
 \
_Overrides_ bcdui.core.Status#getCode\
**Returns** {string}: A short code for the Status which can be used for debugging.


### getDescription
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
 \
_Overrides_ bcdui.core.Status#getDescription\
**Returns** {string}: A longer description of the Status.


### toString
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
 \
_Overrides_ bcdui.core.Status#toString\
**Returns** {string}: A debug string summarizing this status object.