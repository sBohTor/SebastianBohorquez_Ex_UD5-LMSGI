<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
 <html>
 <head>
    <title>Biblioteca</title>
    <style>
      .caro { color: red; }
    </style>
 </head>
 <body>
    <table border="1">
      <tr>
        <th>Título</th>
        <th>Autores</th>
        <th>Editores</th>
      </tr>
      <xsl:for-each select="bib/libro">
        <xsl:sort select="libro" data-type="text" order="descending"/>
        <tr>
          <td>
            <xsl:if test="precio > 100">
              <span class="caro">
                <xsl:value-of select="titulo"/> (Caro)
              </span>
            </xsl:if>
            <xsl:if test="precio != 100 ">
              <xsl:value-of select="titulo"/>
            </xsl:if>
          </td>
          <td>
            <xsl:for-each select="autor">
              <xsl:value-of select="concat(nombre, ' ', apellido)"/>
              <xsl:if test="position() != last()">, </xsl:if>
            </xsl:for-each>
          </td>
          <td>
            <xsl:for-each select="editor">
              <xsl:value-of select="concat(nombre, ' ', apellido, ' (', afiliacion, ')')"/>
              <xsl:if test="position() != last()">, </xsl:if>
            </xsl:for-each>
          </td>
        </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>

</xsl:stylesheet>