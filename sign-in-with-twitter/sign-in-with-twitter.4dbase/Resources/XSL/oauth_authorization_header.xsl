<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:str="http://exslt.org/strings">

<!--create the HTTP Authorization header for OAuth POST/GET/DELETE, etc.-->
				
<xsl:output method="text" />

<xsl:template match="/">
		
	<xsl:text>OAuth </xsl:text>
	
	<xsl:for-each select="/oauth/*[starts-with(name(), 'oauth_')] | /oauth/*[name() = 'realm']">
	<xsl:sort select="name()" />

		<xsl:if test="position() != 1"><xsl:text>,</xsl:text></xsl:if>

		<xsl:choose>				
		<xsl:when test="name() = 'realm'">
		<xsl:value-of select="concat(name(), '=&quot;', ./@value, '&quot;')" />			
		</xsl:when>				
		<xsl:otherwise>																								
		<xsl:value-of select="concat(name(), '=&quot;', str:encode-uri(./@value, true()), '&quot;')" />	
		</xsl:otherwise>	
		</xsl:choose>
																										
	</xsl:for-each>
	
</xsl:template>
									
</xsl:stylesheet>