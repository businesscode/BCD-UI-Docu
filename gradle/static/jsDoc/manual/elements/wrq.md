# Wrq WebRowSet-Request

## Overview
Wrq (WebRowSetRequests) are queries send towards the server to retrieve data from the database.
The structure of a Wrq mimics SQL and should be easy to understand.

The following Wrq selects from myReportData the columns dy, orig_country, dest_country, weight, cost and volume and grouping by them.
It refers to the [BindingSet](bindingSet.md) with id myReportData.
Sending a Wrq returns a [Wrs WebRowSet](wrs.md) document with the requested data.

## Simple Wrq sample
````xml
<?xml version="1.0" encoding="UTF-8"?>
<wrq:WrsRequest
  xmlns:wrq="http://www.businesscode.de/schema/bcdui/wrs-request-1.0.0"
  xmlns:f="http://www.businesscode.de/schema/bcdui/filter-1.0.0">
  <wrq:Select>
    <!-- SELECT list -->
    <wrq:Columns>
      <wrq:C bRef="dy" caption="Date (desc)"/> 
      <wrq:C bRef="dest_country"/>
      <wrq:C bRef="weight" myCustomAttr="myValue"/>
      <wrq:C bRef="cost"/>
    </wrq:Columns>
    <!-- FROM clause -->
    <wrq:From>
      <wrq:BindingSet>myReportData</wrq:BindingSet>
    </wrq:From>
    <!-- WHERE clause -->
    <f:Filter> 
      <f:Expression bRef="orig_country" op="=" value="FR"/>
    </f:Filter>
    <!-- GROUP BY clause -->
    <wrq:Grouping>
      <wrq:C bRef="dy" />
      <wrq:C bRef="dest_country" />
    </wrq:Grouping>
    <!-- ORDER BY clause -->
    <wrq:Ordering> 
      <wrq:C bRef="dy" order="desc"/>
      <wrq:C bRef="dest_country"/>
    </wrq:Ordering>
    <!-- HAVING clause -->
    <wrq:Having>
      <f:Expression bRef="weight" op=">" value="10000"/>
    </wrq:Having>
  </wrq:Select>
</wrq:WrsRequest>
````
Tip: When manually creating a Wrq, make sure to register the xsd with your IDE to get autosuggest and validation support.

- If you add further attributes to the wrq:C element, they will be available in the response at the corresponding wrs:Header/wrs:Columns/wrs:C.
- If SubjectSettings are defined, only allowed rows are read, by extending the f:Filter on the server.

<!-- LLM_HINT DETAILS_STARTING -->

## Wrq sample with a join
````xml
<?xml version="1.0" ?>
<WrsRequest xmlns="http://www.businesscode.de/schema/bcdui/wrs-request-1.0.0">

  <!-- Testing a simple join and complex BindingSet Column Expressions referenced in Calc -->
 <Select>
   <Columns>
      <C bRef="yr" />
      <C bRef="orig_country" />
      <C bRef="o.country_name" caption="Joined long ctr name"/>
    </Columns>
    <From>
      <BindingSet>auto_test_cube</BindingSet>
      <!-- There are InnerJoin, LeftOuterJoin, FullOuterJoin and CrossJoin --> 
      <InnerJoin>
        <BindingSet alias="o">auto_test_md_country</BindingSet>
        <On left="orig_country" right="o.country_code" op="="/>
      </InnerJoin>
    </From>
    <Grouping>
      <C bRef="orig_country" />
    </Grouping>
    <Ordering>
      <C bRef="orig_country" />
    </Ordering>
  </Select>
  
</WrsRequest>
````
You can have multiple joins in a Select.

## Filtering f:Filter
f:Filter allow defining the WHERE clause fo the generated SQL.
````xml
<f:Filter>
  <f:And>
    <f:Expression bRef="ctr" value="DE*" op="LIKE"/>
    <f:Or>
      <f:Expression bRef="area" value="200" op=">"/>
      <f:Expression bRef="area" value="300" op="&lt;=300"/>
    </f:Or>
  </f:And>
</f:Filter>
````
Same can be done in the `wrq:Having` clause.
Operator OP can be `<`, `>`, `&lt;=`, `>=`, `LIKE`, `NOT LIKE`, `IN` and `NOT IN`.


## Server side calculations
With `wrq:Calc` you can retrieve calculated SQL values:
````xml
<wrq:C bRef="cost_perc" caption="Cost of 'AMS' [million]" scale="2">
  <wrq:Calc>
    <wrq:Div>
      <wrq:ValueRef idRef="cost"></wrq:ValueRef>
      <wrq:Value>1000</wrq:Value>
    </wrq:Div>
  </wrq:Calc>
</wrq:C>
````
will turn into `cost / 1000` if cost is the name the BindingItem points to.


## Wrq sample with a sub-select
````xml
<?xml version="1.0" ?>
<WrsRequest
  xmlns="http://www.businesscode.de/schema/bcdui/wrs-request-1.0.0"
  xmlns:f="http://www.businesscode.de/schema/bcdui/filter-1.0.0">
  <Select>
    <Columns>
      <C bRef="octr" /> 
      <C bRef="orig_area" />
      <C bRef="product_code" />
      <C bRef="cost_avg" aggr="min"/>
    </Columns>
    <From>
    
      <!-- Using a sub-select instead going to a BindingSet directly -->
      <Select>
        <Columns>
          <C bRef="orig_area" />
          <C bRef="product_code" />
          <C bRef="orig_country" alias="octr"/>
          <C bRef="cost" aggr="avg" alias="cost_avg" scale="2"/>
        </Columns>
        <From>
          <BindingSet>auto_test_wrs</BindingSet>
        </From>
        <f:Filter>
          <f:Expression bRef="orig_country" value="DE,FR,US" op="in"/>
        </f:Filter>
        <Grouping>
          <C bRef="orig_country" />
          <C bRef="orig_area" />
          <C bRef="product_code" />
        </Grouping>
      </Select>

    </From>
    <f:Filter>
      <f:Expression bRef="octr" value="DE" op="!="/>
    </f:Filter>
    <Grouping>
      <C bRef="octr" />
    </Grouping>
    <Ordering>
      <C bRef="octr" />
      <C bRef="orig_area" />
    </Ordering>
  </Select>
</WrsRequest>
````
Sub-selects can appear in the From part, in Joins or in the select column list.

Sub-selects can also appear in `IN` or `NOT IN` like
```xml
<f:Filter>
  <f:Expression bRef="ss1.country_code" op="in">
    <!-- Calc in Filter with outer scope reference -->
    <wrq:Calc>
      <Case>
        <When>
          <wrq:GtE>
            <!-- Correlated sub-select in filter -->
            <Select>
              <Columns><C bRef="ss2.country"/></Columns>
              <From><BindingSet alias="ss2">auto_test_md_geo</BindingSet></From>
              <f:Filter>
                <f:Expression bRef="ss2.country" op="in" value="US,FR,DE"/>
                <f:Expression bRef="ss2.country" op="=" bRef2="orig_country"/>
              </f:Filter>
              <Grouping><C bRef="ss2.country"/></Grouping>
            </Select>
            <Value>FR</Value>
          </wrq:GtE>
          <ValueRef idRef="orig_country"/>
        </When>
        <Else>
          <Value>LU</Value>
        </Else>
      </Case>
    </wrq:Calc>
  </f:Expression>
</f:Filter>
````