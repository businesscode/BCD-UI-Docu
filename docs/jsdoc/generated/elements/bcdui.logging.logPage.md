# logPage()
<span hidden class='htmlPackage'>bcdui.logging</span>


Useful for performance testing.<p/>Sends a log message with the duration since start of page load to the server perf-log table, once a certain set of DataProviders or all current Renderers are readyUse this for example to trace the duration from page loading start to the end of load of a major or all Renderers to be shown to the user.<p/>Well-known bindingSet bcd_log_pageperformance must be available for using this.

````js
// Usage
bcdui.logging.logPage({ idRef });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map containing |
| args.idRef | Array.\<string> |  | Id(s) of DataProvider(s) to wait for, or wait for all renderers registered at the moment of [bcdui.core.ready](bcdui.core.ready.md) |
| args.logName? | string |  | If provided, this is the name for which the log is written. If not given, idRef is used |
| args.addInfo? | string |  | Optionally any text that should be also logged |
| args.jsCallback? | function |  | A callback function can be supplied which is triggered once the log has captured data.<br/>The callback is called with a parameter object with a duration property, indicating the logged duration |


**Returns**: {void}
