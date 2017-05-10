<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                xmlns:html="http://www.w3.org/1999/xhtml"> <!--1-->

  <xsl:import href="../bcdui/js/core/core.xslt"/> <!--2-->
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="no"/>

  <xsl:template match="/*">
    <div> <!--3-->
      <xsl:apply-templates select="*"/>
    </div>
  </xsl:template>

  <!-- Copy html content 1:1 -->
  <xsl:template match="html:*"> <!--4-->
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
