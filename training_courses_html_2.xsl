<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:x="http://www.w3.org/2005/Atom"
                xmlns:p="https://www.elielcito.com"
                exclude-result-prefixes="p"               
                version="1.0">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>training_courses_html_2.xsl</title>
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
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Course available</th>
                                <th>Link web information</th>
                                <th>Content in relacion to this course</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="//p:course">
                            <tr>
                                <td>
                                    <xsl:value-of select="p:title"/>
                                </td>
                                <td>
                                    <a href="{p:link/@href}">Click here</a>
                                </td>
                                <td>
                                    <xsl:value-of disable-output-escaping="yes" select="p:content"/>
                                </td>
                            </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
