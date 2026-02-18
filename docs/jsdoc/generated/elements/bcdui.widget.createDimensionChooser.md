# createDimensionChooser()
<span hidden class='htmlPackage'>bcdui.widget</span>


This function creates an dimension chooser in the given target HTML element.

````js
// Usage
bcdui.widget.createDimensionChooser({ targetModelXPath: "$guiStatus/cust:Elem/@value", targetHtml: "#myDiv", dimension });
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| args | Object |  | The parameter map contains the following properties. |
| args.targetModelXPath | writableModelXPath |  | The targetModelXPath for the dimensionChooser acts slightly different than for other widgets. The path points a node which will hold the value for the selected level. The widget builds up filter expressions automatically, so your targetXPath doesn't need any f:Expression statements, e.g. /guiStatus:Status/guiStatus:Dimension[@id='dimensionChooser']/@value. |
| args.targetHtml | targetHtmlRef |  | An existing HTML element this widget should be attached to, provide a dom element, a jQuery element or selector, or an element id. |
| args.dimension | string |  | Unique name to select a dimension from the dimension model (located at '/bcdui/conf/dimensions.xml'. |
| args.id? | string |  | ID of the Executable object which renders this widget this must be UNIQUE and MUST NOT have same names as any global JavaScript variable. If not given, an auto-id is generated. |
| args.url? | string |  | The URL the model is loaded from. This URL can be extended with a compressed request document if a requestDocument parameter is provided. If omitted the WrsServlet is taken. |
| args.multiSelect? | string | false | Make a multi selected dimension chooser. Can be 'true'|'false'|'check', 'false' is default. |
| args.allowMixedSelect? | boolean | false | Allow heterogene selection in multi select chooser. |
| args.checkBoxCaption? | string | "MultiSelect" | Caption of checkbox to turn on and of the multiselect. |
| args.clearOption? | string | false | If != 'false', an additional option to clear the level selection is shown in the drop-down box. If 'true' bcd_autoCompletionBox_clearOption is used for the text, otherwise this is the i18n key. |
| args.clearOptionLevel? | string | false | See clearOption. This value is for the level selector input box only. If not specified, clearOption is used. |
| args.emptyValue? | string | false | If != 'false', a text is displayed if no level is selected. If 'true' bcd_autoCompletionBox_emptyValue is used for the text, otherwise this is the i18n key. |
| args.emptyValueLevel? | string | false | See emptyValue. This value is for the level selector input box only. If not specified, emptyValue is used. |
| args.mandatory? | boolean | false | An empty value is invalid if this parameters sets to true. Default is false. |
| args.useCaptions? | boolean | false | If true, the chooser will receive captions and codes. By convention the bref of the captions column is 'bRef'_caption. By default no captions are created. |
| args.widgetCaption? | string |  | A caption which is used as prefix for navPath generation for this widget. |
| args.configurationModelId? | string |  | ModelId of chooser configuration xml file. This model can hold a per-level configuration which allows additional filtering. |
| args.limitLevels? | string |  | Space separated list of levelIds. The available levels from the dimensions model get limited to this subset. |
| args.enableNavPath? | boolean |  | Set to true if widget should not be added to navpath handling. |
| args.label? | string |  | If provided, renders label element to this input |


**Returns**: {void}

**Examples:**
````js
<Caption>Configuration Model</Caption>The Level element can have one child element called FilterCondition. It is a textnode which specifies an additional xpath statementwhich is added as an AND condition in the request document filter element. You should use brackets around it.There are several Level element attributes (see bcdui.core.AutoModel for details) which allows loading of additional bRefs orfiltering: bRef, filterBRefs, mandatoryfilterBRefsSubset, additionalFilterXPath.You can also modify the handling of the Level input fields (see bcdui.widget.InputField): optionsModelIsSuggestionOnly, wildcard.A server sided options model filter can be set via serverSideOptionsModelFilter attribute.If there is a need to hide a level for direct selection (but the level is needed as dependency for a different level selection)you can use the visible attriute.
````
````js
&lt;Configuration xmlns="http://www.businesscode.de/schema/bcdui/renderer-1.0.0"&gt;  &lt;Level id="customerGroup" bRefs="ecom"&gt;    &lt;FilterCondition&gt;( ../wrs:C[2]='1')&lt;/FilterCondition&gt;  &lt;/Level&gt;&lt;/Configuration&gt;When using 'customerGroup' level (which is bound to one bRef (wrs:C[1])) another bRef 'ecom' is used and checked against value '1' via the given filter condition.  
````
````js
&lt;Configuration xmlns="http://www.businesscode.de/schema/bcdui/renderer-1.0.0"&gt;  &lt;Level id="station" bRefs="facility_type s_isselectable"&gt;    &lt;FilterCondition&gt;( ../wrs:C[4]='1' and (not($guiStatus///f:Filter/f:Or[@id='facility_type']/f:Expression[@bRef='facility_type']/@value) or ../wrs:C[3] = $guiStatus//f:Filter/f:Or[@id='facility_type']/f:Expression[@bRef='facility_type']/@value) )&lt;/FilterCondition&gt;  &lt;/Level&gt;&lt;/Configuration&gt;When using 'station' level (which is bound to two bRef (wrs:C[1] and wrs:C[2])) two more bRefs 'facility_type' and 's_isselectable' are used.s_isselectable (which will be wrs:C[4] is checked against the value '1' and facility_type is checked against a guiStatus filter (if available)).So you can easily filter available level data with other possibly set client or server filters.
````
````js
&lt;Configuration xmlns="http://www.businesscode.de/schema/bcdui/renderer-1.0.0"&gt;  &lt;Level id="group" wildcard="startswith" serverSideOptionsModelFilter="true" hideWildcardChar="true"/&gt;&lt;/Configuration&gt;  Group level information is generated while typing.
````
````js
&lt;Configuration xmlns="http://www.businesscode.de/schema/bcdui/renderer-1.0.0"&gt;  &lt;Level id="group" visible="false"/&gt;&lt;/Configuration&gt;Group level does not appear in Level drop down but can be used as a dependency level for a different level selection.
````