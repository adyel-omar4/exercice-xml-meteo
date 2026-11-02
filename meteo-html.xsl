<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">         
            <html>
                <head>
                    <title>Rapport Meteorologique</title>
                    
                    <style>
                        body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                        background-color: #f9f9f9;
                        }
                        
                        h2 {
                        color: #333;
                        }
                        
                        table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-bottom: 30px;
                        background: white;
                        }
                        
                        th, td {
                        border: 1px solid #ddd;
                        padding: 10px;
                        text-align: center;
                        }
                        
                        th {
                        background-color: #007BFF;
                        color: white;
                        }
                        
                        tr:nth-child(even) {
                        background-color: #f2f2f2;
                        }
                    </style>
                </head>
                
                <body>
                    
                    <h2>Rapport des Temperatures par Date</h2>
                    
                    <xsl:for-each select="meteo/mesure">
                        
                        <h3>
                            Date :
                            <xsl:value-of select="@date"/>
                        </h3>
                        
                        <table>
                            <tr>
                                <th>Ville</th>
                                <th>Temperature (°C)</th>
                            </tr>
                            
                            <xsl:for-each select="ville">
                                
                                <tr>
                                    <td>
                                        <xsl:value-of select="@nom"/>
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="@temperature"/>
                                    </td>
                                </tr>
                                
                            </xsl:for-each>
                            
                        </table>
                        
                    </xsl:for-each>
                    
                </body>
            </html>
            
        </xsl:template>
        
    
    
</xsl:stylesheet>