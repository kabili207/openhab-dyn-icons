<?xml version="1.0"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/2000/svg">
  <xsl:output
    method="xml"
    indent="yes"
    standalone="no"
    media-type="image/svg" />
  <xsl:template match="state">
  
    <xsl:variable name="clamped">
      <xsl:choose>
        <xsl:when test="@type='numeric'">
          <xsl:choose>
            <xsl:when test="number(value) gt 100">100</xsl:when>
            <xsl:when test="number(value) lt 0">0</xsl:when>
            <xsl:otherwise><xsl:value-of select="value" /></xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:when test="@type='string'">
          <xsl:choose>
            <xsl:when test="value = 'on'">100</xsl:when>
            <xsl:otherwise>0</xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>100</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="angle" select="$clamped div 100 * 180"/>
    
    <xsl:variable name="fill_1">
      <xsl:choose>
        <xsl:when test="$angle > 18">#2e7de5</xsl:when>
        <xsl:otherwise>#c4cacc</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    <xsl:variable name="fill_2">
      <xsl:choose>
        <xsl:when test="$angle > 53">#00c83c</xsl:when>
        <xsl:otherwise>#c4cacc</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
	
    <xsl:variable name="fill_3">
      <xsl:choose>
        <xsl:when test="$angle > 90">#ffd200</xsl:when>
        <xsl:otherwise>#c4cacc</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
	
    <xsl:variable name="fill_4">
      <xsl:choose>
        <xsl:when test="$angle > 126">#ff6400</xsl:when>
        <xsl:otherwise>#c4cacc</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
	
    <xsl:variable name="fill_5">
      <xsl:choose>
        <xsl:when test="$angle > 162">#f00014</xsl:when>
        <xsl:otherwise>#c4cacc</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
	
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" style="enable-background:new 0 0 64 64">
  <path id="dial_background" style="fill:#f0f0f0" d="m32 52.5c-6.3 0-11.84-4.03-13.79-10.02-1.2-3.68-.89-7.61.87-11.06s4.76-6.01 8.44-7.21c1.46-.47 2.97-.71 4.48-.71 6.3 0 11.84 4.03 13.79 10.02 1.2 3.68.89 7.61-.87 11.06s-4.76 6.01-8.44 7.21c-1.46.47-2.97.71-4.48.71"/>
  <path id="dial_outer_ring" style="fill:#b4b4b4" d="m32 24c6.08 0 11.43 3.89 13.31 9.68 1.16 3.56.86 7.35-.84 10.68-1.7 3.33-4.59 5.8-8.15 6.96-1.4.45-2.86.68-4.32.68-6.08 0-11.43-3.89-13.31-9.68-1.16-3.56-.86-7.35.84-10.68 1.7-3.33 4.59-5.8 8.15-6.96 1.4-.45 2.86-.68 4.32-.68m0-1c-1.54 0-3.1.24-4.64.74-7.88 2.56-12.19 11.02-9.63 18.9 2.06 6.33 7.94 10.36 14.27 10.36 1.54 0 3.1-.24 4.64-.74 7.88-2.56 12.19-11.02 9.63-18.9-2.06-6.33-7.94-10.36-14.27-10.36z"/>
  <path id="color_1" style="fill:{$fill_1}" d="m4.03 37h10.03c.18-3.21 1.19-6.2 2.83-8.75l-8.11-5.89c-2.85 4.21-4.56 9.23-4.75 14.64"/>
  <path id="color_2" style="fill:{$fill_2}" d="m18.05 26.63c1.95-2.39 4.52-4.26 7.45-5.4l-3.1-9.54c-4.95 1.81-9.25 4.98-12.44 9.06l8.09 5.88"/>
  <path id="color_3" style="fill:{$fill_3}" d="m27.4 20.62c1.47-.39 3.01-.62 4.6-.62s3.13.23 4.6.62l3.1-9.54c-2.45-.7-5.03-1.08-7.7-1.08s-5.25.38-7.7 1.08l3.1 9.54"/>
  <path id="color_4" style="fill:{$fill_4}" d="m38.5 21.23c2.93 1.14 5.49 3.01 7.45 5.4l8.1-5.88c-3.19-4.08-7.49-7.25-12.44-9.06l-3.11 9.54"/>
  <path id="color_5" style="fill:{$fill_5}" d="m47.12 28.25c1.65 2.55 2.65 5.53 2.83 8.75h10.03c-.19-5.41-1.91-10.43-4.75-14.64l-8.11 5.89"/>
  <g id="notches" style="opacity:.6" transform="rotate({$angle} 32 38)">
    <g id="notches_top" style="fill:#1a171b">
      <path d="m22.37 43.7l-2.37 1.53.51.78 2.35-1.53c-.17-.25-.34-.51-.49-.78"/>
      <path d="m35.46 48.65c-.15.05-.3.08-.45.12l.87 2.69.89-.29-.87-2.69c-.15.06-.29.12-.44.17"/>
      <path d="m24.17 46l-1.88 2.09.69.62 1.89-2.09c-.24-.2-.48-.4-.7-.62"/>
      <path d="m29.22 48.84l-.59 2.76.91.19.59-2.75c-.31-.05-.61-.12-.91-.2"/>
      <path d="m32.12 49.2l.15 2.8.93-.05-.15-2.81c-.31.03-.62.06-.93.06"/>
      <path d="m26.51 47.75l-1.28 2.51.83.42 1.28-2.51c-.28-.13-.56-.27-.83-.42"/>
      <path d="m24 30.17l-2.09-1.88-.62.69 2.09 1.89c.2-.24.4-.48.62-.7"/>
      <path d="m26.3 28.37l-1.53-2.37-.78.51 1.53 2.35c.25-.17.51-.34.78-.49"/>
      <path d="m22.25 32.51l-2.51-1.28-.42.83 2.51 1.28c.13-.28.27-.56.42-.83"/>
      <path d="m21.16 35.22l-2.76-.59-.19.91 2.75.59c.05-.31.12-.61.2-.91"/>
      <path d="m20.8 38.12l-2.8.15.05.93 2.81-.15c-.03-.31-.06-.62-.06-.93"/>
    </g>
    <path id="large_notch" d="m29.06 38.96c-.1-.32-.14-.65-.22-.98l-10.46 3.4.62 1.9 10.46-3.4c-.13-.31-.3-.6-.4-.92"/>
    <g id="notches_bottom" style="fill:#1a171b">
      <path d="m34.78 27.16l.59-2.76-.91-.19-.59 2.75c.31.05.61.12.91.2"/>
      <path d="m41.63 32.3l2.37-1.53-.51-.78-2.35 1.53c.17.25.34.51.49.78"/>
      <path d="m39.83 30l1.88-2.09-.69-.62-1.89 2.09c.24.2.48.4.7.62"/>
      <path d="m37.49 28.25l1.28-2.51-.83-.42-1.28 2.51c.28.13.56.27.83.42"/>
      <path d="m31.88 26.8l-.15-2.8-.93.05.15 2.81c.31-.03.62-.06.93-.06"/>
      <path d="m28.1 27.51c.15-.05.29-.12.44-.17s.3-.08.45-.12l-.87-2.69-.89.29.87 2.69"/>
      <path d="m42.84 40.78l2.76.59.19-.91-2.75-.59c-.05.31-.12.61-.2.91"/>
      <path d="m40 45.83l2.09 1.88.62-.69-2.09-1.89c-.2.24-.4.48-.62.7"/>
      <path d="m42.65 34.54c.05.15.08.3.12.45l2.69-.87-.29-.89-2.69.87c.06.15.12.29.17.44"/>
      <path d="m41.75 43.49l2.51 1.28.42-.83-2.51-1.28c-.13.28-.27.56-.42.83"/>
      <path d="m43.2 37.88l2.8-.15-.05-.93-2.81.15c.03.31.06.62.06.93"/>
      <path d="m37.7 47.63l1.53 2.37.78-.51-1.53-2.35c-.25.17-.51.34-.78.49"/>
    </g>
  </g>
</svg>
  </xsl:template>
</xsl:stylesheet>