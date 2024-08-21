<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0"
                xmlns:media="http://www.example.com/media">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>XD Media</title>
                <style>
                    table { border-collapse: collapse; width: 100%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>XD Media</h2>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Release Date</th>
                        <th>Duration(mins)</th>
                        <th>Director</th>
                        <th>Cast</th>
                        <th>Rating</th>
                        <th>Language</th>
                        <th>Platform</th>
                    </tr>
                    
                    <xsl:for-each select="//media:mediaItem">
                        <tr>
                            <td><xsl:value-of select="media:title"/></td>
                            <td><xsl:value-of select="media:genre"/></td>
                            <td><xsl:value-of select="media:releaseDate"/></td>
                            <td><xsl:value-of select="media:duration"/></td>
                            <td><xsl:value-of select="media:director"/></td>
                            <td><xsl:value-of select="media:cast"/></td>
                            <td><xsl:value-of select="media:rating"/></td>
                            <td><xsl:value-of select="media:language"/></td>
                            <td><xsl:value-of select="media:platform"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
