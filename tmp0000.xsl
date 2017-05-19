<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:planner="fhwang.csie.mcu.edu.tw">
<xsl:template match="/planner:行事曆">

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
			<xsl:apply-templates select="//planner:事件"></xsl:apply-templates>
		

			
			</body>
		</html>

















</xsl:template>
<xsl:template match="//planner:事件/@*">
<span class="layerI"><xsl:apply-templates/></span>
</xsl:template>

</xsl:stylesheet>
