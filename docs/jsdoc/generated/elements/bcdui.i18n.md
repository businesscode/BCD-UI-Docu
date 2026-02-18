# Package bcdui.i18n



----
<h4>Classes</h4>



----
<h4>Functions</h4>



[formatMessage()](bcdui.i18n.formatMessage.md)\
formats message.

[getValue()](bcdui.i18n.getValue.md)\
synchronously translates i18n key, please always use bcdTranslate attribute on html for i18n whenever possible.

[isReady()](bcdui.i18n.isReady.md)

[switchLanguage()](bcdui.i18n.switchLanguage.md)\
reloads entire page in a given languagethis function requires the mapped SubjectPreferences servlet and a subjectPreferences.xml holdingan entry for <cnf:Setting name="bcd_i18n:lang">.

[syncTranslateFormatMessage()](bcdui.i18n.syncTranslateFormatMessage.md)\
Assumes bcdui.wkModels.bcdI18nModel is ready and synchronously translates and formats the given message id..

[syncTranslateHTMLElement()](bcdui.i18n.syncTranslateHTMLElement.md)\
Translates the given over HTML element or the whole documentwithout waiting for i18nModel, we rely on it being loaded and executed before.

[translateHTMLElement()](bcdui.i18n.translateHTMLElement.md)\
Translates HTML element and its children according to i18n model values, the method is asynchronous and "schedules" the translation.

----
<h4>Members</h4>



----
<h4>Subpackages</h4>

