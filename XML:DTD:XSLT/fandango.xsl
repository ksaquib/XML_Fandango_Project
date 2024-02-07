<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/fandango">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="fandango.css"/>
            </head>
            <body>
                <div class='container'>
                    <xsl:for-each select="theater">
                        <div class='theater'> 
                            <div class="theater_heading">
                                <h1><xsl:value-of select="name" /></h1>
                                <p class="address"><xsl:value-of select="address" /></p>
                            </div>
                        <xsl:for-each select="movies/movie">
                        <div class="movie">
                            <img class='image' src="../images/{image}" alt="{title}"/>
                            <div class="movie_content">                                
                                <h1 class="showtimes"><xsl:value-of select="title"/></h1>
                                <div class="showtime_container">
                                    <p class="showtimes">Showtimes:</p>
                                    <ul class="showtime__list">
                                        <xsl:for-each select="showtimes/showtime">
                                            <li class="showtime__list_item"><xsl:value-of select="."/></li>
                                        </xsl:for-each>     
                                    </ul>
                                </div>
                                <p class="rating"><strong>Rating: </strong><xsl:value-of select="rating"/></p>
                                <p class="genre"><xsl:value-of select="genre"/></p>
                                <p class='duration'><strong>Duration: </strong> <xsl:value-of select="concat(duration/hour, ' hours ', duration/minute, ' minutes')"/></p>
                                <p class='format'><strong>Format: </strong> <xsl:value-of select="format"/></p>
                            </div>
                        </div>
                        </xsl:for-each>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
