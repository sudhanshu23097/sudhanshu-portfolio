<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Template to match the root element and start the HTML structure -->
    <xsl:template match="/portfolio">
        <html>
            <head>
                <title>My Portfolio</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        margin: 0;
                        padding: 0;
                    }
                    .container {
                        width: 80%;
                        margin: auto;
                        padding: 20px;
                        background-color: white;
                        border-radius: 8px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                    }
                    .header {
                        text-align: center;
                        margin-bottom: 40px;
                    }
                    .profile-photo {
                        width: 150px;
                        height: 150px;
                        border-radius: 50%;
                        margin-bottom: 20px;
                    }
                    .info, .education, .skills, .expertise, .projects {
                        margin-bottom: 30px;
                    }
                    h2 {
                        color: #333;
                    }
                    p {
                        font-size: 18px;
                        color: #555;
                    }
                    .project-list {
                        list-style-type: none;
                        padding: 0;
                    }
                    .project-list li {
                        padding: 10px 0;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <!-- Profile Section -->
                    <div class="header">
                        <img class="profile-photo" src="{personalInfo/profilePhoto}" alt="Profile Photo"/>
                        <h1><xsl:value-of select="personalInfo/name" /></h1>
                        <p><xsl:value-of select="personalInfo/birthMonth" /><xsl:text>, </xsl:text><xsl:value-of select="personalInfo/birthYear" /></p>
                        <p>Email: <xsl:value-of select="personalInfo/email" /></p>
                    </div>

                    <!-- Education Section -->
                    <div class="education">
                        <h2>Education</h2>
                        <xsl:for-each select="education/schooling">
                            <p><xsl:value-of select="level" /> - <xsl:value-of select="year" /> <xsl:value-of select="board" /></p>
                        </xsl:for-each>
                    </div>

                    <!-- Skills Section -->
                    <div class="skills">
                        <h2>Skills</h2>
                        <ul>
                            <xsl:for-each select="skills/skill">
                                <li><xsl:value-of select="." /></li>
                            </xsl:for-each>
                        </ul>
                    </div>

                    <!-- Expertise Section -->
                    <div class="expertise">
                        <h2>Expertise</h2>
                        <ul>
                            <xsl:for-each select="expertise/area">
                                <li><xsl:value-of select="." /></li>
                            </xsl:for-each>
                        </ul>
                    </div>

                    <!-- Projects Section -->
                    <div class="projects">
                        <h2>Projects</h2>
                        <ul class="project-list">
                            <xsl:for-each select="projects/project">
                                <li><xsl:value-of select="name" /> <xsl:text>:</xsl:text>
                                    <p><xsl:value-of select="description" /></p>
                                    <p><b>Technologies used:</b> <xsl:value-of select="technologies" /></p>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
