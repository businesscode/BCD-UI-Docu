# renderDialogContainer()
<span hidden class='htmlPackage'>bcdui.widget.detailView</span>


renders a details view container for given element, this implementation renders jQuery.dialog,you can override any attributes via extra.dialog object parameter

````js
// Usage
var ret = bcdui.widget.detailView.renderDialogContainer({ targetHtmlElement, referenceElement, containerViewRenderedCb, containerViewRenderedCb, containerViewRenderedCb });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | object |  |  |
| args.targetHtmlElement | DomElement |  | the target element this container is attached to |
| args.referenceElement | DomElement |  | the element this detail container is constructed for |
| args.containerViewRenderedCb | function |  | the function which is called once target container is constructed and argument with following properties is provided: |
| args.containerViewRenderedCb.targetHtmlElement | DomElement |  | the element to render content into, this may be reused so ensure executing .empty() before adding content |
| args.containerViewRenderedCb.referenceElement | DomElement |  | see above<br/>---<br/>specific parameters, which are available in this function,<br/>but is not API contract, i.e. in case you provide your custom<br/>renderViewContainer function<br/>---<br/> extra.dialog{Object}                - extra parameters to jQuery Dialog UI plugin, which are mixed-in at construction time; you overwrite the defaults!<br/> extra.dialog.disableCloseControl    - special param to remove the [close] control from standard ui-dialog bar, so close() can be issued via API/Event only |


**Returns**: {Object} - jQuery object ( container element )
