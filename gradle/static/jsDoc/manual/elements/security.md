# Security for BCD-UI

BCD-UI is build for high security requirements in single and multi-tenant environments.
The source code undergoes regular Fortify static source code analysis as well as dynamic penetration tests,
and recent OWASP findings are taken into account.

BCD-UI relies on Apache Shiro and extends it to provide access control to the application and the data


## Levels of access control

BCD-UI supports easy setup for:

- Role and user based permissions
- Access control to pages
- Row-Level security, i.e. different subsets of database rows are accessible for different permissions
- Read/Write access control, i.e. which tables can be read or written to based on permissions
- Easy static setup of users and roles
- Dynamic setup of users and roles in bcd_sec_ tables
- OAuth 2.0 identity single-sign-on with permissions maintained in the application

Standard [web.xml](https://raw.githubusercontent.com/businesscode/BCD-UI/refs/heads/master/Server/configFiles/WebContent/WEB-INF/web.xml)
already sets up Apache Shiro filter for the application.


## shiro.ini
A minimal `WEB-INF/shiri.ini` is required, even for all-anonymous access:

````
# No authentication setup yet
# See BCD-UI documentation on how to setup security
[main]

[users]
dummy = dummy

[urls]
/** = anon
````

Check the full BCD-UI [shiro.ini](https://raw.githubusercontent.com/businesscode/BCD-UI/refs/heads/master/Server/configFiles/WebContent/WEB-INF/shiro.ini) -template,
containing information about how to setup the various aspects of access control.


## Row-Level security and database read-write access

Row-level security is configured in a `BindingSet` together with `subjectSettings.xml`.

This makes sure that the user can only view and aggregate data where permissions are set and when writing, only these values can be set.

