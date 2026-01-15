<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns="http://xmlns.oracle.com/AIA/Schema/Common">
    
    <!-- Identity template for copying elements -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- Sample transformation template -->
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- Add timestamp to header -->
    <xsl:template match="ns:header">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <xsl:if test="not(ns:timestamp)">
                <ns:timestamp>
                    <xsl:value-of select="current-dateTime()"/>
                </ns:timestamp>
            </xsl:if>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>
