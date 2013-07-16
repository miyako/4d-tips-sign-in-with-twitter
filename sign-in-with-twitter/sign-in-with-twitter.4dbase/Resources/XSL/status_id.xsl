<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:str="http://exslt.org/strings">
				
<xsl:output method="text" />

<xsl:template match="/">

<xsl:choose>
<xsl:when test="/status/id">
<xsl:value-of select="/status/id" />
</xsl:when>
<xsl:when test="/hash/error">
<xsl:text>error:</xsl:text><xsl:value-of select="/hash/error" />
</xsl:when>
<xsl:when test="/errors/error">
<xsl:text>error:</xsl:text><xsl:value-of select="/errors/error" />
</xsl:when>
</xsl:choose>	
							
</xsl:template>
									
</xsl:stylesheet>