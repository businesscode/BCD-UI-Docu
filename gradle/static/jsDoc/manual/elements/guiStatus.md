### GuiStatus
The GuiStatus at is a central DataProvider created by BCD-UI with id `guiStatus` on page load.
- It is initialized from the page's HTML parameter `guiStatusGZ`. This can be used to set the initial state for a page, for drill-overs and for bookmarks.
- It holds the current state of the GUI, combining the initial state and changes done by the user via filters for example.
- It is default-target for all widgets i.e., `$guiStatus` is implicitly prepended to all widget `targetModelXpath` parameters and others, if none is given.
- `/guiStatus:Status/f:Filter` It is the default source for filters for components when retrieving data
- For JavaScript it can be found at `bcdui.wkModels.guiStatus`, for xPaths at `$guiStatus/`.
- To set a default value on page entry, create a ModelUpdater like this:
````js
  // If no filter is set already, limit the id range as default
  new bcdui.core.ModelUpdater({ targetModel: bcdui.wkModels.guiStatus , autoUpdate: false, 
    chain: function guiStatusFilter(guiStatusData) {
      let guiStatus = bcdui.wkModels.guiStatus;
      if (guiStatus.query("/*/f:Filter") === null) {
        guiStatus.write("/*/f:Filter/f:Expression[@bRef='id' and @op='>=' and @value='1030000']");
        guiStatus.write("/*/f:Filter/f:Expression[@bRef='id' and @op='<=' and @value='1030125']");
      }
    }
  });
 ````
