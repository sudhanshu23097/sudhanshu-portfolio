<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
  <xsl:template match="/">
    <html>
      <head>
        <title>Sudhanshu Kumar - Portfolio</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 30px;
            background-color: #f4f4f4;
          }
          h1 {
            color: #333;
          }
          .section {
            background: white;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
          }
          img {
            max-width: 200px;
            border-radius: 10px;
          }
        </style>
      </head>
      <body>
        <h1>Sudhanshu Kumar - Personal Portfolio</h1>

        <div class="section">
          <h2>Profile Photo</h2>
          <img src="https://drive.google.com/uc?export=view&amp;id=1DR3z_qIQjDpMitJXyuogZhniEa-Mfv6F" alt="Profile Photo"/>
        </div>

        <div class="section">
          <h2>Personal Info</h2>
          <p><strong>Name:</strong> <xsl:value-of select="portfolio/personalInfo/name"/></p>
          <p><strong>Birth Month:</strong> <xsl:value-of select="portfolio/personalInfo/birthMonth"/> <xsl:value-of select="portfolio/personalInfo/birthYear"/></p>
          <p><strong>Email:</strong> <xsl:value-of select="portfolio/personalInfo/email"/></p>
        </div>

        <div class="section">
          <h2>Education</h2>
          <xsl:for-each select="portfolio/education/schooling">
            <p>
              <strong><xsl:value-of select="level"/>:</strong>
              <xsl:value-of select="year"/> (<xsl:value-of select="board"/>)
            </p>
          </xsl:for-each>
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
          <xsl:for-each select="portfolio/projects/project">
            <p>
              <strong><xsl:value-of select="title"/>:</strong>
              <xsl:value-of select="description"/>
            </p>
          </xsl:for-each>
        </div>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
