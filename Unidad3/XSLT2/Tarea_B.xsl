<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output 
method="html" 
indent="yes"  
encoding="utf-8"
/>
  <xsl:template match="//equipos">
    <HTML> 
        <HEAD> 
            <TITLE>Lista das máquinas</TITLE> 
        </HEAD> 
        <BODY>
            <h1>Máquinas</h1>
            <xsl:for-each select="//máquina">
            <a href="http://{config/IP}"><xsl:value-of select="@nome"/></a>
            <br/>
            </xsl:for-each>
            <xsl:for-each select="//máquina">
            <h2><xsl:value-of select="@nome"/></h2>
            <ul>
                <xsl:for-each select="hardware">
                <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ul>
            </xsl:for-each>
        </BODY> 
    </HTML>    
  </xsl:template>
</xsl:stylesheet>