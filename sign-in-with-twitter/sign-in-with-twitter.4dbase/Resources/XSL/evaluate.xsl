<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:str="http://exslt.org/strings"
				xmlns:dyn="http://exslt.org/dynamic">
				
<xsl:output method="text" />

<xsl:param name="xpath" />

<xsl:template match="/">

<xsl:for-each select="dyn:evaluate($xpath)">	
<xsl:value-of select="." />
</xsl:for-each>			
											
</xsl:template>
									
</xsl:stylesheet>