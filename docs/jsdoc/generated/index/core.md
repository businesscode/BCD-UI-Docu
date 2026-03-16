# Available Elements in group core
 Note: A detail specification is available for all elements.
 <!-- For LLM: Use tool GetSpecification(elementName) -->

 ## Elements
 | Name | Summary | Remark |
 |------|---------|--------|
 | [AsyncJsDataProvider](../elements/bcdui.core.AsyncJsDataProvider.md) | Allows providing a js callback function for deferred execution which has to execute .setData(data) on provided instance once data is available | Is a DataProvider |
 | [AutoModel](../elements/bcdui.core.AutoModel.md) | An AutoModel is an easy way for loading data from a BindingSet in many cases, using `$guiStatus/guiStatus:Status/f:Filter` per default | Is a DataProvider |
 | [AutoRefresh](../elements/bcdui.core.lifecycle.AutoRefresh.md) | Support for auto-refreshing a {bcdui.core.DataProvider} in the background and detecting, if new data is available |  |
 | [ConstantDataProvider](../elements/bcdui.core.ConstantDataProvider.md) | A data provider for constant values | Is a DataProvider |
 | [DataProviderAlias](../elements/bcdui.core.DataProviderAlias.md) | This class is a wrapper for a DataProvider giving it a new name (not id) and | Is a DataProvider |
 | [DataProviderHolder](../elements/bcdui.core.DataProviderHolder.md) | This acts as a holder for the real DataProvider and behaves like a DataProvider itself | Is a DataProvider |
 | [DataProviderHtmlAttribute](../elements/bcdui.core.DataProviderHtmlAttribute.md) | A DataProvider retrieving its content on getData() from an attribute in the HTML DOM tree. | Is a DataProvider |
 | [DataProviderWithXPath](../elements/bcdui.core.DataProviderWithXPath.md) | Reading a single data item from an XPath on getData() as string | Is a DataProvider |
 | [DataProviderWithXPathNodes](../elements/bcdui.core.DataProviderWithXPathNodes.md) | This class creates a static model with a top level element '<Root/>' and appends all | Is a DataProvider |
 | [JsDataProvider](../elements/bcdui.core.JsDataProvider.md) | Allows providing a custom js callback function returning a value. | Is a DataProvider |
 | [ModelUpdater](../elements/bcdui.core.ModelUpdater.md) | A concrete subclass of TransformationChain, replacing its targetModel's content with the result of the transformation applied to it | Is a DataProvider |
 | [ModelWrapper](../elements/bcdui.core.ModelWrapper.md) | A concrete subclass of TransformationChain, being a DataProvider itself, providing the transformed input. | Is a DataProvider |
 | [OptionsDataProvider](../elements/bcdui.core.OptionsDataProvider.md) | This class creates a static model with a top level element '&lt | Is a DataProvider |
 | [PromptDataProvider](../elements/bcdui.core.PromptDataProvider.md) | This is a data provider showing the user a prompt on each execute() and returning the value the user has entered | Is a DataProvider |
 | [Renderer](../elements/bcdui.core.Renderer.md) | This class renders data to HTML, per default a table view of Wrs, but it does support any kind of input and HTML output when providing a `chain` | Is a Renderer |
 | [RequestDocumentDataProvider](../elements/bcdui.core.RequestDocumentDataProvider.md) | Turns a DataProvider into a URL provider for SimpleModel | Is a DataProvider |
 | [SimpleModel](../elements/bcdui.core.SimpleModel.md) | This class represents the standard case of a model where the data is loaded from a specified URL | Is a DataProvider |
 | [StaticModel](../elements/bcdui.core.StaticModel.md) | Create a StaticModel and provide the data. | Is a DataProvider |
 | [StatusEvent](../elements/bcdui.core.StatusEvent.md) | The constructor creating a new StatusEvent object. |  |
 | [StatusListener](../elements/bcdui.core.StatusListener.md) | An interface that status listeners must implement |  |
 | [StringDataProvider](../elements/bcdui.core.StringDataProvider.md) | A StringDataProvider provides a plain string via getData() | Is a DataProvider |

 ## Auxiliary elements
[createElementWithPrototype](../elements/bcdui.core.createElementWithPrototype.md), [createQueryString](../elements/bcdui.core.createQueryString.md), [getUrlParameter](../elements/bcdui.core.getUrlParameter.md), [quoteXPathString](../elements/bcdui.core.quoteXPathString.md), [ready](../elements/bcdui.core.ready.md), [reExecute](../elements/bcdui.core.reExecute.md), [setUrlParameter](../elements/bcdui.core.setUrlParameter.md), [compression.compressDOMDocument](../elements/bcdui.core.compression.compressDOMDocument.md), [compression.uncompressDOMDocument](../elements/bcdui.core.compression.uncompressDOMDocument.md), [lifecycle.applyAction](../elements/bcdui.core.lifecycle.applyAction.md), [lifecycle.bookmarkAction](../elements/bcdui.core.lifecycle.bookmarkAction.md), [lifecycle.jumpTo](../elements/bcdui.core.lifecycle.jumpTo.md)