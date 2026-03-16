# Package bcdui.core

This package contains the BCDUI core components.It is composed of three blocks of functionality:                                                                            <dl><dt>  Core Classes                                                              </dt><dd><p>        The core classes are the foundation for most BCDUI objects        on the page. The processes these objects are reflecting are        running  asynchronously and implemented in the form of a        state-machine behaviour. The central interface for these        classes is the [bcdui.core.DataProvider](bcdui.core.DataProvider.md) interface.                                                                            </p></dd><dt>  Page Lifecycle Support                                                    </dt><dd><p>        These are functions dealing with the loading of XML and        creating and executing XSLT, provided by the central        [bcdui.core.xmlLoader](bcdui.core.xmlLoader.md) object. Additionally there        are function for managing page status. This status is        encapsulated in the [guiStatus](guiStatus.md) object which can be        compressed and uncompressed to transport it in URLs and        browser bookmarks.                                                                            </p></dd><dt>  Utility functions                                                         </dt><dd><p>        The core package provides lots of utility functions to        support XML processing, enhance cross-browser compatibility        and to simplify JavaScript development. Most of these        functions are located directly under the bcdui.core namespace.                                                                            </p></dd></dl></p><p>The functions and classes provided here can be used directly or theycan be accessed through a higher architecture layer such as the[bcdui.factory](bcdui.factory.md) namespace.</p>


----
<h4>Classes</h4>



[AsyncJsDataProvider](bcdui.core.AsyncJsDataProvider.md)\
Allows providing a js callback function for deferred execution which has to execute .setData(data) on provided instance once data is available.<p/>As all DataProviders, AsyncJsDataProvider will not become ready until data is available, i.e.

[AutoModel](bcdui.core.AutoModel.md)\
An AutoModel is an easy way for loading data from a BindingSet in many cases, using `$guiStatus/guiStatus:Status/f:Filter` per default.

[ConstantDataProvider](bcdui.core.ConstantDataProvider.md)\
A data provider for constant values.

[DataProviderAlias](bcdui.core.DataProviderAlias.md)\
This class is a wrapper for a DataProvider giving it a new name (not id) andreducing its states to only initialized and loaded.

[DataProviderHolder](bcdui.core.DataProviderHolder.md)\
This acts as a holder for the real DataProvider and behaves like a DataProvider itself.

[DataProviderHtmlAttribute](bcdui.core.DataProviderHtmlAttribute.md)\
A DataProvider retrieving its content on getData() from an attribute in the HTML DOM tree..

[DataProviderWithXPath](bcdui.core.DataProviderWithXPath.md)\
Reading a single data item from an XPath on getData() as string.

[DataProviderWithXPathNodes](bcdui.core.DataProviderWithXPathNodes.md)\
This class creates a static model with a top level element '<Root/>' and appends all the elements that are found by xpath as children.

[HTML2XMLDataProvider](bcdui.core.HTML2XMLDataProvider.md)

[JsDataProvider](bcdui.core.JsDataProvider.md)\
Allows providing a custom js callback function returning a value..

[ModelUpdater](bcdui.core.ModelUpdater.md)\
A concrete subclass of [TransformationChain](bcdui.core.TransformationChain.md), replacing its targetModel's content with the result of the transformation applied to it.

[ModelWrapper](bcdui.core.ModelWrapper.md)\
A concrete subclass of [TransformationChain](bcdui.core.TransformationChain.md), being a DataProvider itself, providing the transformed input..

[OptionsDataProvider](bcdui.core.OptionsDataProvider.md)\
This class creates a static model with a top level element '&lt;cust:Options/>' and appends all the elements that are found by xpath as children (as element '&lt;cust:Option value="v" caption="x"/>').

[PromptDataProvider](bcdui.core.PromptDataProvider.md)\
This is a data provider showing the user a prompt on each execute() and returning the value the user has entered.

[Renderer](bcdui.core.Renderer.md)\
This class renders data to HTML, per default a table view of Wrs, but it does support any kind of input and HTML output when providing a `chain`.

[RequestDocumentDataProvider](bcdui.core.RequestDocumentDataProvider.md)\
Turns a DataProvider into a URL provider for SimpleModel.<p/>We do reflect the status of the requestModel transparently as we are just glueware.

[SimpleModel](bcdui.core.SimpleModel.md)\
This class represents the standard case of a model where the data is loaded from a specified URL.

[StaticModel](bcdui.core.StaticModel.md)\
Creates a model from fixed data without accessing the network.</p>As opposed to most DataProviders, execute() of a StaticModel is guaranteed to be synchronous except when using model updaters.

[StatusEvent](bcdui.core.StatusEvent.md)\
Represents a status event thrown to status listeners of [DataProviders](bcdui.core.DataProvider.md), see [bcdui.core.AbstractExecutable#removeStatusListener](bcdui.core.AbstractExecutable#removeStatusListener.md) and [bcdui.core.StatusListener](bcdui.core.StatusListener.md).

[StatusListener](bcdui.core.StatusListener.md)\
An interface that status listeners must implement.

[StringDataProvider](bcdui.core.StringDataProvider.md)\
A StringDataProvider provides a plain string via getData().

----
<h4>Functions</h4>



[createElementWithPrototype()](bcdui.core.createElementWithPrototype.md)\
This function works similar to selectSingleNode in that executes an XPathon a DOMDocument or XML element and returns an XML element.

[createQueryString()](bcdui.core.createQueryString.md)\
encode parameters into a query-string.

[getUrlParameter()](bcdui.core.getUrlParameter.md)\
Extracts the value of a parameter definition from the URL.

[quoteXPathString()](bcdui.core.quoteXPathString.md)\
Quotes a string so that it can be used within an XPath for selectNodes /selectSingleNode.

[ready()](bcdui.core.ready.md)\
Registers a callback function to be executed when the browser has finishedloading.

[reExecute()](bcdui.core.reExecute.md)\
Reexecutes the process implemented by the concrete sub-class..

[setUrlParameter()](bcdui.core.setUrlParameter.md)\
Replaces a parameter=value definition inside a URL.

----
<h4>Members</h4>



**webRowSetServletPath** {string}\
The full URL to the webRowSet servlet.

**webRowSetServletPathSessionCached** {string}\
The full URL to the webRowSet servlet at servletsSessionCached path

**emptyModel** {*}\
A fixed empty model which can be used in various cases when the real model is notyet available. The model contains a single root element &lt;Empty/>.

----
<h4>Subpackages</h4>



[bcdui.core.browserCompatibility](bcdui.core.browserCompatibility.md)\
This namespace contains XML-related functions to make the BCD-UI librarywork on different browsers' XML implementation.

[bcdui.core.compression](bcdui.core.compression.md)

[bcdui.core.event](bcdui.core.event.md)

[bcdui.core.lifecycle](bcdui.core.lifecycle.md)\
This namespace contains functions related to BCD-UI page lifecycle management..

[bcdui.core.magicChar](bcdui.core.magicChar.md)\
These are named magic UTF-8 constants, defined by BCD-UI.

[bcdui.core.status](bcdui.core.status.md)\
A namespace containing a set of status classes used by the BCD-UI system.