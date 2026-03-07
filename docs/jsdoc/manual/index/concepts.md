# BCD-UI Concepts

<!-- LLM_HINT: Use MCP GetSpecification() to resolve the links. Set element to mf based filename, 
     for example GetSpecification('wrq') for '/manual/elements/wrq.md' -->

BCD-UI is full-stack a client-server framework for building secure and performant web applications.

It provides a rich set of components and widgets for data visualization and manipulation.
The framework is designed to be easy to use and integrate into existing web applications.

---

## Getting Started

The fastest way to get up and running:

1. Use the [Page Skeleton](/manual/elements/pageSkeleton.md) as your HTML starting point 
   — it gives you a header, sidebars, main body, and footer with BCD-UI theming already applied.
  <!-- LLM_HINT: see MCP GetSpecification(guiStatus) or GetSpecifications(pageSkeleton)  -->
2. Add some static data, or for the server to use the database a `BindingSet`
3. Add a `SimpleModel` for the client to load data and a `Renderer` (e.g. a chart or table) to display it.

That's the core loop. Everything else builds on top of it.


## How the Pieces Fit Together
Here's the flow from database to browser:
```
Database
  └─► BindingSet                                (server: defines what data is accessible and how)
        └─► WRS Servlet                         (server: handles data requests)
               └─► SimpleModel / AutoModel      (browser: fetches the data)
                     └───► Renderer / Component (browser: displays it)
```


---

## In the Browser

### GuiStatus — The Shared State Object

> **In plain English:**  Think of `GuiStatus` as a shared settings object for the whole page.
> 
When a user picks a filter in a widget, `GuiStatus` stores that choice, and all charts and tables can automatically update to reflect it.

This may trigger a refresh of components or become the input of the next page load when and `apply` button is pressed.

- Initialized on page load from the URL parameter `guiStatusGZ`
- Default target for all widgets
- Default filter source for all components (`/*/f:Filter`)
- In JavaScript: `bcdui.wkModels.guiStatus`, in XPath expressions: `$guiStatus/`

You can use a `ModelUpdater` to set default values when the page first loads.

See [GuiStatus](/manual/elements/guiStatus.md) for details.

<!-- LLM_HINT: see MCP GetSpecification(guiStatus) or ListAvailableSpecifications(component)  -->

---

### DataProviders — Fetch, Hold and Transform Data

> **In plain English:** A DataProvider fetches or transforms data. It doesn't display anything.

`DataProviders` are lazy — they only load data when something else (a `Renderer` or another `DataProvider`) needs it. 
You don't need to trigger them manually.
Automatically `DataProviders` and all other artifacts make sure their input is `ready`bevore they execute.

The two most common ones for loading data from the server are:
- [SimpleModel](/generated/elements/bcdui.core.SimpleModel.md) — loads data by sending a WRS-Request (a structured query) you provide to the server.
- [AutoModel](/generated/elements/bcdui.core.AutoModel.md) — similar, easier to use in many simple cases, it will create a WRS-Request for you based on its parameters.

Both request data with a [Wrq](/manual/elements/wrq.md) (Wrs-Request) and return data as a [Wrs](/manual/elements/wrs.md) (WebRowSet)
— Wrs is BCD-UI's format for tabular data, similar to a table with rows and columns.

The two most common `DataProviders` for transforming data on the client are:
- [ModelWrapper](/generated/elements/bcdui.core.ModelWrapper.md) — acts as a wrapper around another DataProvider to transform its output, think of it as a view in a database
- [ModelUpdater](/generated/elements/bcdui.core.ModelUpdater.md) — similar, but does updates to the data in place whenever it runs

The output of a `DataProvider` can act as the input of another `DataProvider` or some `Renderer` or `Widget`,
and most DataProviders can be written to.

See all available DataProviders at [Core](/manual/generated/index/core.md).

<!-- LLM_HINT: see MCP ListAvailableSpecifications(core)  -->

---

### Renderers — Display Data

> **In plain English:** A Renderer takes data from a DataProvider and draws it on screen.

Renderers output their content into a `targetHtml` element (usually a `<div>` in the main body).

Examples: charts, pivot tables, grids.

