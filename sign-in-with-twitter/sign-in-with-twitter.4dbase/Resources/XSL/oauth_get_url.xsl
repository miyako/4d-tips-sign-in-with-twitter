<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:str="http://exslt.org/strings">

<!--create the URL for OAuth GET (use HTTP Authentication header)-->
				
<xsl:output method="text" />

<xsl:param name="endpoint" />

<xsl:template match="/">

	<xsl:value-of select="str:encode-uri($endpoint, false())" />		
	<xsl:if test="/oauth/*[not(starts-with(name(), 'oauth_'))]">
	<xsl:text>?</xsl:text>	
	</xsl:if>	

	<xsl:for-each select="/oauth/*[not(starts-with(name(), 'oauth_'))]">
	<xsl:sort select="name()" />

		<xsl:if test="position() != 1"><xsl:text>&amp;</xsl:text></xsl:if>
		
		<!-- the parameters are already URI encoded-->
<!--		
		<xsl:value-of select="concat(name(), '=', str:encode-uri(./@value, true()))" />	
-->
		<xsl:value-of select="concat(name(), '=', ./@value)" />	
						
	</xsl:for-each>
			
</xsl:template>
									
</xsl:stylesheet>