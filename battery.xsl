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
            <xsl:when test="value = 'on'">10</xsl:when>
            <xsl:otherwise>90</xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>0</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:variable name="fill_color">
      <xsl:choose>
        <xsl:when test="$clamped > 50">#00b22a</xsl:when>
        <xsl:when test="$clamped > 20">#e5b900</xsl:when>
        <xsl:when test="$clamped > 10">#e55200</xsl:when>
        <xsl:otherwise>#d6001a</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:variable name="fill_amount" select="$clamped div 100 * 55"/>

    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" style="enable-background:new 0 0 64 64">
      <path d="m57 39.5c-.3 0-.5-.2-.5-.5v-14c0-.3.2-.5.5-.5h5c.8 0 1.5.7 1.5 1.5v12c0 .8-.7 1.5-1.5 1.5h-5" style="fill:#bebec8"/>
      <path d="m62 25c.6 0 1 .4 1 1v12c0 .6-.4 1-1 1h-5v-14h5m0-1h-5c-.6 0-1 .4-1 1v14c0 .6.4 1 1 1h5c1.1 0 2-.9 2-2v-12c0-1.1-.9-2-2-2z" style="fill:#34383f"/>
      <path d="m3 46.5c-1.4 0-2.5-1.1-2.5-2.5v-24c0-1.4 1.1-2.5 2.5-2.5h51c1.4 0 2.5 1.1 2.5 2.5v24c0 1.4-1.1 2.5-2.5 2.5h-51" style="fill:#f0f0f0"/>
      <path d="m54 18c1.1 0 2 .9 2 2v24c0 1.1-.9 2-2 2h-51c-1.1 0-2-.9-2-2v-24c0-1.1.9-2 2-2h51m0-1h-51c-1.7 0-3 1.3-3 3v24c0 1.7 1.3 3 3 3h51c1.7 0 3-1.3 3-3v-24c0-1.7-1.3-3-3-3z" style="fill:#34383f"/>
      <defs>
        <path id="0" d="m54 46h-51c-1.1 0-2-.9-2-2v-24c0-1.1.9-2 2-2h51c1.1 0 2 .9 2 2v24c0 1.1-.9 2-2 2" style="fill:#00c83c"/>
        <clipPath id="1">
          <use xlink:href="#0" />
        </clipPath>
      </defs>
      <g style="clip-path:url(#1)">
        <path d="m1 18v28h{$fill_amount}v-28h-1z" style="fill:{$fill_color}"/>
      </g>
    </svg>

  </xsl:template>
  
</xsl:stylesheet>