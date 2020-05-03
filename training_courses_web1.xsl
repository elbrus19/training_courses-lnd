<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : training_courses_web1.xsl
    Created on : 3 de mayo de 2020, 19:55
    Author     : Elbrus
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:x="http://www.w3.org/2005/Atom"
                exclude-result-prefixes="x"               
                version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>training_courses_web1.xsl</title>
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
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="//x:entry">
                                <xsl:sort select="x:title" order="ascending"/>
                                <tr>
                                    <td>
                                        <a href="{x:link/@href}">
                                            <xsl:value-of select="x:title"/>
                                        </a>                                   
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
