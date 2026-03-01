# Project Layout

## Directory Layout
- Static client files go to /web/pageName/
    - Avoid inlining of client files in HTML
    - Call the page index.html
- BindingSets go to /web/WEB-INF/bcdui/bindings

## Gradle
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
