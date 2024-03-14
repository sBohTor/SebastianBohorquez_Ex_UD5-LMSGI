<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Instituto</title>
        </head>
        <body>
            <p>Nombre y apellidos: Sebastián Bohórquez Torres</p>
            <h1>IES Nuestra Sra. de los Remedios</h1>
            <table border="1">
                <tr>
                    <th>Nombre del Ciclo</th>
                    <th>Año</th>
                </tr>
                <xsl:for-each select="ciclos/ciclo">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="decretoTitulo/@año > 2009">
                                    <span style="color:green;"><xsl:value-of select="decretoTitulo/@año"/></span>
                                </xsl:when>
                                <xsl:when test="decretoTitulo/@año = 2009">
                                    <span style="color:blue;"><xsl:value-of select="decretoTitulo/@año"/></span>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span style="color:red;"><xsl:value-of select="decretoTitulo/@año"/></span>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>