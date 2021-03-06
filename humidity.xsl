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
        <xsl:otherwise>55</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="rotation" select="$clamped div 100 * 270"/>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" style="enable-background:new 0 0 64 64">
      <path d="M32,61.5C15.7,61.5,2.5,48.3,2.5,32S15.7,2.5,32,2.5S61.5,15.7,61.5,32S48.3,61.5,32,61.5z" style="fill:#f0f0f0"/>
      <path d="m32 3c16 0 29 13 29 29s-13 29-29 29-29-13-29-29 13-29 29-29m0-1c-16.6 0-30 13.4-30 30s13.4 30 30 30 30-13.4 30-30-13.4-30-30-30z" style="fill:#b4b4b4"/>
      <path d="m50.1 16.6l-3.5 3.5c2.6 3.2 4.2 7.4 4.2 11.9 0 5.2-2.1 9.9-5.5 13.3l3.5 3.5c4.3-4.3 7-10.2 7-16.8 0-5.9-2.2-11.3-5.7-15.4" style="fill:#2e7de5"/>
      <path d="m17.5 20.1l-3.5-3.5c-3.5 4.1-5.7 9.5-5.7 15.4 0 6.6 2.7 12.5 7 16.8l3.5-3.5c-3.4-3.4-5.5-8.1-5.5-13.3 0-4.5 1.5-8.6 4.2-11.9" style="fill:#f00014"/>
      <path d="m32 8.2c-5.9 0-11.3 2.2-15.4 5.7l3.5 3.5c3.2-2.6 7.4-4.2 11.9-4.2s8.6 1.6 11.9 4.2l3.5-3.5c-4.1-3.5-9.5-5.7-15.4-5.7" style="fill:#00c83c"/>
      <g style="fill:#1a171b;opacity:.6">
        <path d="m19.9 35.3l-3.6 1.2.4 1.2 3.6-1.2c-.1-.4-.2-.8-.4-1.2"/>
        <path d="m22.7 40.4l-2.6 2.6.9.9 2.7-2.7c-.4-.2-.7-.5-1-.8"/>
        <path d="m26.9 20.6l-1.7-3.4-1.1.6 1.7 3.4c.3-.2.7-.4 1.1-.6"/>
        <path d="m22.3 24.2l-3.1-2.2-.7 1 3.1 2.2c.2-.4.4-.7.7-1"/>
        <path d="m19.8 29.4l-3.8-.6-.2 1.2 3.7.6c.1-.4.2-.8.3-1.2"/>
        <path d="m42.5 25.2l3.1-2.2-.7-1-3.1 2.2c.2.3.4.6.7 1"/>
        <path d="m32 19.5c.2 0 .4 0 .6 0v-3.8h-1.3v3.8c.3 0 .5 0 .7 0"/>
        <path d="m38.2 21.2l1.7-3.4-1.1-.6-1.7 3.4c.4.2.8.4 1.1.6"/>
        <path d="m44.4 30.7l3.7-.6-.1-1.3-3.7.6c0 .4.1.8.1 1.3"/>
        <path d="m44.1 35.3c-.1.4-.2.8-.4 1.2l3.6 1.2.4-1.2-3.6-1.2"/>
        <path d="m40.4 41.3l2.7 2.7.9-.9-2.7-2.7c-.3.3-.6.6-.9.9"/>
      </g>
      <g style="fill:#1a171b" transform="rotate({$rotation} 32 32)">
        <path d="M17,47l16.8-13.2c-0.2-0.1-1.7-1.5-1.9-1.7s-1.6-1.7-1.7-1.9L17,47z"/>
        <circle cx="32" cy="32" r="2.5"/>
      </g>
      <g style="opacity:.6">
        <path d="m30.3 46.7c.5.5.7 1 .7 1.7s-.2 1.2-.7 1.7-1 .7-1.7.7c-.7 0-1.2-.2-1.7-.7s-.7-1-.7-1.7.2-1.2.7-1.7c.5-.5 1-.7 1.7-.7.7 0 1.3.2 1.7.7m-.7 2.7c.3-.3.4-.6.4-1s-.1-.7-.4-1c-.3-.3-.6-.4-1-.4-.4 0-.7.1-1 .4s-.4.6-.4 1c0 .4.1.7.4 1 .3.3.6.4 1 .4.4 0 .8-.1 1-.4m4.8-3.6h.8l-5.5 10h-.8l5.5-10m2.6 5.6c.5.5.7 1 .7 1.7 0 .7-.2 1.2-.7 1.7-.5.5-1 .7-1.7.7-.7 0-1.2-.2-1.7-.7-.5-.5-.7-1-.7-1.7 0-.7.2-1.2.7-1.7.5-.5 1-.7 1.7-.7.7 0 1.3.3 1.7.7m-.7 2.7c.3-.3.4-.6.4-1s-.1-.7-.4-1-.6-.4-1-.4c-.4 0-.7.1-1 .4-.3.3-.4.6-.4 1s.1.7.4 1c.3.3.6.4 1 .4.4 0 .8-.1 1-.4" style="fill:#1a171b"/>
      </g>
    </svg>
  </xsl:template>
</xsl:stylesheet>