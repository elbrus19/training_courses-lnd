<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>training_courses_html.xsl</title>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
            </head>
            <body>
                <div class="container">
                    <xsl:for-each select="//course">
                        <h1>
                            <xsl:value-of select="title"/>
                        </h1>
                        <h3>
                            <a href="{link/@href}">Link to project</a>
                        </h3>
                        <div>
                            <xsl:value-of disable-output-escaping="yes" select="content"/>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
