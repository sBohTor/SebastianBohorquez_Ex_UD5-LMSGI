<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
 <html>
 <body>
  <p>Nombre y apellidos: Sebastián Bohórquez Torres</p>
   
    <ol>
      <xsl:for-each select="//libro/autor">
        <xsl:sort select="apellido"/>
        <li>
          <xsl:value-of select="concat(apellido,', ',nombre)"/>
        </li>
      </xsl:for-each>
    </ol>
 </body>
 </html>
</xsl:template>

</xsl:stylesheet>