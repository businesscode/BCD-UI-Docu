# Class Status
<span hidden class='htmlPackage'>bcdui.core</span>
An abstract base class, representing a Status.See [bcdui.core.status](bcdui.core.status.md) for concrete sub classes.

## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

## Methods


### equals
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>(status) &#x21FE; {boolean}</span>

Test the status for logical equivalence to another status object. Usuallythis function should test if the target status is of the same class asthis status.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| status | bcdui.core.Status |  | The status object to compare with. |

**Returns** {boolean}: True, if the specified status object represents the samelogical status as the current one.


### getCode
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
\
**Returns** {string}: A short code for the Status which can be used for debugging.


### getDescription
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
\
**Returns** {string}: A longer description of the Status.


### toString
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {string}</span>
\
**Returns** {string}: A debug string summarizing this status object.