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
                <xsl:for-each select="*[position() &lt; 4]">
                  <xsl:element name="LI">
                  <xsl:value-of select="." />
                  </xsl:element>
                </xsl:for-each>
                <xsl:element name="LI">
                  <xsl:text>Memoria: </xsl:text>
                    <xsl:value-of select="memoria" />
                      <xsl:text>GB</xsl:text>
                </xsl:element>
                  <xsl:for-each select="disco">
                    <xsl:element name="LI">
                      <xsl:text>Disco: </xsl:text>
                      <xsl:value-of select="@capacidade" />
                      <xsl:text>GB</xsl:text>
                    </xsl:element>
                  </xsl:for-each>
                  <xsl:for-each select="*">
                    <xsl:if test="name()='gravadora'">
                      <LI>Gravadora de <xsl:value-of select="@tipo" /></LI>
                    </xsl:if>
                    <xsl:if test="name()='lectora'">
                      <LI>Lectora de <xsl:value-of select="@tipo" /></LI>
                    </xsl:if>
                </xsl:for-each>
              </xsl:for-each>
            </ul>
            </xsl:for-each>
        </BODY> 
    </HTML>    
  </xsl:template>
</xsl:stylesheet>