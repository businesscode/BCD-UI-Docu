# openDialog()
<span hidden class='htmlPackage'>bcdui.widget</span>


opens a modal dialog ready for renderer and delegates to callbacks from arguments;you can trigger 'dialog-close' event within body to close the dialog programmatically,any argument to this event will be provided to the resolving promise as well as to the 'close'callback.In addition to those parameters described in this documentation you can provide any othervalid parameter according to jQueryUI Dialog Widget API. This dialog returns a Promiseresolving with value provided to 'dialog-close' event, allowing you to easily buildon cascading dialogs utilizing promise chain.

````js
// Usage
var ret = bcdui.widget.openDialog({ open });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  | arguments |
| args.open | function |  | function to execute when dialog is opened, it gets args object with properties: targetHtml |
| args.close? | function |  | function to execute after dialog is closed |
| args.create? | function |  | function to execute when dialog is created |
| args.beforeClose? | function |  | function to execute before dialog is closed - it gets args object with properties: targetHtml; if this function returns false, the dialog is not closed. |
| args.title? | string |  | dialog title |
| args.width? | number | 640 | dialog width; > 1 means absolute size &lt;= 1 means percentage of the current view-port size, i.e. .75 = 75% of view-port size |
| args.width? | number | 320 | dialog height; > 1 means absolute size &lt;= 1 means percentage of the current view-port size, i.e. .75 = 75% of view-port size |


**Returns**: {Promise.<string>} - resolving with value provided from 'dialog-close' event, when dialog is closed.

**Example:**
````js
bcdui.widget.openDialog({  open : (args) => {    new bcdui.core.Renderer({      targetHtml : args.targetHtml, chain : "confirm.buy.dott"    });  },  title : bcdui.i18n.TAG + "confirm.buy"});
````