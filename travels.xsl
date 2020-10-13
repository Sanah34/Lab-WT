<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
            <h2 align="center">Discount Available</h2>
        
            <table align="center" border = "1">
               <tr bgcolor = "#9acd32">
                  <th>Address Id</th>
                  <th>CountryName</th>
                  <th>Title</th>    
                  <th>Discount</th>         
                  <th>Price</th>   
                 <th>Stay</th>    
               </tr>               
               <xsl:for-each select = "Travels/Address">
                  <tr>
                     <td><xsl:value-of select = "@id"/></td>
                     <td><xsl:value-of select = "concat(CountryName,' ',Title)"/></td>
                     <td><xsl:value-of select = "floor(Price)"/></td>                                
                     <td>
                        <xsl:choose>
                           <xsl:when test = "Price div 10 = 1">
                              High
                           </xsl:when>
              
                           <xsl:when test = "Price div 5 >= 1">
                              Medium
                           </xsl:when>
              
                           <xsl:otherwise>
                              Low
                           </xsl:otherwise>
                        </xsl:choose>
    
                     </td>
                  </tr> 
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>

</xsl:stylesheet>