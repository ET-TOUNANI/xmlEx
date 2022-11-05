<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <table border="1" width="100%">
                <tr>
                    <th bgcolor="purple">Match </th>
                    <th bgcolor="purple">Date</th>
                    <th bgcolor="purple">Score</th>
                </tr>
            <xsl:for-each select="tournoi/match">
                <tr align="center">
                    <td>
                        <xsl:value-of select="equipe[1]/@nom"/> - <xsl:value-of select="equipe[last()]/@nom"/>  
                    </td>
                    <td>
                        <xsl:value-of select="./@date"/>
                    </td>
                    <td>
                        <xsl:value-of select="equipe[1]/@score"/> - <xsl:value-of select="equipe[last()]/@score"/>  
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>