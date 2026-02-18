# Package bcdui.widgetNg.commons.balloon

A namespace for the BCD-UI balloon widget.


----
<h4>Classes</h4>



----
<h4>Functions</h4>



[attach()](bcdui.widgetNg.commons.balloon.attach.md)\
attaches the balloon to given, focusable element,this function does nothing in case a balloon is already attachedon this element..

[displayHintBalloon()](bcdui.widgetNg.commons.balloon.displayHintBalloon.md)\
permanently displays the hint-balloon for given htmlElementId using thedefault tooltip technique but reposition it (next to the element) as tray-message,you have to hide the the balloon executing general hideHintBalloon()configuration params:- balloonRendererIdconfiguration object is expected to be in the element map: bcdui.widgetNg.commons.balloon.MAPKEY_CONFIG.

[hideHintBalloon()](bcdui.widgetNg.commons.balloon.hideHintBalloon.md)\
hides previously visible balloon.

[messagesToXML()](bcdui.widgetNg.commons.balloon.messagesToXML.md)\
construct XML string out of messages and tooltip dataDTD:BalloonData&lt;Tooltip?,Messages?>Tooltip&lt;CDATA>ValidationMessages&lt;Item+>Item&lt;CDATA>.

----
<h4>Members</h4>



----
<h4>Subpackages</h4>

