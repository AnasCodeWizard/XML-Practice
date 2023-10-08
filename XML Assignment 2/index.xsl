<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/mobileShop">
  <html>
  <body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Id</th>
      <th>Brand</th>
      <th>Model</th>
      <th>Price</th>
    </tr>
    <xsl:for-each  select="mobiles">
        <xsl:for-each  select="mobileName">
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="brand"/></td>
      <td><xsl:value-of select="model"/></td>
      <td><xsl:value-of select="price"/></td>
    </tr>
    </xsl:for-each>
</xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>