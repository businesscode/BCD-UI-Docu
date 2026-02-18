# Wrq

## Overview
This is a Wrs selecting from myReportData1 columns dy, orig_country, dest_country, weight, cost and volume and grouping by them.
It needs a BindingSet with id myReportData1 with matching BindingItems.

## Sample
````xml
<?xml version="1.0" encoding="UTF-8"?>
<WrsRequest
  xmlns="http://www.businesscode.de/schema/bcdui/wrs-request-1.0.0"
  xmlns:f="http://www.businesscode.de/schema/bcdui/filter-1.0.0">
  <Select>
    <Columns>
      <C bRef="dy" caption="Date (desc)"/> 
      <C bRef="orig_country"/>
      <C bRef="dest_country"/>
      <C bRef="weight"/>
      <C bRef="cost"/>
      <C bRef="volume"/>
    </Columns>
    <From>
      <BindingSet>myReportData1</BindingSet>
    </From>
    <f:Filter> 
      <f:Expression bRef="orig_country" op="=" value="FR"/>
    </f:Filter>
    <Ordering> 
      <C bRef="dy" order="desc"/>
      <C bRef="orig_country"/>
      <C bRef="dest_country"/>
    </Ordering>
  </Select>
</WrsRequest>
````