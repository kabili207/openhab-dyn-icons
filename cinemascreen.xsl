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
    <xsl:variable name="translation" select="$clamped div 100 * 52 - 52"/>

    <svg xmlns="http://www.w3.org/2000/svg"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         viewBox="0 0 64 64"
         style="enable-background:new 0 0 64 64">
       <defs>
          <path id="0" d="m6 17h52v34h-52z"/>
          <clipPath id="1">
             <use xlink:href="#0"/>
          </clipPath>
       </defs>
      <path d="m2.5 13.5h59v3h-59z" style="fill:#f0f0f0"/>
      <path d="m61 14v2h-58v-2h58m1-1h-60v4h60v-4z" style="fill:#c8c8c8"/>
       <g style="clip-path:url(#1)">
          <g transform="translate(0 {$translation})">
            <path d="m7 18h50v32h-50z" style="fill:#fff"/>
            <path d="m56 19v30h-48v-30h48m2-2h-52v34h52v-34z" style="fill:#282828"/>
          </g>
       </g>
    </svg>

  </xsl:template>
</xsl:stylesheet>