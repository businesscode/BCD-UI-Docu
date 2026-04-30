# Wrs — WebRowSet

A Wrs is the standard data format in BCD-UI for tabular data.
It holds the data as well as meta information about the columns and its source BindingSet.
It is retrieved from the Wrs Servlet as the result of a [Wrq](wrq.md) query against a [BindingSet](bindingSet.md), but can also be created manually.

## Overview

The easiest way to retrieve a Wrs is with an [AutoModel](../../generated/elements/bcdui.core.AutoModel.md). For more complex queries, use a [SimpleModel](../../generated/elements/bcdui.core.SimpleModel.md). Components like Grid and Cube retrieve and manage their own data based on their configuration.

A Wrs has two sections:
- `wrs:Header` — column metadata (type, key flags, display info)
- `wrs:Data` — the rows

### Example

```xml
<Wrs xmlns="http://www.businesscode.de/schema/bcdui/wrs-1.0.0">
  <Header>
    <BindingSet>kpi_cw</BindingSet>
    <Columns>
      <C pos="1" id="ctr"  type-name="VARCHAR" isKey="true"/>
      <C pos="2" id="cw"   type-name="INTEGER" isKey="true" display-size="2"/>
      <C pos="3" id="low"  type-name="NUMERIC" scale="0" nullable="1" signed="true"/>
      <C pos="4" id="high" type-name="NUMERIC" myAttribute="myValue">
        <!-- Attribute -->
        <A id="someTarget" name="target" caption="&#xE0FF;target"/>
      </C>
      <C pos="5" id="color" caption="Color" display-size="22" type-name="VARCHAR">
        <!-- List of allowed values -->
        <References>
          <Wrs>
            <Header><Columns><C pos="1" id="color" caption="Color"/></Columns></Header>
            <Data>
              <R><C>#e00</C></R>
              <R><C>#0e0</C></R>
              <R><C>#00e</C></R>
            </Data>
          </Wrs>
        </References>
      </C>
    </Columns>
  </Header>
  <Data>
    <!-- wrs:R Unmodified row -->
    <R id="1"><C>BE</C><C>23</C><C>1200</C><C target="1235">1300</C><C>#e00</C></R>

    <!-- wrs:I tRow to insert -->
    <I id="5"><C>FR</C><C>27</C><C>1234</C><C target="1000">1334</C><C>#0e0</C></I>

    <!-- wrs:D Row to delete (matched by key columns) -->
    <D id="6"><C>IT</C><C>27</C><C>1234</C><C target="1000">1334</C><C>#e00</C></D>

    <!-- wrs:M Row to update: wrs:O = original value, wrs:C = new value -->
    <M id="7">
      <C>GB</C><O>GB</O>
      <C>40</C><O>40</O>
      <C>432</C><O>400</O>
      <C target="900">1343</C><O target="900">1343</O>
      <C>#0e0</C><O>#00e</O>
    </M>
  </Data>
</Wrs>
```

### Row Types

When data is modified on the client, rows are marked with a type instead of plain `wrs:R`:

| Element | Meaning |
|---|---|
| `wrs:R` | Unmodified row |
| `wrs:I` | Insert this row |
| `wrs:D` | Delete the row matching the key columns |
| `wrs:M` | Modify row — `wrs:O` holds the original value, `wrs:C` the new value |

For `wrs:M`, the key columns' `wrs:O` values identify which database row to update. The `wrs:O` values are also used for client-side undo and displaying original values in tooltips.

The server applies these changes when the Wrs is sent back. SubjectSettings controls whether the user is permitted to insert or delete specific rows and column values.

- `wrs:A` allow to add data to the column as attribute
- `References` allows providing a list of allowed values
- Any custom attribute defined in the BindingSet bnd:C or the Wrq wrq:C, will be available at wrs:Header/wrs:Columns/wrs:C.
  This easily allows for adding static information on columns.

---

## Reading Data

Pass a DataProvider to a Renderer or component to display the data. 

To access values from JavaScript:

```js
// Returns matching rows as plain objects
let rows = myModel.tblSelect({ filter: { author: "Galilei" }, columns: ['title', 'year'] });
// → [{title: 'Il Saggiatore', year: '1623'}, ...]

// Returns a value
let val = myModel.read("/wrs:Wrs/wrs:Data/wrs:*[wrs:C[1]='DE']/@caption");

// Returns the node itself (assignable)
let node = myModel.query("/wrs:Wrs/wrs:Data/wrs:*[wrs:C[1]='DE']/@caption");
node = "Deutschland";
```

---


## Deriving Data

Use **ModelWrapper** or **ModelUpdater** to compute derived data from an existing DataProvider.

**ModelWrapper** — like a database view. Takes an `inputModel`, applies a `chain` transformation, and exposes the result as a new DataProvider. The input is never modified. The result can be used as input elsewhere or written back to the database.

**ModelUpdater** — like a ModelWrapper, but writes the result back into the original `inputModel` instead of producing a new one.

---

## Update Data

See [Update Wrs Data](/manual/elements/updateWrsData.md) about how to access a Wrs in a DataProvider.

<!-- LLM_HINT: see MCP GetSpecification(updateWrsData) -->
