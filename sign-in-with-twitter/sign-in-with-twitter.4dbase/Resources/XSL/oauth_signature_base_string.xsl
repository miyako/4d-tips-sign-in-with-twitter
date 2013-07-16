<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:str="http://exslt.org/strings">
				
<xsl:output method="text" />

<xsl:param name="endpoint" />
<xsl:param name="method" />

<xsl:template match="/">

	<xsl:value-of select="$method" /><xsl:text>&amp;</xsl:text>
	<xsl:value-of select="str:encode-uri($endpoint, true())" />
	<xsl:text>&amp;</xsl:text>
		
	<xsl:for-each select="/oauth/*">
	<xsl:sort select="name()" />

		<xsl:if test="position() != 1"><xsl:text>%26</xsl:text></xsl:if>
		
		<xsl:choose>		
		<xsl:when test="starts-with(name(), 'oauth_')">
		<xsl:value-of select="str:encode-uri(concat(name(), '=', str:encode-uri(./@value, true())), true())" />		
		</xsl:when>
		<xsl:otherwise>				
		<xsl:value-of select="str:encode-uri(concat(name(), '=', ./@value), true())" />	
		</xsl:otherwise>
		</xsl:choose>
<!--
		<xsl:value-of select="str:encode-uri(concat(name(), '=', str:encode-uri(./@value, true())), true())" />	
-->														
	</xsl:for-each>
			
</xsl:template>
									
</xsl:stylesheet>