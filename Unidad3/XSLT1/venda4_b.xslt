<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output 
method="html" 
indent="yes"  
encoding="utf-8"
/>
  <xsl:template match="//cliente">
<xsl:element name="{concat(name(), ': ')}"/>
<xsl:attribute name="{@cod"/>
</xsl:attribute>
</xsl:element>
</xsl:template>
<xsl:template match="//produtos">
<xsl:element name="Número de productos: "/>
<xsl:attribute name="{count(produto)}"/>
</xsl:attribute>
</xsl:element>
  </xsl:template>
</xsl:stylesheet>

<P>Número de productos: <xsl:for-each select="//produtos">
    <xsl:value-of select="count(produto)" />
    </xsl:for-each></P> 