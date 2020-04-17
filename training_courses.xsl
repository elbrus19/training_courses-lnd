<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0"
                xmlns:x="http://www.w3.org/2005/Atom">
    <xsl:output method="xml"/>

    <xsl:template match="/">
        <courses>
                <xsl:for-each select="//x:entry">
                    <course>
                        <title>
                            <xsl:value-of select="x:title"/>
                        </title>
                        <link rel="{x:link/@rel}" href="{x:link/@href}"/>
                        <content type="{x:content/@type}">
                            <xsl:value-of select="x:content"/>
                        </content>
                    </course>
                </xsl:for-each>
        </courses>
    </xsl:template>
    
</xsl:stylesheet>
