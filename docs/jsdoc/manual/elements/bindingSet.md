# BindingSet

## Overview
A BindingSet makes a database table available to BCD-UI's Wrs WebRowSet.
It describes the available columns and their types and all access rules that are to be applied.
BindingSets are located at WEB-INF/bcdui/bindings und usually have the name <bindingSetId>.xml

## Translation from Database Table/View to BindingSet
If this is the database table definition:
````SQL
CREATE TABLE car_repairs (
    id              INTEGER PRIMARY KEY,
    dy              DATE NOT NULL,
    country         VARCHAR(64),
    station         VARCHAR(64) NOT NULL,
    cars_sold       INTEGER,
    cars_repaired   INTEGER
)
````

Then this is the BindingSet:
````xml
<BindingSet xmlns="http://www.businesscode.de/schema/bcdui/bindings-1.0.0"
  id="carRepairs" table="car_repairs" allowSelectAllColumns="true" dbSourceName="jdbc/myDb">
  <C id="id" caption="Id" nullable="0" isKey="true" type-name="INTEGER"> <Column>id</Column> </C>
  <C id="dy" caption="Dy" type-name="DATE"> <Column>dy</Column> </C>
  <C id="yr" caption="Year" type-name="INTEGER"> <Column>EXTRACT( YEAR from dy)</Column> </C>
  <C id="country" caption="Country" type-name="VARCHAR"> <Column>country</Column> </C>
  <C id="station" caption="Station" nullable="0" type-name="VARCHAR" myAttribute="myValue"> <Column>station</Column> </C>
  <C id="carsSold" caption="Cars Sold" type-name="INTEGER"> <Column>cars_sold</Column> </C>
  <C id="color" caption="Status" type-name="VARCHAR">
    <!-- List of allowed values -->
    <References xmlns="http://www.businesscode.de/schema/bcdui/wrs-1.0.0">
      <Wrs>
        <Header><Columns><C pos="1" id="color" caption="Color"/></Columns></Header>
        <Data>
          <R><C>#e00</C></R>
          <R><C>#0e0</C></R>
          <R><C>#00e</C></R>
        </Data>
      </Wrs>
    </References>
    <Column>color</Column>
  </C>
</BindingSet>        
````
- `References` allows for adding a static list of allowed values to the column.
- Besides the pre-defined attributes of BCD-UI, you can add any additional custom attributes like `myAttribute` above. They are passed to the Wrs WebRowSet wrs:Header/wrs:Column/wrs:C and can support rendering the data in specific ways.


### @dbSourceName

BindingSets rely on data sources defined in `context.xml`. 
The attribute `@dbSourceName` can be set explicitly or omitted:

**Explicit** - `@dbSourceName` must match a `Resource` entry in `context.xml`:
`<Resource factory="org.apache.tomcat.jdbc.pool.DataSourceFactory"` with the same `name="jdbc/myDb`

**Omitted** - the BindingSet uses the default connection, resolved via an Environment entry in `META-INF/context.xml`

```xml
<Environment name="bcdui/defaultConnection" type="java.lang.String" value="jdbc/myDuckDb"/>
```
The `value` of `bcdui/defaultConnection` then names the actual data source of any name to use.

