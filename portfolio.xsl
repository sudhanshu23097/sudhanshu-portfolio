<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">

        <html>
            <head>
                <title>Sudhanshu Kumar's Portfolio</title>
                <style>
                    body { font-family: Arial, sans-serif; background: #f9f9f9; margin: 0; padding: 0; }
                    .container { max-width: 800px; margin: auto; background: #fff; padding: 20px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
                    h1 { color: #333; }
                    img { width: 150px; height: 150px; border-radius: 50%; object-fit: cover; }
                    .section { margin-bottom: 20px; }
                    ul { padding-left: 20px; }
                    li { margin-bottom: 5px; }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1><xsl:value-of select="portfolio/personalInfo/name"/></h1>
                    <p><strong>Email:</strong> <xsl:value-of select="portfolio/personalInfo/email"/></p>
                    <p><strong>Born:</strong> <xsl:value-of select="portfolio/personalInfo/birthMonth"/> <xsl:value-of select="portfolio/personalInfo/birthYear"/></p>
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="portfolio/personalInfo/profilePhoto"/>
                        </xsl:attribute>
                        <xsl:attribute name="alt">Profile Photo</xsl:attribute>
                    </img>

                    <div class="section">
                        <h2>Education</h2>
                        <ul>
                            <xsl:for-each select="portfolio/education/schooling">
                                <li>
                                    <xsl:value-of select="level"/> - <xsl:value-of select="year"/> (<xsl:value-of select="board"/>)
                                </li>
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
                        <xsl:choose>
                            <xsl:when test="count(portfolio/projects/project) &gt; 0">
                                <ul>
                                    <xsl:for-each select="portfolio/projects/project">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </xsl:when>
                            <xsl:otherwise>
                                <p>No projects added yet.</p>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                </div>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>
