<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/productShop">
<html>
    <body>
        <h1>My Product Shop</h1>
        <table border="1">
        <tr bgcolor="green">
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Quantity</th>
        <th>Price per Unit</th>
        <th>Price per Dozen</th>
        <th>In Stock</th>
        </tr>
        <xsl:for-each select="products">
            <xsl:for-each select="productDetails">
            <tr>
                <td><xsl:value-of select="productId"/></td>
                <td><xsl:value-of select="productName"/></td>
                <td><xsl:value-of select="quantity"/></td>
                <td><xsl:value-of select="pricePerUnit"/></td>
                <td><xsl:value-of select="pricePerDozen"/></td>
                <td><xsl:value-of select="inStock"/></td>
            </tr>
        </xsl:for-each>
    </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
