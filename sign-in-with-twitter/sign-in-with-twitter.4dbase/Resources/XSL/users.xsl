<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				>
				
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">

<users>
<xsl:for-each select="/users[@type='array']/user">
<xsl:element name="user">

<xsl:attribute name="id">
<xsl:value-of select="id" />
</xsl:attribute>

<xsl:attribute name="name">
<xsl:value-of select="name" />
</xsl:attribute>

<xsl:attribute name="image">
<xsl:value-of select="profile_image_url" />
</xsl:attribute>

</xsl:element>
</xsl:for-each>
</users>
						
</xsl:template>
									
</xsl:stylesheet>