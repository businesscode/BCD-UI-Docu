# showModalBox()
<span hidden class='htmlPackage'>bcdui.widget</span>


Open and show modalbox

````js
// Usage
bcdui.widget.showModalBox();
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.title? | string |  | Modal box title. You can also use titleTranslate. |
| args.titleTranslate? | string |  | It will be used as i18n key to translate the title. |
| args.message? | string |  | Modal box message. You can also use messageTranslate. |
| args.messageTranslate? | string |  | It will be used as i18n key to translate the message. |
| args.modalBoxType? | integer | 0 | One of three types modalBoxTypes.ok, modalBoxTypes.warning, modalBoxTypes.error. By default = modalBoxTypes.ok |
| args.width? | integer | 300 | Width of modal box. 300 by default |
| args.height? | integer |  | Height of modal box. auto by default |
| args.onclick? | string |  | Optional js function which is called after closing the modal box |
| args.position? | string |  | jQuery position parameter bag. Default is center top |
| args.htmlElementId? | string |  | Id of a html segment which is taken as messagebox instead. ModalBoxType is ignored in this case. |


**Returns**: {void}
