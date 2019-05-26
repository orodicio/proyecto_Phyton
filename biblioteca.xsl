<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:variable name="art1" select="//artistas/artista"/>

  <xsl:template match="/">
<xsl:apply-templates/>  
    </xsl:template>
    
       <xsl:template match="album">
       Album:<xsl:value-of select = "titulo"/>
       <xsl:variable name="alb1" select="@artista"/>
       Autor: <xsl:value-of select = "$art1[@id= $alb1]/ nombre "/>
       <xsl:apply-templates select= "cancion"/>  
       </xsl:template>
       
         <xsl:template match="cancion">
         Cancion: <xsl:value-of select = "titulo "/>
         CancionId: <xsl:value-of select = "@id "/>
          </xsl:template>
          
          <xsl:template match="artistas">
          </xsl:template>
          
</xsl:stylesheet>
