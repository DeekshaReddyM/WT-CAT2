<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body bgcolor="lightblue">
<h2> Our Events</h2>
<table border="3">
<tr bgcolor="lightpink">
<th align="left">Name</th>
<th align="left">Branch</th>
<th align="left">College</th>
<th align="left">Email</th>
</tr>
<xsl:for-each select="christcollege/college">
<tr>
<td><xsl:value-of select="name"/></td>
<xsl:choose>
<xsl:when test="name &gt; 30">
<td bgcolor="white"><xsl:value-of select="name"/></td>
</xsl:when>
<xsl:when test="name &gt; 10">
<td bgcolor="white"><xsl:value-of select="name"/></td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="name"/></td>
</xsl:otherwise>
</xsl:choose>
<td><xsl:value-of select="branch"/></td>
<xsl:choose>
<xsl:when test="branch &gt; 30">
<td bgcolor="white"><xsl:value-of select="college"/></td>
</xsl:when>
<xsl:when test="college &gt; 10">
<td bgcolor="white"><xsl:value-of select="college"/></td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="college"/></td>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>