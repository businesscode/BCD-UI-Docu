# Package bcdui.factory

Most parts of this package are not intended to be used from JavaScript and thus not part of the API documentation.<p/>The factory package implements the functionality necessary to use BCD-UI objects in the context of jsp, XSLT-templates and XAPI and widget XPath expressions,in other words, wherever objects are connected by id rather than by providing JavaScript objects.<p/>The main difference between JavaScript and declarative contexts are that <ul>  <li>All objects are identified and connected by a string id rather than by JavaScript references. For this reason, all objects created by the factory are registered automatically.  <li>Second, it is allowed for objects to be created in an order following HTML output, as for example jsp tags are put into their output place.      This leads to situations, where an object receives an object as input, which is only defined further down, something that cannot happen in JavaScript.      Therefore the factories in here delay the object creation until all objects ot depends on are defined.</ul>


----
<h4>Classes</h4>



[ObjectRegistry](bcdui.factory.ObjectRegistry.md)\
The object registry is a class that tracks registration of BCD-UI objects bytheir id.

----
<h4>Functions</h4>



[createDataProviderWithXPath()](bcdui.factory.createDataProviderWithXPath.md)\
Creates a dataprovider from an xPath, its value is the evaluated xPath.

[executeXSLT()](bcdui.factory.executeXSLT.md)\
Executes a transformation chain producing an XML document.

----
<h4>Members</h4>



**objectRegistry** {bcdui.factory.ObjectRegistry}\
This is a singleton object of type ([bcdui.factory.ObjectRegistry](bcdui.factory.ObjectRegistry.md)) where instances of [bcdui.core.DataProvider](bcdui.core.DataProvider.md)can be registered by their globally unique id. It allows listeners to wait for these registrations so that they can safely accessthese objects no matter which time they are created at. Therefore it plays a vital role in the development of robust code and forthe creation of a higher abstraction layer like JSP markup.

----
<h4>Subpackages</h4>

