<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../bcdui/js/core/core.xslt"/> <!--1-->
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/*">
    <div> <!--2-->
      <!-- Create a model -->
      <xsl:call-template name="model"> <!--3-->
        <xsl:with-param name="id" select="'myModelXslt'"/> <!--4-->
        <xsl:with-param name="url" select="'../sampleWrs.xml'"/>
      </xsl:call-template>
      <!-- Output its result right here -->
      <xsl:call-template name="renderer">
        <xsl:with-param name="inputModel">myModelXslt</xsl:with-param>
      </xsl:call-template>
    </div>
  </xsl:template>

</xsl:stylesheet>
