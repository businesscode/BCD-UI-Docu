# oAuthLoginOnSuccess()
<span hidden class='htmlPackage'>bcdui.widgetNg.login</span>


To support OAuth flow with cookie SameSite strict, we work with a client-site redirect herewhich is triggered from within the popup by a script send from OAuthAuthenticatingFilter on login successThis way we get the cookie and stay in the successfully validated session

````js
// Usage
bcdui.widgetNg.login.oAuthLoginOnSuccess( redirectUrl );
  ````
**Parameters**:


| Name     | Type     | Default  | Description |
|----------|----------|----------|-------------|
| redirectUrl | string |  |  |


**Returns**: {void}