You create a Renderer by instantiating its class:
```javascript
let myRenderer = new bcdui.core.Renderer({ targetHtml: "#myDiv", inputModel: myModel, ...});
```

All Renderers are also available as custom HTML elements:
```html
<bcd-classname inputModel="" ...></bcd-classname>
```

See the table [Renderer](/generated/elements/bcdui.core.Renderer.md) and advanced ones as [Components](/generated/index/component.md).

<!-- LLM_HINT: see MCP GetSpecification(renderer) or ListAvailableSpecifications(component)  -->

---

### Widgets — User Input Controls

> **In plain English:** Widgets are the controls users interact with — dropdowns, date pickers, checkboxes, etc.

Widgets write their current value per default to `GuiStatus` (two-way binding via `targetModelXpath`). 
When the user changes a widget, all connected DataProviders and Renderers can automatically refresh.

Widgets can also write to a Wrs to modify data for later updating the database.

Widgets are created via static methods:
```javascript
bcdui.widget.createSingleSelect({ ... });
```

Or as custom HTML elements:
```html
<bcd-singleselect targetModelXpath="" ...></bcd-singleselect>
```

See all available widgets at [Widgets](/generated/index/widget.md).
<!-- LLM_HINT: see MCP ListAvailableSpecifications(widget) -->

---

### Components — Ready-Made Combinations

> **In plain English:** A Component is a pre-built combo of DataProviders, Renderers, and sometimes Widgets 
> — like a complete pivot table (`Cube`) or editable `Grid`, ready to drop in.

Components are configured with an XML configuration file and available as classes
```javascript
let myCube = new bcdui.component.cube.Cube({ targetHtml: "myCubeDiv", ... });
```

as well as custom elements too:
```html
<bcd-cube></bcd-cube>
```

See [Components](/generated/index/component.md) for available options.
<!-- LLM_HINT: see MCP ListAvailableSpecifications(component) -->

---

### Page Lifecycle — What Happens on Load

1. The HTML page loads and `bcdui.js` initializes the framework and CSS.
2. `GuiStatus` is initialized from the URL parameter `guiStatusGZ`.
3. All Renderers and Widgets are created and wait for `GuiStatus` to be ready.
4. Once ready, Widgets and Renderers trigger their DataProviders to fetch data.
5. Each Renderer produces its initial output at its `targetHtml`.

You don't need to manage any of this manually.

---

### Internationalization (I18n)

See [I18n](/manual/elements/i18n.md) for how to support multiple languages.

<!-- LLM_HINT: see MCP GetSpecification(i18n) -->

---

## On the Server

### WRS Servlet — Handles Data Requests

The WRS Servlet receives data requests **WRS-Requests** (**Wrq**) from the browser, queries the database through a BindingSet, and returns the result as a **WebRowSet (Wrs)**.

`SimpleModel` and `AutoModel` use this servlet per default — you just name them your BindingSet and they handle the rest.

The servlet also enforces **security** at the table, row, and column level, based on the BindingSet configuration.

See [Wrq](/manual/elements/wrq.md) and [Wrs](/manual/elements/wrs.md) for format details.

<!-- LLM_HINT: see MCP GetSpecification() for 'wrq' or 'wrs' -->

---

### BindingSet — Your Window into the Database

> **In plain English:** A BindingSet represents a table or view in BCD-UI. 

It controls:

- Which columns are exposed and what they're named
- Read/write access per user or role
- Row-level security
- Performance optimizations

Think of it as secure, configurable access to your database.

See [BindingSet](/manual/elements/bindingSet.md) for details.

<!-- LLM_HINT: see MCP GetSpecification(bindingSet) -->

---


### Modifying Data

You can collect a set of changes to a Wrs (via JavaScript, XSLT, or Widgets) and send it back to the server. 
The server applies those changes within the security constraints defined in the BindingSet.

See [Wrs](/manual/elements/wrs.md) for how data modification works.

<!-- LLM_HINT: see MCP GetSpecification(wrs) -->

---

## Project Layout

See [Project Layout](/manual/elements/projectLayout.md) for the required file and directory structure of a BCD-UI project.

<!-- LLM_HINT: see MCP GetSpecification(projectLayout) -->

