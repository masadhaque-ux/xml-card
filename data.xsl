<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>XSL File</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.9/dist/css/bootstrap.min.css"/>  
                <link rel="stylesheet" href="style.css"/>          
            </head>
            <body>
                <div class="container">
                    <div class="row">
                        
                            
                                <xsl:for-each select='/studentinfo/data'>
                                    <div class="col-4 mx-auto">
                                        <div class="card">
                                            <div class="img">
                                                <img src="{image}" alt="" width="100%" height="80px"/>
                                            </div>
                                            <div class="content">
                                                <xsl:value-of select='name'/><br/>
                                                <xsl:value-of select='email'/><br/>
                                                <xsl:value-of select='course'/><br/>
                                                <xsl:value-of select='contact'/><br/>
                                                <xsl:value-of select='city'/>
                                            </div>
                                        </div><br/>
                                     </div>
                                </xsl:for-each>
                            
                            <table class='table table-hover table-bordered'>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Course</th>
                                    <th>Contact</th>
                                    <th>City</th>

                                </tr>
                                <xsl:for-each select='/studentinfo/data'>
                                    <tr>
                                        <td><xsl:value-of select='name'/></td>
                                        <td><xsl:value-of select='email'/></td>
                                        <td><xsl:value-of select='course'/></td>
                                        <td><xsl:value-of select='contact'/></td>
                                        <td><xsl:value-of select='city'/></td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        
                    </div>
                </div>

                
                <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.9/dist/js/bootstrap.bundle.min.js'></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>