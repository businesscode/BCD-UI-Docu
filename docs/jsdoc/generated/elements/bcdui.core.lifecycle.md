# Package bcdui.core.lifecycle

This namespace contains functions related to BCD-UI page lifecycle management.


----
<h4>Classes</h4>



[AutoRefresh](bcdui.core.lifecycle.AutoRefresh.md)\
Support for auto-refreshing a {bcdui.core.DataProvider} in the background and detecting, if new data is available.<br/>After trying to reload every periodSec, args.modifiedIf to see, if new data was sent.<br/>* If the server sent an 'expires' header in the future, our re-load attempts will not even go to the server but befullfilled from the cache.<br/>* If the server sent a 304, we keep using the latest data sent from server.<br/>Both is supported for example by DataRefreshedFilter for example.

----
<h4>Functions</h4>



[applyAction()](bcdui.core.lifecycle.applyAction.md)\
Takes the current guiStatus and re-invokes the current page with it<code>/guiStatus:Status/guiStatus:ClientSettings</code> is removed as it only serves for temporary information.

[bookmarkAction()](bcdui.core.lifecycle.bookmarkAction.md)\
Creates a bookmark entry for the current page + guiStatus.

[jumpTo()](bcdui.core.lifecycle.jumpTo.md)\
Jumps to another url optionally setting status document, this function is executed asynchronously..

[switchToMainUrl()](bcdui.core.lifecycle.switchToMainUrl.md)

----
<h4>Members</h4>



----
<h4>Subpackages</h4>

