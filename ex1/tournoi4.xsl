<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <table border="1" width="100%">
            <tr>
                <th bgcolor="purple">EQUIPES</th>
            </tr>
            <xsl:for-each select="//equipe/@nom[not(. = preceding::equipe/@nom)]">
                <tr align="center">
                    <td>
                        <xsl:value-of select="."/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>