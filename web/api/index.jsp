<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- tag::taglibs[] -->
<%@ taglib uri="http://de.businesscode.web/jsp/taglib/bcdui/activity" prefix="a"%>
<%@ taglib uri="http://de.businesscode.web/jsp/taglib/bcdui/bcdui" prefix="b"%>
<%@ taglib uri="http://de.businesscode.web/jsp/taglib/bcdui/widget" prefix="w"%>
<%@ taglib uri="http://de.businesscode.web/jsp/taglib/bcdui/widgetNg" prefix="wng"%>
<%@ taglib uri="http://de.businesscode.web/jsp/taglib/bcdui/webpage" prefix="webpage"%>
<%@ taglib uri="http://de.businesscode.web/jsp/taglib/bcdui/component" prefix="cmp"%>
<!-- end::taglibs[] -->

<!DOCTYPE HTML>
<html>
<!-- tag::init[] -->
<head>
  <meta charset="UTF-8"/>
  <title>BCD-UI JSP sample</title>
  <b:init />
</head>
<!-- end::init[] -->
<body>
<div id="bcdMainContainer">

  <div id="bcdHeaderArea"><div id="bcdLogoImageArea"></div></div>
  <div id="bcdSpacerArea"></div>

  <div class="bcdContentContainer">

    <div id="bcdSideBarContainer">
      <div class="bcdSection">
      </div>
    </div>

    <!-- tag::renderer[] -->
    <div id="bcdBodyContainer">
      <div class="bcdCaption">Output is placed here</div>
      <b:renderer> <!--1-->
        <b:inputModel>
          <b:model url="../sampleWrs"></b:model>
        </b:inputModel>
      </b:renderer>
    </div>
    <!-- end::renderer[] -->
  </div>

</div>
</body>
</html>
