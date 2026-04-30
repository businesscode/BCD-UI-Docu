# Update Wrs Data 

BCD-UI offers several ways to edit data that is exchanged with the server.
Each DataProvider also offers tbl<Type> methods to select, insert, update, and delete rows.
These respect the [Wrs](/manual/elements/wrs.md) format and make it easy to send the data back to the server.

## Option 1 — Programmatic Changes

Load data with an [AutoModel](../../generated/elements/bcdui.core.AutoModel.md) or [SimpleModel](../../generated/elements/bcdui.core.SimpleModel.md), then modify it:

```js
// Update rows matching a filter
myModel.tblUpdate({ filter: { festival: 'Tomorrow Land', year: 2025 }, values: { visitors: 160000 } });

// Insert a new row
myModel.tblInsert({ values: { festival: 'Tomorrow Land', year: 2026 } });

// Delete rows matching a filter
myModel.tblDelete({ filter: { festival: 'Yesterday Land' } });

// Write all changes back to the database
myModel.sendData();
```

To load data pre-filtered by the current sidebar selection:
```js
let esFr = new bcdui.core.AutoModel({ bindingSet: 'geoData', bRefs: 'country area population', filterBRefs: 'country' });
```

To get an empty template, use `maxRows: 0`:
```js
let empty = new bcdui.core.AutoModel({ bindingSet: 'geoData', bRefs: 'country area population', maxRows: 0 });
empty.onceReady({ executeIfNotReady: true, onSuccess: () => {
  empty.tblInsert({ values: { country: 'DE', area: 357022, population: 83783942 } });
  empty.sendData();
}});
```

## Option 2 — Wizard / Custom Form

Use a Renderer to build a form and wire it to insert and update operations:

```js
let model = new bcdui.core.AutoModel({ bindingSet: 'geoData', bRefs: 'country area population' });

function onInsert(values) {
  model.tblInsert({ values });
}

function onUpdate(rowId, values) {
  model.tblUpdate({ rowId, values });
}

function onSave(rowId, values) {
  model.sendData();
}

let rnd = new bcdui.core.Renderer({ inputModel: model, targetHtml: '#myWizard', chain: buildForm });
```

## Option 3 — BCD-UI Widgets

BCD-UI widgets bind directly to Wrs XPaths and handle the format automatically:

```html
<bcd-inputNg targetModelXPath="$geoData/*/wrs:Data/wrs:*[@id='DE']/wrs:C[2]" label="Station"></bcd-inputNg>
```

```js
bcdui.widgetNg.createInput({
  targetHtml: '#fStation',
  targetModelXPath: `$geoData/*/wrs:Data/wrs:*[@id='${ctr}']/wrs:C[2]`,
  placeholder: 'Enter station name'
});
```

## Option 4 — Editable Grid for Tabular Data

For bulk editing of tabular data use a [Grid](../../generated/elements/bcdui.component.grid.Grid.md). 
Grid supports copy/paste, automatic validation, and user feedback.
