<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:planner="fhwang.csie.mcu.edu.tw">
<xsl:template match="/">

		<html>
			<head>
				<style>
.layerI{
	
	font:12px;
	color:blue;
}


</style>
			</head>
			<body>
			
			<xsl:apply-templates select="planner:行事曆" />

			
			</body>
		</html>
		
















</xsl:template>
<xsl:template match="planner:行事曆"> 
<xsl:apply-templates select="planner:事件">
<xsl:sort select="@年" data-type="number"/>

</xsl:apply-templates>

</xsl:template>

<xsl:template match="planner:事件">
<span class="layerI">
<span class="layerI">時間:</span>
<xsl:value-of select="@年"></xsl:value-of>年
<xsl:value-of select="@月"></xsl:value-of>月
<xsl:value-of select="@日"></xsl:value-of>日
<br/>

<span class="layerI">內容:</span>
<xsl:apply-templates/>
</span>
<hr/>
<br/>
</xsl:template>

</xsl:stylesheet>
