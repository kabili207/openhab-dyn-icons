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
  
    <xsl:variable name="hours_val">
      <xsl:choose>
        <xsl:when test="@type='date'">
          <xsl:value-of select="hours" />
        </xsl:when>
        <xsl:otherwise>3</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="minutes_val">
      <xsl:choose>
        <xsl:when test="@type='date'">
          <xsl:value-of select="minutes" />
        </xsl:when>
        <xsl:otherwise>0</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="seconds_val">
      <xsl:choose>
        <xsl:when test="@type='date'">
          <xsl:value-of select="seconds" />
        </xsl:when>
        <xsl:otherwise>22.5</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    
    <xsl:variable name="border_dark">
      <xsl:choose>
        <xsl:when test="@type='string'">
          <xsl:choose>
            <xsl:when test="value = 'on'">#009949</xsl:when>
            <xsl:otherwise>#9b9c9e</xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>#9b9c9e</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    <xsl:variable name="border_light">
      <xsl:choose>
        <xsl:when test="@type='string'">
          <xsl:choose>
            <xsl:when test="value = 'on'">#00c864</xsl:when>
            <xsl:otherwise>#ececed</xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>#ececed</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    <xsl:variable name="second_hand" select="$seconds_val div 60 * 360"/>
    <xsl:variable name="minute_hand" select="$minutes_val div 60 * 360"/>
    <xsl:variable name="hour_hand" select="(($hours_val div 12) + ($minutes_val div 600)) * 360"/>

    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" style="enable-background:new 0 0 64 64">
      <path d="M32,61.5C15.73,61.5,2.5,48.27,2.5,32S15.73,2.5,32,2.5S61.5,15.73,61.5,32S48.27,61.5,32,61.5z" style="fill:{$border_light}"/>
      <path d="m32 3c15.99 0 29 13.01 29 29s-13.01 29-29 29-29-13.01-29-29 13.01-29 29-29m0-1c-16.57 0-30 13.43-30 30s13.43 30 30 30 30-13.43 30-30-13.43-30-30-30z" style="fill:{$border_dark}"/>
      <path d="M32,54.5C19.59,54.5,9.5,44.41,9.5,32S19.59,9.5,32,9.5S54.5,19.59,54.5,32S44.41,54.5,32,54.5z" style="fill:#fff"/>
      <path d="m32 10c12.15 0 22 9.85 22 22s-9.85 22-22 22-22-9.85-22-22 9.85-22 22-22m0-1c-12.68 0-23 10.32-23 23s10.32 23 23 23 23-10.32 23-23-10.32-23-23-23z" style="fill:{$border_dark}"/>

      <path d="m32 14c.34 0 .67.03 1 .05v-3.05h-2v3.05c.33-.02.66-.05 1-.05"/>
      <path d="m14 32c0-.34.03-.67.05-1h-3.05v2h3.05c-.02-.33-.05-.66-.05-1"/>
      <path d="m32 50c-.34 0-.67-.03-1-.05v3.05h2v-3.05c-.33.02-.66.05-1 .05"/>
      <path d="m49.95 31c.02.33.05.66.05 1s-.03.67-.05 1h3.05v-2h-3.05"/>

      <path d="m14.91 26.38l-2.93-.79-.52 1.93 2.92.78c.14-.64.32-1.29.53-1.92" style="opacity:.03"/>
      <path d="m28.31 14.38l-.78-2.92-1.93.52.79 2.93c.62-.21 1.27-.39 1.92-.53" style="opacity:.03"/>
      <path d="m49.62 28.31l2.92-.78-.52-1.93-2.93.79c.21.62.39 1.27.53 1.92" style="opacity:.03"/>
      <path d="m45.4 20.01l2.16-2.16-1.41-1.41-2.16 2.16c.49.44.97.92 1.41 1.41" style="opacity:.03"/>
      <path d="m37.62 14.91l.79-2.93-1.93-.52-.78 2.92c.64.14 1.29.32 1.92.53" style="opacity:.03"/>
      <path d="m43.99 45.4l2.16 2.16 1.41-1.41-2.16-2.16c-.44.49-.92.97-1.41 1.41" style="opacity:.03"/>
      <path d="m49.09 37.62l2.93.79.52-1.93-2.92-.78c-.14.64-.32 1.29-.53 1.92" style="opacity:.03"/>
      <path d="m26.38 49.09l-.79 2.93 1.93.52.78-2.92c-.64-.14-1.29-.32-1.92-.53" style="opacity:.03"/>
      <path d="m18.6 43.99l-2.16 2.16 1.41 1.41 2.16-2.16c-.49-.44-.97-.92-1.41-1.41" style="opacity:.03"/>
      <path d="m35.69 49.62l.78 2.92 1.93-.52-.79-2.93c-.62.21-1.27.39-1.92.53" style="opacity:.03"/>
      <path d="m14.38 35.69l-2.92.78.52 1.93 2.93-.79c-.21-.62-.39-1.27-.53-1.92" style="opacity:.03"/>
      <path d="m20.01 18.6l-2.16-2.16-1.41 1.41 2.16 2.16c.44-.49.92-.97 1.41-1.41" style="opacity:.03"/>

      <path d="m23.89 15.95l-1.52-2.63-1.73 1 1.52 2.63c.55-.37 1.13-.7 1.73-1" style="opacity:.15"/>
      <path d="m16.94 22.15l-2.63-1.52-1 1.73 2.63 1.52c.31-.59.64-1.17 1-1.73" style="opacity:.15"/>
      <path d="m48.05 23.89l2.63-1.52-1-1.73-2.63 1.52c.37.55.7 1.13 1 1.73" style="opacity:.15"/>
      <path d="m47.06 41.85l2.63 1.52 1-1.73-2.63-1.52c-.31.59-.64 1.17-1 1.73" style="opacity:.15"/>
      <path d="m40.11 48.05l1.52 2.63 1.73-1-1.52-2.63c-.55.37-1.13.7-1.73 1" style="opacity:.15"/>
      <path d="m15.95 40.11l-2.63 1.52 1 1.73 2.63-1.52c-.37-.55-.7-1.13-1-1.73" style="opacity:.15"/>
      <path d="m22.15 47.06l-1.52 2.63 1.73 1 1.52-2.63c-.59-.31-1.17-.64-1.73-1" style="opacity:.15"/>
      <path d="m41.85 16.94l1.52-2.63-1.73-1-1.52 2.63c.59.31 1.17.64 1.73 1" style="opacity:.15"/>
      <g style="fill:#1a171b">
        <path d="m31 13h2v24h-2z" transform="rotate({$minute_hand} 32 32)"/>
        <path d="m31 17h2v20h-2z" transform="rotate({$hour_hand} 32 32)"/>
      </g>
      <path d="m31.5 12h1v26h-1z" style="fill:#c80000;" transform="rotate({$second_hand} 32 32)"/>
      <circle cx="32" cy="32" r="2" style="fill:#c80000" />
      <circle cx="32" cy="32" r="1" style="fill:#ececed"/>
    </svg>

  </xsl:template>
</xsl:stylesheet>