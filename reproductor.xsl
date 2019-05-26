<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:strip-space elements="*" />

  <xsl:template match="/">
  <html>
  <head>
<style>
  body{
  font-size: large;
   text-transform: capitalize;
  }
table, td, th {
border: 6px solid beige;
border-style: groove;
    border-collapse: collapse;
}
#table1 {
    font-size: x-large;
    text-transform: uppercase;
    text-align: center;
    background-color: darkgreen;
    color: beige;
    font-family: sans-serif;
}
img{
width: 374px;
}
</style>
</head>
<body>
<table id="table1">
     <xsl:apply-templates />
  <tr>
  <td><img><xsl:attribute name='src'>botones2.jpeg</xsl:attribute></img></td>
  </tr>
   </table>
   </body>
  </html>
</xsl:template>

<xsl:template match="cancion">
 <tr>
    <th><xsl:value-of select="nombre"/></th>
   </tr>
  <tr>
    <td>Album:<xsl:value-of select="album"/></td>
  </tr>
  <tr>
  <td>Duracion:<xsl:value-of select="duracion"/></td>
  </tr>
  </xsl:template>
</xsl:stylesheet>
