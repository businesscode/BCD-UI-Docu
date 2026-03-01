# Class XMLDataUpdateListener
package bcdui.widget

This listener is an abstract base class for XML listeners registered to a targetModel  and depending on the existence of a specific HTML element. When the HTML element disappears  the listener de-registers itself from the target model.

## Constructor

---

<!-- LLM_HINT DETAILS_STARTING -->
## Methods


### hasBeenUnRegistered
hasBeenUnRegistered() &#x21FE; {boolean}


Tests, if the class has already unregistered itself from its target model. Thishappens when the listener is called, but the HTML element it is assigned to hasdisappeared.\
**Returns** {boolean}: True, if the class is unregistered.


### unregister
unregister() &#x21FE; {void}


This method removes this listener from the targetModel. It is called by the[#callback](#callback.md) method when the listener is triggered and the HTMLelement has disappeared.\
**Returns** {void}