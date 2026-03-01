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

<!-- LLM_HINT DETAILS_STARTING -->

## Modify Data
If data is modified at the client, new row-types appear:
- wrs:I insert this row
- wrs:D delete row with the same isKey="true" column values
- wrs:M modify row with the same isKey="true" column values.
  wrs:M/wrs:O indicate the old column values, wrs:C the new ones

Wrs send to the server will apply these changes.
With the help of SubjectSettings, the server will validate that the user is allowed to delete and create the touched rows.

### Use the editable Grid
You can use a [Grid](../../generated/elements/bcdui.component.grid.Grid.md) to allow tabular data being edited.
A Grid also supports copy/pasting data from other sources.
Ad grid also automatically validates the data on entry and hint the user about issues.

### Programmatic Changes

#### Javascript
Usually you will load the initial data with a 
[SimpleModel](../../generated/elements/bcdui.core.SimpleModel.md) or [AutoModel](../../generated/elements/bcdui.core.AutoModel.md) and then modify it with
for example `myModel.tblDelete(args)`, `myModel.tblUpdate(args)` or `myModel.tblInsert(args)`,
and then save it with `myModel.sendData(args)`. Check the DataProviders for more details about the methods. \

To change an individual value, use write().
For example the following sets the second column in the 3rd row to 'HALLO'.
````js
myModel.write("/wrs:Wrs/wrs:Data/wrs:*[3]/wrs:C[2]", "HELLO")
````
It also turns the row into a proper `wrs:M`, if it detects the model is a Wrs.
Writing by pointing to a node. `wrs:*` makes sure that it matches `wrs:R` as well as `wrs:M`.
If the 3rd row does not exist, it is created (`wrs:I`) \
This writes 2 values by describing, what xPath should match: `wrs:*[3][..]`
````js
myModel.write("/wrs:Wrs/wrs:Data/wrs:*[3][ wrs:C[1]='{{=it[0]}}' and wrs:C[2]='{{=it[2]}}' ]", ["HELLO", "WORLD"])
````

You can also call static package functions to modify models.
See [util package](../../generated/elements/bcdui.wrs.wrsUtil.md) for an overview of other functions to add, modify or delete rows.

#### ModelUpdater
A [ModelUpdater](../../generated/elements/bcdui.core.ModelUpdater) gets a DataProvider as inputModel
and applies the transformation on its data whenever it is executed, changing the input-model's data.

#### ModelWrapper
Use a [ModelWrapper](../../generated/elements/bcdui.core.ModelWrapper), if you need values to be changed or derived,
but you do not need to write the values back to the database. \
A ModelWrapper acts like a kind of client-side view on a DataProvider and applies its transformation
on its inputModel without modifying the input itself.
