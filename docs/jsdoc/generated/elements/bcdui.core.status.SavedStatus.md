# Class SavedStatus
package bcdui.core.status

This status is reached after data has been sent to the server.

_Extends_ [bcdui.core.Status](bcdui.core.Status.md)
## Constructor

---

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### equals
equals() &#x21FE; {boolean}


Test the status for logical equivalence to another status object. Usuallythis function should test if the target status is of the same class asthis status. \
_Overrides_ bcdui.core.Status#equals\
**Returns** {boolean}: True, if the specified status object represents the samelogical status as the current one.


### getCode
getCode() &#x21FE; {string}

 \
_Overrides_ bcdui.core.Status#getCode\
**Returns** {string}: A short code for the Status which can be used for debugging.


### getDescription
getDescription() &#x21FE; {string}

 \
_Overrides_ bcdui.core.Status#getDescription\
**Returns** {string}: A longer description of the Status.


### toString
toString() &#x21FE; {string}

 \
_Overrides_ bcdui.core.Status#toString\
**Returns** {string}: A debug string summarizing this status object.