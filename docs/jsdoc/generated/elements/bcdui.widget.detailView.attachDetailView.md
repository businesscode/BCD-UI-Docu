# attachDetailView()
<span hidden class='htmlPackage'>bcdui.widget.detailView</span>



````js
// Usage
var ret = bcdui.widget.detailView.attachDetailView({ targetHtmlElement, targetRenderer, consumeEvent, childElementSelector, event, filterFunction, filterFunction, eventContext, renderViewContainerFunction, renderViewContainerFunction, renderViewContainerFunction, renderViewContainerFunction, renderViewContainerFunction, renderViewContainerFunction, renderViewContainerFunction, renderViewContainerFunctionParamsFactory, containerViewRenderedCb });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args |  |  |  |
| args.targetHtmlElement | (string\|Element) |  | to attach listener to |
| args.targetRenderer | (string\|bcdui.core.Renderer) |  | optional the target renderer, targetHtmlElement has precedence |
| args.consumeEvent | boolean |  | optional, default is: FALSE, consumes the event or allow propagation |
| args.childElementSelector | string |  | filter (jQuery) compatible for filtering on nested children, default is "tbody tr" |
| args.event | string |  | event to attach on , default is 'dblclick' |
| args.filterFunction | function |  | a filter function to check on target element if to pass, default is a filter<br/>                                         function expecting targetElement to have 'bcdrowident' attribute<br/>                                         this function shall return TRUE of FALSE, an argument is provided to the function<br/>                                         containing following properties: |
| args.filterFunction.eventContext.event | string |  | the event |
| args.eventContext.targetElement | DomElement |  | the target element where event has occurred |
| args.renderViewContainerFunction | function |  | a function which renders the view container, the default implementation is |
| args.renderViewContainerFunction.renderDialogContainer, | function |  | please refer to docs for more infos, arguments passed to this function: |
| args.renderViewContainerFunction.factoryArgs | Object |  | the initial factory args which were provided attachDetailView() function, may be null |
| args.renderViewContainerFunction.eventContext.event | Object |  | the event object which triggered this function, may be null |
| args.renderViewContainerFunction.eventContext.targetElement | DomElement |  | the target element which event occurred, may be null |
| args.renderViewContainerFunction.referenceElement | DomElement |  | is eventContext.targetElement |
| args.renderViewContainerFunction.targetHtmlElement | DomElement |  | element to attach view container on |
| args.renderViewContainerFunctionParamsFactory | function |  | factory for additional params which are mixed-in to the argument of renderViewContainerFunction()<br/>                                                     available through extra.* property; this function gets same arguments as 'renderViewContainerFunction' |
| args.containerViewRenderedCb | function |  | a function which is called by renderViewContainerFunction() once container is contructed |


**Returns**: {(Object|void)} - args, additionally contains .unbind() function which stops this handler working; when called that function, you have to attachDetailView() again
