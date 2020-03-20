<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output 
method="xml" 
indent="yes"  
encoding="utf-8"
/>
  <xsl:template match="//vehiculos">
    <xsl:element name="almacenamento">  
        <xsl:element name="Cilindrada">
        <xsl:attribute name="num_cilindros">
        <xsl:value-of select="@num_cilindros"/>
        </xsl:attribute>
            <xsl:copy-of select="//cilindrada"/>
        </xsl:element>
        <xsl:element name="motor">
        <xsl:attribute name="velocidades">
        <xsl:value-of select="@velocidades"/>
        </xsl:attribute>
            <xsl:copy-of select="//motor"/>
         </xsl:element>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>