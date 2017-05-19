<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:planner="fhwang.csie.mcu.edu.tw">
<xsl:template match="/">

		<html>
			<head>
				<style>
.layerI{
	
	font:12px;
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
<tr><td>李大大的行事曆</td></tr>
<tr><td>時間</td><td>內容</td></tr>
</table>
<xsl:apply-templates select="planner:事件">
<xsl:sort select="@年" data-type="number"/>
</xsl:apply-templates>

</xsl:template>

<xsl:template match="planner:事件">
<span class="layerI">
<span class="layerI"></span>
<td><xsl:value-of select="@年"></xsl:value-of>
<xsl:value-of select="@月"></xsl:value-of>
<xsl:value-of select="@日"></xsl:value-of></td>
<br/>

<span class="layerI">內容:</span>
<xsl:apply-templates/>
</span>
<hr/>
<br/>
</xsl:template>

</xsl:stylesheet>
