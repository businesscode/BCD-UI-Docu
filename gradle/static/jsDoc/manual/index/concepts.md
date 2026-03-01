# BCD-UI Concepts

<!-- LLM_HINT: Use MCP GetSpecification() to resolve the links. Set element to mf based filename, 
     for example GetDetails('wrq') for '/manual/elements/wrq.md' -->

---
## Client

### Page lifecycle
The carrier HTML in from of the standard HTML page structure is loaded.
Loading bcdui.js also loads the standard CSS and initializes the BCD-UI framework.
The guiStatus is initialized from the HTML parameter guiStatusGZ.
All Renderers and Widgets are created and initialized after guiStatus is ready.
They then request their DataProviders to become ready by retrieving data for example and become ready after them.
There is no need to do that explicitly.
Once the GuiStatus is ready, the Widgets and Rendered trigger their input DataProviders to retrieve data and produce their initial output at their targetHtml.

### GuiStatus
The GuiStatus at is a central DataProvider created by BCD-UI with id `guiStatus` on page load.
- It is initialized from HTML parameter `guiStatusGZ`
- It holds the current state of the GUI, combining the initial state and changes done by the user via widgets for example.
- It is default-target for all widgets
- It is the default source for f:Filter for components
- For JavaScript it can be found at `bcdui.wkModels.guiStatus`, for xPaths at `$guiStatus/`
- A ModelUpdater can be easily used to set default value on page entry
See [GuiStatus](/manual/elements/guiStatus.md) for more details.
<!-- LLM_HINT: see MCP GetSpecification(guiStatus) -->

### Widgets
Widgets are created with static `create#WidgetName#()` methods and place themselves at their targetHtml, usually a div in the sidebar.
All widgets are also available with the same parameters custom elements `<bcd-#WidgetName#></bcd-#WidgetName#>`.
Widgets provide two-way binding for their `targetModelXpath`.
Available widgets can be seen here [Widgets](/generated/index/widget.md).
<!-- LLM_HINT: see MCP GetSpecification(widget) -->


### Renderers
Classes being a Renderer like a Pivot table or Chart output their content to a targetHtml, usually some div in the man body area.
Renderers get their data from DataProviders and execute them to make them retrieve their data.
All Renderers are also available with the same parameters custom elements `<bcd-#ClassName#></bcd-#ClassName#>`.
See the generic [Renderer](/generated/elements/bcdui.core.Renderer.md) and more advanced ones in [Components](/generated/index/component.md).
<!-- LLM_HINT: see MCP  GetSpecification(component) -->

### DataProviders
Classes being a DataProvider offer their data to other DataProviders or Renderers.
They only execute(), i.e. retrieve the data lazy, usually a `Renderer` or another `DataProvider` using it as input triggers it.
See available DataProviders at [Core](/manual/generated/index/core.md).
<!-- LLM_HINT: see MCP GetSpecification(core) -->

### Data Retrieval
Data is retrieved from the server with the
[SimpleModel](/generated/elements/bcdui.core.SimpleModel.md) or [AutoModel](/generated/elements/bcdui.core.AutoModel.md).
Both send a [WRS-Request](/manual/elements/wrq.md) to the server, which is an XML mimicking an SQL and per default take /*/f:Filter in the guiStatus into account.
Data is sent back as WebRowSets [Wrs](/manual/elements/wrs.md), which is a BCD-UI XML format for tabular data. \
Components build DataProviders in the background bases on their configuration.
<!-- LLM_HINT: see MCP GetSpecification(Wrs) -->

### Data Modifications
Wrs is the primary data exchange format in BCD-UI and kept by DataProviders.
You can collect a set of changes to a Wrs via JavasScript, XSLT or directly via Widgets 
and sent the Wrs back to the server, which then applies these changes within the limits allowed for the user. \
See [Wrs](/manual/elements/wrs.md) for more on data manipulations.


### Standard HTML page structure
BCD-UI theme works easiest with the predefined HTML page structure.
This layout features a header, a collapsable left and right sidebar, a main body area and a footer.
BCD-UI's standard layout minimizes the need of project-specific CSS, usually you can start without.
See [Page Skeleton](/manual/elements/pageSkeleton.md) for a template of a typical page matching BCD-UI theming.
<!-- LLM_HINT: see MCP GetSpecification(pageSkeleton) -->

### Internationalization I18n
See at element [I18n](/manual/elements/i18n.md).
<!-- LLM_HINT: see MCP GetSpecification(i18n) -->

---
## Server

### Wrs Servlet
A pre-built servlet for retrieving Wrs based on a [Wrq](/manual/elements/wrq.md), i.e. Wrs-Requests.
Usually `SimpleModel` or `AutoModel` are used to send the Wrq and retrieve the WRS, they use the Wrs Servlet's url as default.
The servlet uses `BindingSets' to match the Wrq with the database.
It applies security constraints on table and row level and in regards to read/write rights, all defined in the BindingSet.
<!-- LLM_HINT: see MCP GetSpecification() for wrs, wrq or bindingSet -->

### BindingSet
A [BindingSet](/manual/elements/bindingSet.md) represents a view or table in BCD-UI.
It controls naming, row adn column and read/write access and performance optimization.
<!-- LLM_HINT: see MCP GetSpecification(bindingSet) -->

___
## Project Layout
Files and directories needed for a BCD-UI project can be found at [Project Layout](/manual/elements/projectLayout.md)
<!-- LLM_HINT: see MCP GetSpecification(projectLayout) -->
