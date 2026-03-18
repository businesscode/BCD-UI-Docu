# Wrs WebRowSet
A Wrs is retrieved from Wrs Servlet as the result of a [Wrg](wrq.md) query and matching that against [BindingSets](bindingSet.md).
But it can also be created by hand or with the help of XSLT based on another Wrs for example.

## Overview
This is a Wrs WebRowSet with data.
Easiest to retrieve data is with an [AutoModel](../../generated/elements/bcdui.core.AutoModel.md),
you can also create your own complex Wrg and retrieve data with a [SimpleModel](../../generated/elements/bcdui.core.SimpleModel.md).

[Components](../../generated/index/component.md) like Grid or Cube know how to retrieve data based on their configuration.

Structure of the Wrs:
- The wrs:Header provides information about the meaning and the format if the columns
- wrs:R in wrs:Data are the rows where found in the database

### Example Wrs
````xml
<Wrs xmlns="http://www.businesscode.de/schema/bcdui/wrs-1.0.0">
  <Header>
    <BindingSet>kpi_cw</BindingSet>
    <Columns>
      <C pos="1" id="ctr" type-name="VARCHAR" display-size="22" isKey="true" nullable="1" signed="true"/>
      <C pos="2" id="cw" type-name="INTEGER" display-size="22" scale="0" nullable="1" signed="true"/>
      <C pos="3" id="low" type-name="NUMERIC" display-size="22" scale="0" nullable="1" signed="true"/>
      <C pos="4" id="high" type-name="NUMERIC" display-size="22" scale="0" nullable="1" signed="true">
        <A id="someTarget" name="target" caption="&#xE0FF;target"/>
      </C>
    </Columns>
  </Header>
  <Data>
    <R id="1"><C>BE</C><C>23</C><C>1200</C><C target="1235">1300</C></R>
    <R id="2"><C>CZ</C><C>24</C><C>1234</C><C target="1200">1434</C></R>
    <R id="3"><C>DE</C><C>25</C><C>1321</C><C target="1000">1421</C></R>
    <R id="4"><C>ES</C><C>26</C><C>1102</C><C target="90">1202</C></R>
    
    <!-- wrs:I to be inserted -->
    <I id="5"><C>FR</C><C>27</C><C>1234</C><C target="1000">1334</C></I>

    <!-- wrs:D to be deleted, key columns need to be unchanged -->
    <I id="6"><C>IT</C><C>27</C><C>1234</C><C target="1000">1334</C></I>

    <!-- wrs:M to be updated, key columns need to be unchanged -->
    <M id="7">
      <O>GB</O><C>28</C><C>1243</C><O target="900">1343</O>
      <C>GB</C><C>40</C><C>432</C><C target="900">1343</C>
    </M>
  </Data>
</Wrs>
````

## Read Data
Often you will just pass a DataProvider with its Wrs to the Renderer or a component to show it.

To access Wrs data from Javascript, you can use
- `let v = myModel.tblSelect({ filter: { author: "Galilei" }, columns: ['title', ''year'] })`
  - it returns an array with matching row values like when books where published: 
    `[{title: 'Il Saggiatore', year: '1623'}, {title: 'Le Mecaniche', year: '1654'}]`
- `let v = myModel.read("/wrs:Wrs/wrs:Data/wrs:*[wrs:C[1]='DE']/@caption")`
  - returns the caption of 'DE'
- `let attr = myModel.query("/wrs:Wrs/wrs:Data/wrs:*[wrs:C[1]='DE']/@caption")`
  - returns the node, which can also be assigned `attr = "Deutschland"`

<!-- LLM_HINT DETAILS_STARTING -->

## Modify Data Internal Wrs Format
If data is modified at the client, new row-types appear:
- wrs:I insert this row
- wrs:D delete row with the same isKey="true" column values
- wrs:M modify row with the same isKey="true" column values.
  wrs:M/wrs:O indicate the old column values, wrs:C the new ones

Wrs send to the server will apply these changes.
With the help of SubjectSettings, the server will validate that the user is allowed to delete and create the touched rows.

### 1. Use the editable Grid
You can use a [Grid](../../generated/elements/bcdui.component.grid.Grid.md) to allow tabular data being edited.
A Grid also supports copy/pasting data from other sources.
Ad grid also automatically validates the data on entry and hint the user about issues.

### 2. Programmatic Changes

#### Javascript
Usually you will load the initial data with a [SimpleModel](../../generated/elements/bcdui.core.SimpleModel.md) or [AutoModel](../../generated/elements/bcdui.core.AutoModel.md).
Both allow for easily filter the wanted data.

If they hold data of type Wrs, they can be easily modified with
- `myModel.tblUpdate({ filter: { festival: 'Tomorrow Land', year: 2025 }, values: { visitors: 160.000} );`
  - updates all rows matching the filter with the given values
- `myModel.tblInsert({ values: { festival: 'Tomorrow Land', year: 2026 } );`
  - creates a new row with the given values
- `myModel.tblDelete({ filter: { festival: 'Yesterday Land' } );`
  - deletes all rows matching the filter
- `sendData()` will write the changes back to the database.

For example to get all values for countries selected in the side-bar, use
````js
let esFr = new bcdui.core.AutoModel({ bindingSet: 'geoData', bRefs: 'country area population', filterBRefs: "country" });
````
  
To create data, you may want to get an empty template for a BindingSet, use `maxRows: 0`
````js
let empty = new bcdui.core.AutoModel({ bindingSet: 'geoData', bRefs: 'country area population', maxRows: 0 });
empty.onceReady({ executeIfNotReady: true, onSuccess: () => {
  empty.tblInsert({ values: { country: "DE", area: 357022, population: 83783942 } });
  empty.sendData();
}});
````

If you want the user to input the data, use Renderer creating the form and passing the Wrs to it.
````js
let empty = new bcdui.core.AutoModel({ bindingSet: 'geoData', bRefs: 'country area population', maxRows: 0 });
function createWidzardFct() {
  let values = { country: "", area: "", population: 0 };
  
  // Call this once a new row is to be inserted
  empty.once("wrs:I",
  
  // Create the form
  let html = "<div><input type='text' name='country' value='" + values.country + "'/><input type='text' name='area' value='" + values.area + "'/><input type='text' name='population' value='" + values.population + "'/></div>";
  return html;
}
let rnd = new bcdui.core.Renderer({ inputModel: empty, targetHtml: "#myWidzard", chain: createWidzardFct });
````


### Deriving Data from Existing Data

Use ModelWrapper or ModelUpdater to compute derived data from existing sources.

#### ModelWrapper
Works like a database view - it takes a DataProvider as `inputModel`, 
applies transformation logic `chain`, and exposes the result as a new, separate DataProvider. 
The result can be used as input for other DataProviders or Renderer and even be written back to the database.
The input is not modified.

#### ModelUpdater
Like a ModelWrapper, but writes the result back into the input DataProvider 
instead of producing a separate one.

