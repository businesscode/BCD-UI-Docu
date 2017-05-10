<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                xmlns:html="http://www.w3.org/1999/xhtml"
                xmlns:cust="http://www.businesscode.de/schema/bcdui/customization-1.0.0"> <!--1-->

  <xsl:import href="../bcdui/js/core/core.xslt"/>
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="no"/>

  <!-- Your DSL extension -->
  <xsl:template match="cust:MyRenderer"> <!--2-->

    <H2>Output of DSL</H2>

    <xsl:call-template name="model"> <!--3-->
      <xsl:with-param name="id">dataModel</xsl:with-param>
      <xsl:with-param name="url" select="@dataUrl"/> <!--4-->
    </xsl:call-template>

    <xsl:call-template name="renderer">
      <xsl:with-param name="targetHtml" select="@targetHtml"/>
      <xsl:with-param name="inputModel">dataModel</xsl:with-param>
    </xsl:call-template>

  </xsl:template>

  <xsl:template match="/*"> <!--5-->
    <div>
      <xsl:apply-templates select="*"/>
    </div>
  </xsl:template>

  <!-- Copy html content 1:1 -->
  <xsl:template match="html:*">
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
