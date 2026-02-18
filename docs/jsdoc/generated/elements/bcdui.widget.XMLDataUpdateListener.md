# Class XMLDataUpdateListener
<span hidden class='htmlPackage'>bcdui.widget</span>
This listener is an abstract base class for XML listeners registered to a targetModel  and depending on the existence of a specific HTML element. When the HTML element disappears  the listener de-registers itself from the target model.

## Constructor



<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

## Methods


### hasBeenUnRegistered
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {boolean}</span>

Tests, if the class has already unregistered itself from its target model. Thishappens when the listener is called, but the HTML element it is assigned to hasdisappeared.\
**Returns** {boolean}: True, if the class is unregistered.


### unregister
<span style='display: none; font-size: 0.75em' class='htmlSignature' data-id='+docu.name'>() &#x21FE; {void}</span>

This method removes this listener from the targetModel. It is called by the[#callback](#callback.md) method when the listener is triggered and the HTMLelement has disappeared.\
**Returns** {void}