<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../bcdui/xslt/stringUtil.xslt"/> <!--1-->

  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>

  <xsl:variable name="myString">This is a useless test. It will give a useless result</xsl:variable>  <!--2-->

  <!-- Replace 'useless' by 'useful' -->
  <xsl:variable name="myNewString">
    <xsl:call-template name="replaceString">  <!--3-->
      <xsl:with-param name="str" select="$myString"/>
      <xsl:with-param name="find" select="'useless'"/>
      <xsl:with-param name="replacement" select="'useful'"/>
    </xsl:call-template>
  </xsl:variable>

  <!-- and run through the non empty single nodes and do something with each node -->
  <xsl:template match="/*">
    <ul>
      <li>Old: <xsl:value-of select="$myString"/></li>  <!--4-->
      <li>New: <xsl:value-of select="$myNewString"/></li>
    </ul>
  </xsl:template>
</xsl:stylesheet>