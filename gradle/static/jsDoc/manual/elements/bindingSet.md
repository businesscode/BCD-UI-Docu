# BindingSet

## Overview
A BindingSet makes a database table available to BCD-UI's Wrs WebRowSet.
It describes the available columns and their types and all access rules that are to be applied.
BindingSets are located at WEB-INF/bcdui/bindings und usually have the name <bindingSetName>.xml

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
  id="carRepairs" table="car_repairs" dbSourceName="jdbc/myDb">
  <C id="id" caption="Id" isKey="true" type-name="INTEGER"> <Column>id</Column> </C>
  <C id="dy" caption="Dy" nullable=false type-name="DATE"> <Column>dy</Column> </C>
  <C id="yr" caption="Year" type-name="INTEGER"> <Column>EXTRACT( YEAR from dy)</Column> </C>
  <C id="country" caption="Country" type-name="VARCHAR"> <Column>country</Column> </C>
  <C id="station" caption="Station" nullable=false type-name="VARCHAR"> <Column>station</Column> </C>
  <C id="carsSold" caption="Cars Sold" type-name="INTEGER"> <Column>cars_sold</Column> </C>
  <C id="carsRepaired" caption="Cars Repaired" type-name="INTEGER"> <Column>cars_repaired</Column> </C>
</BindingSet>        
````