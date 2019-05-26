<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:variable name="bib" select="'biblioteca.xml'" />
  
  <xsl:template match="/">
    Playlist:  <xsl:value-of select = "playlists/playlist/@nombre"/>
  <xsl:apply-templates />
   </xsl:template>
  

  <xsl:template match="cancion">
    <xsl:variable name="cancionid" select="."/>
    Cancion: <xsl:value-of select="document($bib)//cancion[@id=$cancionid]/titulo"/>
    Autor: <xsl:value-of select="document($bib)//artista[@id=//album[cancion/@id=$cancionid]/@artista]/nombre/text()"/>
    Duración: <xsl:value-of select="document($bib)//cancion[@id=$cancionid]/@duracion"/>
  </xsl:template>
</xsl:stylesheet>
