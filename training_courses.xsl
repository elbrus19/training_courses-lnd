<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
                xmlns="http://www.w3.org/2005/Atom" 
                xmlns:dc="http://purl.org/dc/elements/1.1/">
    <xsl:output method="xml"/>

    <xsl:template match="/">
        <courses>
            <xsl:for-each select="/feed/entry">
                <course>
                    <title type="{title/@type}">
                        <xsl:value-of select="title"/>
                    </title>
                    <link rel="{link/@rel}" href="{link/@href}"/>
                    <content type="{content/@type}">
                        <xsl:value-of select="content"/>
                    </content>
                </course>
            </xsl:for-each>
        </courses>
    </xsl:template>

</xsl:stylesheet>
