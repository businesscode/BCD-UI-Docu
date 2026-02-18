# BCD-UI Concepts

---
## Client

### Page lifecycle
The carrier HTML in from of the standard HTML page structure is loaded, see element 'pageSkeleton'.
Loading bcdui.js also loads the standard CSS and initializes the BCD-UI framework.
The guiStatus is initialized from the HTML parameter guiStatusGZ.
All Renderers and Widgets are created and initialized after guiStatus is ready.
They then request their DataProviders to become ready by retrieving data for example and become ready after them.
There is no need to do that explicitly.
Once the GuiStatus is ready, the Widgets and Rendered trigger their input DataProviders to retrieve data and produce their initial output at their targetHtml.

### GuiStatus
The GuiStatus at is a central DataProvider created by BCD-UI with id `guiStatus` on page load.
- It is initialized from the page's HTML parameter `guiStatusGZ`. This can be used to set the initial state for a page, for drill-overs and for bookmarks.
- It holds the current state of the GUI, combining the initial state and changes done by the user via filters for example.
- It is default-target for all widgets i.e., `$guiStatus` is implicitely prepended to all widget `targetModelXpath` parameters and others, if none is given.
- For JavaScript it can be found at `bcdui.wkModels.guiStatus`, for xPaths at `$guiStatus/`.
- To set a default value on page entry, create a ModelUpdater like this:
  ````js
  // If no filter is set, limit the id range
  new bcdui.core.ModelUpdater({ targetModel: bcdui.wkModels.guiStatus , autoUpdate: false, 
    chain: function guiStatusFilter(guiStatusDataDoc) {
      if (guiStatusDataDoc.selectSingleNode("/*/f:Filter") === null) {
        bcdui.core.createElementWithPrototype(guiStatusDataDoc, "/*/f:Filter/f:Expression[@bRef='id' and @op='>=' and @value='1030000']");
        bcdui.core.createElementWithPrototype(guiStatusDataDoc, "/*/f:Filter/f:Expression[@bRef='id' and @op='<=' and @value='1030125']");
      }
    }
  });
  ````

### Widgets
Widgets are created with static `create#WidgetName#()` methods and place themselves at their targetHtml, usually a div in the sidebar.
All widgets are also available with the same parameters custom elements `<bcd-#WidgetName#></bcd-#WidgetName#>`.
Widgets provide two-way binding for their `targetModelXpath`.
See available Widgets at group 'widget'.

### Renderer
Classes being a Renderer like a Pivot table or Chart output their content to a targetHtml, usually some div in the man body area.
Renderers get their data from DataProviders and execute them to make them retrieve their data.
All Renderers are also available with the same parameters custom elements `<bcd-#ClassName#></bcd-#ClassName#>`.
See the generic Renderer in the group 'core' and more advanced ones in 'component'.

### DataProvider
Classes being a DataProvider offer their data to other DataProviders or Renderers.
They only execute(), i.e. retrieve the data lazy, usually a `Renderer` or another `DataProvider` using it as input triggers it.
See available DataProvider at group 'core'.

### Data retrieval
Data is retrieved from the server with the `SimpleModel` or `AutoModel`.
Both send a WRS-Request (see details at element wrq) to the server, which is an XML mimicking an SQL and per default take /*/f:Filter in the guiStatus into account.
Data is sent back as WebRowSets (see details at element wrs), which is a BCD-UI XML format for tabular data.
See both at group 'core'.

### Standard HTML page structure
BCD-UI theme works easiest with the predefined HTML page structure.
This layout features a header, a collapsable left and right sidebar, a main body area and a footer.
BCD-UI's standard layout minimizes the need of project-specific CSS, usually you can start without.
Check the 'pageSkeleton' element for a template of a typical page.

### Internationalization i18n
See at element 'i18n'.


---
## Server

### Wrs Servlet
A pre-built servlet for retrieving WRS based on a WRS request, aka Wrq.
Usually SimpleModel or AutoModel are used to send the Wrq and retrieve the WRS, they use the Wrs Servlet's url as default.
The servlet uses BindingSets to match the Wrq with the database.
It applies security constraints on table and row level and in regard to read/write rights, all defined in the BindingSet.

### BindingSet
A BindingSet represents a view or table in BCD-UI.
It controls naming, row adn column and read/write access and performance optimization.
See at element 'bindingSet'.

---
## Project structure

### Directory layout
- Static client files go to /web/pageName/
  - Avoid inlining of client files in HTML
  - Call the page index.html
- BindingSets go to /web/WEB-INF/bcdui/bindings

### Gradle
Add dependencies to BCD-UI with
````groovy
dependencies {
  repositories {
    maven {
      url "https://github.com/businesscode/maven-repo/raw/master"
    }
  }
  implementation 'de.businesscode.bcdui:bcd-ui-core:5.7.0-SNAPSHOT'
  implementation 'de.businesscode.bcdui:bcd-ui-theme-bcd:5.7.0-SNAPSHOT'
}
````
