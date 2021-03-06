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
        <xsl:otherwise>70</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="translation" select="$clamped div 100 * 32 - 32"/>

  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" style="enable-background:new 0 0 64 64">
    <path d="m15.5 15.5h33v33h-33z" style="fill:#f0f0f0"/>
    <path d="m48 16v32h-32v-32h32m1-1h-34v34h34v-34z" style="fill:#646464"/>
    <path d="m19.5 19.5h25v25h-25z" style="fill:#d9f1ff"/>
    <path d="m44 20v24h-24v-24h24m1-1h-26v26h26v-26z" style="fill:#7aadcc"/>
    <path d="m10.5 53.5v-43h43v43h-43m4-4h35v-35h-35v35" style="fill:#ececed"/>
    <path d="m53 11v42h-42v-42h42m-39 39h1 34 1v-1-34-1h-1-34-1v1 34 1m40-40h-44v44h44v-44zm-39 39v-34h34v34h-34" style="fill:#9b9c9e"/>
    <defs>
    <path id="0" d="m14 18v32h36v-32h-0z" />
      <clipPath id="1">
      <use xlink:href="#0" />
    </clipPath>
    </defs>
    
    <g style="clip-path:url(#1)">
      <g transform="translate(0 {$translation})">
        <path d="m14.5 17.5h35v32h-35z" style="fill:#c8c8c8"/>
        <path d="m49 18v31h-34v-31h34m1-1h-36v33h36v-33z" style="fill:#646464"/>
        <path d="m15 21h34v1h-34z" style="opacity:.25"/>
        <path d="m15 25h34v1h-34z" style="opacity:.25"/>
        <path d="m15 29h34v1h-34z" style="opacity:.25"/>
        <path d="m15 33h34v1h-34z" style="opacity:.25"/>
        <path d="m15 37h34v1h-34z" style="opacity:.25"/>
        <path d="m15 41h34v1h-34z" style="opacity:.25"/>
        <path d="m15 45h34v1h-34z" style="opacity:.25"/>
      </g>
    </g>
    <path d="m14 14h36v4h-36z" style="fill:#282828"/>
  </svg>

  </xsl:template>
</xsl:stylesheet>