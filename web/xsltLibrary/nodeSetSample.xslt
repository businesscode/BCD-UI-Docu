<xsl:stylesheet version="1.0" exclude-result-prefixes="exslt msxsl"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:wrs="http://www.businesscode.de/schema/bcdui/wrs-1.0.0"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"> <!--1-->

  <xsl:import href="../bcdui/xslt/stringUtil.xslt"/> <!--2-->

  <msxsl:script language="JScript" implements-prefix="exslt">  <!--3-->
    this['node-set']= function (x) { return x; }
  </msxsl:script>

  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>

  <xsl:variable name="myString">This is a test</xsl:variable>  <!--4-->

  <!-- split up the string -->
  <xsl:variable name="myStringTokens">  <!--5-->
    <xsl:call-template name="tokenize">
      <xsl:with-param name="string" select="$myString"/>
      <xsl:with-param name="delimiter" select="' '"/>
    </xsl:call-template>
  </xsl:variable>
  <!-- build a nodeset -->
  <xsl:variable name="myNodes" select="exslt:node-set($myStringTokens)"/>  <!--6-->

  <!-- and run through the non empty single nodes and do something with each node -->
  <xsl:template match="/*">
    <ul>
      <xsl:for-each select="$myNodes/wrs:Wrs/wrs:Data/wrs:R[wrs:C[.!='']]">  <!--7-->
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </ul>
  </xsl:template>
</xsl:stylesheet>