<?xml version="1.0" encoding="iso-8859-1"?><!-- DWXMLSource="Sports.xml" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
table {
  border-collapse: collapse;
  width: 80%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #FFFFFF}

th {
  background-color: #000099;
  color: white;
}
h1 {
  font-family: Trattatello, fantasy;
  
}
.header {
  background-color: #000099;
  text-align: center;
  padding:inherit;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<title>Author list</title>
</head>
<div class="header">
  <h1><font color="#FFFFFF" size="+4">Book Store Management System</font></h1>
</div>
 <center><img src="micky.png"/></center>
<body>
 <h2 align="center"><font><u><b>Authors Details</b></u></font></h2>
   <table align="center" border="1" bordercolor="#000099">
   <tr>
    <th >title</th>
    <th >author</th>
    <th >year</th>
    <th >price</th>
   </tr>
    <xsl:for-each select="author/details">
   <tr>
    <td ><xsl:value-of select="title"/></td>
    <td ><xsl:value-of select="author"/></td>
    <td ><xsl:value-of select="year"/></td>
    <td ><xsl:value-of select="price"/></td>
   </tr>
    </xsl:for-each>
    </table><br />
<center>

<h2>Author:</h2><p id="demo"></p>

<script>
var parser, xmlDoc;
var text = "<AuthorDetails><ed>" +
"<author>Edward Gibbon</author>" +
"<year>2009</year>" +
"<price>59.99</date>" +
"<title>The Decline and Fall of the Roman Empire</title>" +
"</ed></AuthorDetails>";

if (window.DOMParser) {
  parser = new DOMParser();
  xmlDoc = parser.parseFromString(text,"text/xml");
} else {
  xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
  xmlDoc.async = false;
  xmlDoc.loadXML(text); 
} 

document.getElementById("demo").innerHTML =
xmlDoc.getElementsByTagName("state")[0].childNodes[0].nodeValue;
</script>
</center>
</body>
</html>

</xsl:template>
</xsl:stylesheet>