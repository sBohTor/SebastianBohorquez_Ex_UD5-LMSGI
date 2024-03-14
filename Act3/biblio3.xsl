<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="/">
 <html>
 <body>
    <p>Nombre y apellidos: Sebastian Bohorquez Torres</p>
    <table border="1">
        
      <xsl:for-each select="bib/libro">
        <xsl:sort select="precio" data-type="text" order="descending" />
        <tr>
          <td><xsl:value-of select="precio"/></td>
          <td>
            <xsl:attribute name="style">
              <xsl:if test="precio > 100">background-color: red;</xsl:if>
            </xsl:attribute>
            <xsl:value-of select="titulo"/>
          </td>
          <td>
            <xsl:attribute name="style">font-style: italic;</xsl:attribute>
            <xsl:value-of select="@año"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>

</xsl:stylesheet>
