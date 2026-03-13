# Project Setup

## Directory Layout
- Your static client files go to /web/pageName/
  - Avoid inlining of client files in HTML
  - Call the page index.html
- [BindingSets](/manual/elements/bindingSet.md) go to `/WEB-INF/bcdui/bindings`
- BCD-UI's jar not only holds the Java classes but also all static JavaSctipt, HTML and css resources.
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

## Required config in WEB-INF

**web.xml**

BCD-UI needs a set of specific entries in `web.xml` to function.
The a typical `web.xml` can be found here [web.xml](https://raw.githubusercontent.com/businesscode/BCD-UI/refs/heads/master/Server/configFiles/WebContent/WEB-INF/web.xml), merge it with any project-specific settings
and put it to `WEB-INF/web.xml`.

**shiro.ini**

BCD-UI relies on Apache Shiro framework for security. 
You need at least this `WEB-INF/shiro.ini` file to avoid Shiro failing:

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

<!-- LLM_HINT DETAILS_STARTING -->

## Optional files
See [here](https://github.com/businesscode/BCD-UI/tree/master/Server/configFiles) for optional additional config files for your server.

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

You may check online for [more details or alternatives](https://github.com/businesscode/BCD-UI-Docu/tree/refs/heads/master/resources).

### XML Schemata
BCD-UI provides [related XML schema files](https://github.com/businesscode/BCD-UI-Docu/tree/refs/heads/master/docs/xsd) .xsd not only for validation but with extensive documentation.
for development support. Add these files to your IDE to get support when setting up configuration files.

This is usually done by downloading the files and adding the catalog file to the IDE setup.
