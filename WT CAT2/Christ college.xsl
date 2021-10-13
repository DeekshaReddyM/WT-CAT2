<?xml version="1.0" encoding="UTF-8"?>

<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">


<p>


<center>

<h1 style="color:#663399">BOOK STORE MANAGEMENT SYSTEM</h1>

</center>

<h2 style="color:#9966CC">LIST OF BOOKS</h2>

</p>


<body style="font-family:Arial;font-size:12pt;background-color:#00FF66">


<xsl:for-each select="Books/Authors/Authors">


<div style="background-color:teal;color:white;padding:4px">


<span style="font-weight:bold">

<xsl:value-of select="AuthorName"/>
 
</span>

<xsl:value-of select="Genre"/>

</div>


<div style="margin-left:20px;margin-bottom:1em;font-size:10pt">


<p>


<span style="font-style:italic; color:#FF9933">


<b>
[ Know more about author : 
<xsl:value-of select="AuthorName/AuthorWebsite"/>
]
</b>

</span>

<br/>


<span style="font-style:italic; color:#FF6666">


-<b>
[ MailID : 
<xsl:value-of select="AuthorName/AuthorMailID"/>
] 
</b>

</span>

</p>

</div>

</xsl:for-each>

</body>

</html>