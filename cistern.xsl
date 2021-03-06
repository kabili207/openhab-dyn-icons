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
        <xsl:otherwise>50</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="fill_level" select="$clamped div 100 * 50"/>

    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" style="enable-background:new 0 0 64 64">
      <defs>
        <path id="0" d="m46 10v-4h-28v4c-4.4 0-8 3.6-8 8v34c0 4.4 3.6 8 8 8h28c4.4 0 8-3.6 8-8v-34c0-4.4-3.6-8-8-8"/>
        <clipPath id="1">
          <use xlink:href="#0"/>
        </clipPath>
      </defs>
      <path d="m18 60.5c-4.69 0-8.5-3.81-8.5-8.5v-34c0-4.52 3.54-8.23 8-8.49v-4.01h29v4.01c4.46.26 8 3.97 8 8.49v34c0 4.69-3.81 8.5-8.5 8.5h-28" style="fill:#f0f0f0"/>
      <path d="m46 6v4c4.4 0 8 3.6 8 8v34c0 4.4-3.6 8-8 8h-28c-4.4 0-8-3.6-8-8v-34c0-4.4 3.6-8 8-8v-4h28m1-1h-1-28-1v1 3.06c-4.49.5-8 4.32-8 8.94v34c0 4.96 4.04 9 9 9h28c4.96 0 9-4.04 9-9v-34c0-4.62-3.51-8.45-8-8.94v-3.06-1z" style="fill:#c8c8c8"/>
      <path d="m15 7.5c-.83 0-1.5-.67-1.5-1.5v-1c0-.83.67-1.5 1.5-1.5h34c.83 0 1.5.67 1.5 1.5v1c0 .83-.67 1.5-1.5 1.5h-34" style="fill:#f0f0f0"/>
      <path d="m49 4c.55 0 1 .45 1 1v1c0 .55-.45 1-1 1h-34c-.55 0-1-.45-1-1v-1c0-.55.45-1 1-1h34m0-1h-34c-1.1 0-2 .9-2 2v1c0 1.1.9 2 2 2h34c1.1 0 2-.9 2-2v-1c0-1.1-.9-2-2-2z" style="fill:#c8c8c8"/>
      <g style="clip-path:url(#1)">
        <path d="m10 {60 - $fill_level}h44v{$fill_level}h-44z" style="fill:#1e82ff"/>
      </g>
    </svg>

  </xsl:template>
  
</xsl:stylesheet>