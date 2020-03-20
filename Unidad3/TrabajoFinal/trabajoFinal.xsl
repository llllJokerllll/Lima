<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output 
method="html" 
indent="yes"  
encoding="utf-8"
/>
  <xsl:template match="//vehiculos">
    <HTML> 
        <HEAD> 
            <TITLE>Lista dos coches</TITLE> 
        </HEAD> 
        <BODY>
            <h1>Propiedades de los coches</h1>    
            <xsl:for-each select="//coche">
            <h2><xsl:value-of select="@nome"/></h2>
            <table border="1">
            <tr>
              <xsl:for-each select="mecanica">
                <xsl:for-each select="*[position() &lt; 4]">
                  <xsl:element name="TH">
                  <xsl:value-of select="." />
                  </xsl:element>
                </xsl:for-each>
                <xsl:element name="TH">
                  <xsl:text>Cilindrada: </xsl:text>
                    <xsl:value-of select="cilindrada" />
                      <xsl:text>cm3</xsl:text>
                </xsl:element>
              </xsl:for-each>
            </tr>
            </table>
            </xsl:for-each>
        </BODY> 
    </HTML>    
  </xsl:template>
</xsl:stylesheet>