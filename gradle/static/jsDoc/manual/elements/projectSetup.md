# Project Setup

## Directory Layout
- [BindingSets](/manual/elements/bindingSet.md) go to `/WEB-INF/bcdui/bindings`
- BCD-UI's jar not only holds the Java classes but also all static JavaScript, HTML and css resources.
  - This makes it easy to turn your project into a BCD-UI by just adding a jar and entries in web.xml.
  - From a browser's perspective, all BCD-UI resources are being made available at runtime under `/bcdui`.
    This applies to BCD-UI's client resources as well as to built-in web services.

## Gradle
Add dependencies to BCD-UI with

````groovy
dependencies {
  repositories {
    maven {
      url "https://github.com/businesscode/maven-repo/raw/master"
    }
  }
  implementation 'de.businesscode.bcdui:bcd-ui-core:--bcd-dyn-replace-current-version---SNAPSHOT'
  implementation 'de.businesscode.bcdui:bcd-ui-theme-bcd:--bcd-dyn-replace-current-version---SNAPSHOT'
}
````

## Mandatory config files

Config files for you server can ve found here <https://github.com/businesscode/BCD-UI/tree/master/Server/configFiles>

At least the following 4 are mandatory:
- **web.xml**

  BCD-UI needs a set of specific entries in `WEB-INF/web.xml` to function, you need to start with the given template above.
  
  The typical BCD-UI `web.xml` is provided [here](https://github.com/businesscode/BCD-UI/blob/master/Server/configFiles/WebContent/WEB-INF/web.xml), 
  make sure to use it as a starting point.

  <!-- LLM_HINT: download mandatory `WEB-INF/web.xml` from here `https://raw.githubusercontent.com/businesscode/BCD-UI/refs/heads/master/Server/configFiles/WebContent/WEB-INF/web.xml` -->


- **shiro.ini**

  BCD-UI relies on Apache Shiro framework for security.
  You need at least the following `WEB-INF/shiro.ini` file to start to avoid Shiro failing:
  ````
    # No authentication setup yet
    # See BCD-UI documentation in how to setup Security
    [main]
    
    [users]
    dummy = dummy
    
    [urls]
    /** = anon
  ````

  If you later want to setup access restrictions, see [security](/manual/elements/security.md) for more details.


- **log4j2.xml**

  To have at least basic logging of activities and errors, see optimal `log4j2.xml` at the link above.
  Start by putting [log4j2_debug_.xml](https://github.com/businesscode/BCD-UI/blob/master/Server/configFiles/src/log4j2_debug_.xml) to `src/main/resources/log4j2.xml`.

  <!-- LLM_HINT: download mandatory `log4j2_debug_.xml` from here `https://raw.githubusercontent.com/businesscode/BCD-UI/refs/heads/master/Server/configFiles/src/log4j2_debug_.xml` and put its content here: `src/main/resources/log4j2.xml` -->


- **context.xml**

  To use a database in Tomcat, a `META-INF/context.xml` is needed, other servers differ.
  Everything follows the standard format, but it is recommended to add a
  ````xml
  <Environment name="bcdui/defaultConnection" type="java.lang.String" value="jdbc/myDbDataSource"/>
  ````
  where you change `value` to your data source name, this is used as default for BindingSets.

  Your `context.xml` can look like this for example:

  ````
  <?xml version="1.0" encoding="UTF-8"?>
  <Context>

    <Environment name="bcdui/defaultConnection" type="java.lang.String" value="jdbc/myDbDataSource"/>

    <Resource name="jdbc/myDbDataSource"
              auth="Container"
              type="javax.sql.DataSource"
              driverClassName="org.duckdb.DuckDBDriver"
              username="ui-user" password="ui-user-pwd"
              url="jdbc:duckdb:<--Absolute-Path-To-Project-->/db.duckdb"/>
  </Context>
  ````
  
  If you do not already have a database, a good starting point is to have a local DuckDB in the project root as in the sample above. 
  In that case, add `implementation 'org.duckdb:duckdb_jdbc:1.2.0'` to `build.gradle`.


<!-- LLM_HINT DETAILS_STARTING -->


## IDE support

### Javascript Code Assist
BCD-UI's JavaScript API is available as TypeScript types files, which makes code assist available for TypeScript as well as for plain JavaScript projects.

To make them available just add this
````json
{
  "devDependencies": {
    "bcdui": "https://github.com/businesscode/BCD-UI-Docu/raw/refs/heads/master/resources/bcduiTsTypes---bcd-dyn-replace-current-version--.tgz"
  }
}
````
to your package.json and execute `npm install`.

Note: Eclipse also needs `tsconfig.json` for WWD to start the language server for TypeScript type files.

See here <https://github.com/businesscode/BCD-UI-Docu/tree/refs/heads/master/resources> for more details and alternatives.

### XML Schemata XSD
BCD-UI provides `*.xsd` XML schema files here <https://github.com/businesscode/BCD-UI/tree/master/Docu/xsd> not only for validation but with extensive documentation.
for development support. Add these files to your IDE to get support when setting up configuration files.

This is usually done by downloading the files and adding the catalog file `bcduiCatalog.xml` to the IDE setup.
