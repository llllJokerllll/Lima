<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output 
method="text" 
indent="yes"  
encoding="utf-8"
/>
  <xsl:template match="venda">
    <xsl:for-each select="//produto">
      <xsl:if test="@cod='LACT012'">
        Encontrado!!!
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>