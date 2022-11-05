<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <table border="1" width="100%">
            <tr>
                <th bgcolor="purple">Match </th>
                <th bgcolor="purple">Buts marqués</th>
                <th bgcolor="purple">Buts encaissés</th>  
                <th bgcolor="purple">Points</th>  
            </tr>
            
            <xsl:for-each select="//match">
                <tr align="center">

                    <td>
                        <xsl:value-of select="./equipe[1]/@nom"/>   
                    </td>
                    <td>
                        
                        <xsl:value-of select="./equipe[1]/@score"/>  
                    </td>
                    <td>
                        <xsl:value-of select="./equipe[last()]/@score"/>  
                    </td>
                    <td>
                        <xsl:choose >
                            <xsl:when test="equipe[1]/@score &gt; equipe[last()]/@score">
                                2 
                            </xsl:when>
                            <xsl:when test="equipe[1]/@score &lt; equipe[last()]/@score">
                                0
                            </xsl:when>
                            <xsl:otherwise>
                                1
                            </xsl:otherwise>
                            
                        </xsl:choose>
                    </td>
                
                    
                </tr>
                
                    <tr align="center">
                        
                        <td>
                            <xsl:value-of select="./equipe[last()]/@nom"/>   
                        </td>
                        <td>
                            
                            <xsl:value-of select="./equipe[last()]/@score"/>  
                        </td>
                        <td>
                            <xsl:value-of select="./equipe[1]/@score"/>  
                        </td>
                        <td>
                            <xsl:choose >
                                <xsl:when test="equipe[last()]/@score &gt; equipe[1]/@score">
                                    2 
                                </xsl:when>
                                <xsl:when test="equipe[last()]/@score &lt; equipe[1]/@score">
                                    0
                                </xsl:when>
                                <xsl:otherwise>
                                    1
                                </xsl:otherwise>
                                
                            </xsl:choose>
                        </td>
                        
                        
                    </tr>
                    
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>