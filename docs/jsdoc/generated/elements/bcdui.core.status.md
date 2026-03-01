# Class Status
package bcdui.core

An abstract base class, representing a Status.See [bcdui.core.status](bcdui.core.status.md) for concrete sub classes.

## Constructor

---

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### equals
equals(status) &#x21FE; {boolean}


Test the status for logical equivalence to another status object. Usuallythis function should test if the target status is of the same class asthis status.

| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| status | bcdui.core.Status |  | The status object to compare with. |

**Returns** {boolean}: True, if the specified status object represents the samelogical status as the current one.


### getCode
getCode() &#x21FE; {string}

\
**Returns** {string}: A short code for the Status which can be used for debugging.


### getDescription
getDescription() &#x21FE; {string}

\
**Returns** {string}: A longer description of the Status.


### toString
toString() &#x21FE; {string}

\
**Returns** {string}: A debug string summarizing this status object.