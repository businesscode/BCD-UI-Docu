# Package bcdui.core.browserCompatibility

This namespace contains XML-related functions to make the BCD-UI librarywork on different browsers' XML implementation. These functions deal withthe following issues:                                                                            <dl><dt>  XML Document creation                                                     </dt><dd><p>        Factory functions for creating XML documents, parsing and        serialization and creating XSLT processors.                                                                            </p></dd><dt>  XML Manipulation + IE API Compatibility                                    </dt><dd><p>        The Mozilla / Webkit XML classes are augmented so that they        implement the IE-compatible interface. Then the users can        focus on this API only.                                                                            </p></dd><dt>  Namespace handling                                                        </dt><dd><p>        Align the handling of XML namespaces and prefixes so that        the well-known BCD-UI prefixes as well as user prefixes can        be used in the JavaScript API.                                                                            </p></dd></dl></p><p></p>


----
<h4>Classes</h4>



----
<h4>Functions</h4>



[appendElementWithPrefix()](bcdui.core.browserCompatibility.appendElementWithPrefix.md)\
Creates a new element whose name can contain a well-known prefix (like "wrs")and appends it to the specified target element.

[asyncCreateXsltProcessor()](bcdui.core.browserCompatibility.asyncCreateXsltProcessor.md)\
Asynchronous creation of an XSLTProcessor object from a DOM document..

[cleanupGeneratedXslt()](bcdui.core.browserCompatibility.cleanupGeneratedXslt.md)

[cloneDocument()](bcdui.core.browserCompatibility.cloneDocument.md)

[createDOMFromXmlString()](bcdui.core.browserCompatibility.createDOMFromXmlString.md)\
Parses given xml string and creates a DOMDocument out of it..

[extractMetaDataFromStylesheetDoc()](bcdui.core.browserCompatibility.extractMetaDataFromStylesheetDoc.md)

[newDOMDocument()](bcdui.core.browserCompatibility.newDOMDocument.md)

[preXslImportByProc()](bcdui.core.browserCompatibility.preXslImportByProc.md)\
Prepare for implementing xsl:import by replacing bcduicp: with the application's context.

[removeObsoleteNS()](bcdui.core.browserCompatibility.removeObsoleteNS.md)\
removes obsolete namespace declarations and moves used ones to the root element.

[resolveNamespace()](bcdui.core.browserCompatibility.resolveNamespace.md)

----
<h4>Members</h4>



----
<h4>Subpackages</h4>

