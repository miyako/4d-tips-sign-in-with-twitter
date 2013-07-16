<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				>
				
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">

<statuses>
<xsl:for-each select="/statuses[@type='array']/status">
<xsl:element name="status">

<xsl:attribute name="text">
<xsl:value-of select="./retweeted_status/text" />
</xsl:attribute>

<xsl:attribute name="id">
<xsl:value-of select="./user/id" />
</xsl:attribute>

<xsl:attribute name="name">
<xsl:value-of select="./user/name" />
</xsl:attribute>

<xsl:attribute name="image">
<xsl:value-of select="./user/profile_image_url" />
</xsl:attribute>

</xsl:element>
</xsl:for-each>
</statuses>
						
</xsl:template>
									
</xsl:stylesheet>