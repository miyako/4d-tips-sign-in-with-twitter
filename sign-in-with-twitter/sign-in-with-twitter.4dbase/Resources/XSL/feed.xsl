<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				>
				
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">

<feed>
<xsl:for-each select="/*[name()='feed']/*[name()='entry']">
<xsl:element name="entry">

<xsl:attribute name="url">
<xsl:value-of select="./*[name()='link' and @rel = 'alternate']/@href" />
</xsl:attribute>

<xsl:attribute name="image">
<xsl:value-of select="./*[name()='link' and @rel = 'image']/@href" />
</xsl:attribute>

<xsl:attribute name="text">
<xsl:value-of select="./*[name()='title']" />
</xsl:attribute>


</xsl:element>
</xsl:for-each>
</feed>
						
</xsl:template>
									
</xsl:stylesheet>