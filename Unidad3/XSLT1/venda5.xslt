<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output 
method="text" 
indent="yes"  
encoding="utf-8"
/>
  <xsl:template match="cliente">
    <xsl:for-each select="//produto">
<xsl:text>Producto de la familia </xsl:text> 
      <xsl:substring((value-of select="@cod"),1,4) />
<xsl:text> con código </xsl:text>
      <xsl:value-of select="@cod" />
<xsl:text> para el cliente de código </xsl:text>
<xsl:value-of select="//cliente/@cod" />
<xsl:text>
</xsl:text>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>