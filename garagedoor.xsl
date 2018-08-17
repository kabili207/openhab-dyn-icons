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
            <xsl:when test="value = 'closed'">100</xsl:when>
            <xsl:when test="value = 'ajar'">70</xsl:when>
            <xsl:when test="value = 'open'">0</xsl:when>
            <xsl:otherwise>70</xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>70</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="translation" select="$clamped div 100 * 34 - 34"/>

    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" style="enable-background:new 0 0 64 64">
      <path d="m55.5 53.5v-35h-47v35h-5v-40h57v40z" style="fill:#f0f0f0"/>
      <path d="m60 14v4 35h-4v-35h-48v35h-4v-35-4h4 48 4m1-1h-1-4-48-4-1v1 4 35 1h1 4 1v-1-34h46v34 1h1 4 1v-1-35-4-1z" style="fill:#c8c8c8"/>
      <defs>
        <path id="0" d="m9 19v34h50v-34h-0z" />
            <clipPath id="1">
          <use xlink:href="#0" />
        </clipPath>
      </defs>
      <g style="clip-path:url(#1)">
        <g transform="translate(0 {$translation})">
          <path d="m9.5 19.5h15v11h-15z" style="fill:#282828"/>
          <path d="m24 20v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
          <path d="m24.5 19.5h15v11h-15z" style="fill:#282828"/>
          <path d="m39 20v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
          <path d="m39.5 19.5h15v11h-15z" style="fill:#282828"/>
          <path d="m54 20v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
          <path d="m9.5 30.5h15v11h-15z" style="fill:#282828"/>
          <path d="m24 31v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
          <path d="m24.5 30.5h15v11h-15z" style="fill:#282828"/>
          <path d="m39 31v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
          <path d="m39.5 30.5h15v11h-15z" style="fill:#282828"/>
          <path d="m54 31v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
          <path d="m9.5 41.5h15v11h-15z" style="fill:#282828"/>
          <path d="m24 42v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
          <path d="m24.5 41.5h15v11h-15z" style="fill:#282828"/>
          <path d="m39 42v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
          <path d="m39.5 41.5h15v11h-15z" style="fill:#282828"/>
          <path d="m54 42v10h-14v-10h14m1-1h-1-14-1v1 10 1h1 14 1v-1-10-1z" style="fill:#3c3c3c"/>
        </g>
      </g>
    </svg>

  </xsl:template>
</xsl:stylesheet>