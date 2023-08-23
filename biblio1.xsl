<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>biblio</title>
            </head>
            <body>
                <h2>Liste des Etudiant de la bibliotheque</h2>
                <xsl:for-each select="/biblio/etudiant">
                    <ul>
                        <li>Code : <xsl:value-of select="@code"></xsl:value-of></li>
                        <li>Nom : <xsl:value-of select="@nom"></xsl:value-of></li>
                        <li>Prenom : <xsl:value-of select="@prenom"></xsl:value-of></li>
                        <li>Age : <xsl:value-of select="@age"></xsl:value-of></li>
                    </ul> 
                    <table width="75%" border="1">
                        <tr>
                            <th>ID</th><th>TITRE</th><th>DATE_EMPRUNT</th><th>RENDU</th>
                        </tr>
                        <xsl:for-each select="livre">
                            <tr>
                                <td><xsl:value-of select="@id"></xsl:value-of></td>
                                <td><xsl:value-of select="@tire"></xsl:value-of></td>
                                <td><xsl:value-of select="@dateEmprunt"></xsl:value-of></td>
                                <td><xsl:value-of select="@rendu"></xsl:value-of></td>
                                
                            </tr>
                        </xsl:for-each>
                        <tr>
                            <td colspan="3">Nombre de livres empruntés</td>
                            <td><xsl:value-of select="count(livre)"/></td>
                        </tr>
                        <tr>
                            <td colspan="3">Nombre de livres non rendu</td>
                            <td><xsl:value-of select="count(livre[@rendu='Non'])"/></td>
                        </tr>
                    </table>
                </xsl:for-each>
               
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>