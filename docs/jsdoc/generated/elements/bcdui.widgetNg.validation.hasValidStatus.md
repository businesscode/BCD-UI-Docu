# hasValidStatus()
<span hidden class='htmlPackage'>bcdui.widgetNg.validation</span>


NO REVALIDATION, just retrieval of current validity state, consideresnative (constraint validation api) state and bcdui-internal ( existence of 'bcdInvalid' class).CSS case has to be considered because browsers native validation implementaion mayswitch validity state so that we cannot detect the change without fully revalidatingthe field.

````js
// Usage
var ret = bcdui.widgetNg.validation.hasValidStatus();
  ````
**Parameters**: _None_

**Returns**: {boolean} - true if valid, false otherwise
