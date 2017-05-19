<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:planner="fhwang.csie.mcu.edu.tw">
<xsl:template match="/">

		<html>
			<head>
				<style>
.layerI{
	
	font:12px;
}
td{
	
	text-align:center;

}

</style>
			</head>
			<body>
			
			<xsl:apply-templates select="planner:行事曆" />

			
			</body>
		</html>
		
















</xsl:template>
<xsl:template match="planner:行事曆"> 
<table border="2">
<tr><td colspan="2"><h1>李大大的行事曆</h1></td></tr>
<tr><td>時間</td><td>內容</td></tr>

<xsl:apply-templates select="planner:事件">
<xsl:sort select="@年" data-type="number"/>
</xsl:apply-templates>
</table>
</xsl:template>

<xsl:template match="planner:事件">
<span class="layerI">
<span class="layerI"></span>
<tr><td><xsl:value-of select="@年"></xsl:value-of>
<xsl:value-of select="@月"></xsl:value-of>
<xsl:value-of select="@日"></xsl:value-of></td>
<td><span class="layerI">內容:</span>
<xsl:apply-templates/></td></tr>
</span>


</xsl:template>

</xsl:stylesheet>
