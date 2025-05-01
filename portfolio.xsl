<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Sudhanshu Kumar - Portfolio</title>
        <style>
          body { font-family: Arial; margin: 20px; }
          h1 { color: #336699; }
          .section { margin-bottom: 20px; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="portfolio/personalInfo/name"/></h1>
        <div class="section">
          <h2>About Me</h2>
          <p>Born in <xsl:value-of select="portfolio/personalInfo/birthMonth"/>, <xsl:value-of select="portfolio/personalInfo/birthYear"/></p>
          <p>Email: <xsl:value-of select="portfolio/personalInfo/email"/></p>
          <img src="{portfolio/personalInfo/profilePhoto}" alt="Profile Photo" width="200"/>
        </div>
        
        <div class="section">
          <h2>Education</h2>
          <ul>
            <xsl:for-each select="portfolio/personalInfo/education/schooling">
              <li><xsl:value-of select="level"/> - <xsl:value-of select="year"/> (<xsl:value-of select="board"/>)</li>
            </xsl:for-each>
          </ul>
        </div>

        <div class="section">
          <h2>Expertise</h2>
          <ul>
            <xsl:for-each select="portfolio/expertise/area">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
        </div>

        <div class="section">
          <h2>Skills</h2>
          <ul>
            <xsl:for-each select="portfolio/skills/skill">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
        </div>

        <div class="section">
          <h2>Projects</h2>
          <ul>
            <xsl:for-each select="portfolio/projects/project">
              <li><b><xsl:value-of select="title"/></b>: <xsl:value-of select="description"/></li>
            </xsl:for-each>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
