<?xml version="1.0"?>

<xsl:stylesheet version="1.0" 
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns="http://www.w3.org/2000/svg"
		>
  <xsl:output
      method="xml"
      indent="yes"
      standalone="no"
      media-type="image/svg" />
  
  <xsl:template match="state">
    <xsl:variable name="hex">
      <xsl:choose>
        <xsl:when test="@type='color'"><xsl:value-of select="hex" /></xsl:when>
        <xsl:otherwise>#dae1e4</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
	
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" style="enable-background:new 0 0 64 64">
	  <g style="fill:#797878">
		<path d="m37.25 50h-10.5c-.55 0-1-.45-1-1 0-.55.45-1 1-1h10.5c.55 0 1 .45 1 1 0 .55-.45 1-1 1"/>
		<path d="m37.25 53h-10.5c-.55 0-1-.45-1-1 0-.55.45-1 1-1h10.5c.55 0 1 .45 1 1 0 .55-.45 1-1 1"/>
		<path d="m37.07 56h-10.14c-.65 0-1.18-.53-1.18-1.18 0-.45.37-.82.82-.82h10.85c.45 0 .82.37.82.82.01.65-.52 1.18-1.17 1.18"/>
		<path d="m32 60c2.21 0 4-1.34 4-3h-8c0 1.66 1.79 3 4 3"/>
	  </g>
	  <path d="m48 20.58c0-8.61-7.16-15.58-16-15.58s-16 6.97-16 15.58c0 2.73.72 5.29 1.98 7.51.77 1.49 1.32 2.56 1.67 3.23.72 1.4 1.14 2.21 1.66 3.42.22.51.55 1.28.86 2.16 1.23 3.49 1.7 6.82 1.7 6.82s.23 1.74 1.16 2.59c.26.24.52.38.65.44.45.21.86.25 1.11.25.16 0 .32 0 .48 0h4.66.13 4.66c.16 0 .32 0 .48 0 .24 0 .66-.04 1.11-.25.13-.06.39-.2.65-.44.93-.85 1.16-2.59 1.16-2.59s.47-3.33 1.7-6.82c.31-.88.64-1.65.86-2.16.52-1.21.94-2.02 1.66-3.42.35-.68.9-1.74 1.67-3.23 1.27-2.23 1.99-4.79 1.99-7.51" style="fill:#{$hex}"/>
	</svg>
	
  </xsl:template>
  
</xsl:stylesheet>