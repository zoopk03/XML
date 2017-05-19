<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fs="xml.csie.mcu.edu.tw">
	<xsl:template match="article">
		<html>
			<head>
				<style>
.layerI{
	
	font:18px;
	color:red;
}
.layerII{
	
	font:20px;
	color:#909;

}
.layerIII{
	font:25px;
	color:#0f0;

}
.layerIV{
	color:#000;
	font:30px;
}
.layer{
	font:15px;

}
.note{
	color:blue;
	font:10px;


}
.s{

	color: black;
	font:15px;


}

</style>
			</head>
			<body>
			<xsl:apply-templates select="//paragraph[floor(1)]"></xsl:apply-templates>
			
			<xsl:for-each select="//paragraph[1]/descendant::point">		
			<xsl:number level="multiple"/>
			<xsl:apply-templates/><br/>
			</xsl:for-each>
			<xsl:apply-templates select="//paragraph[floor(2)]"></xsl:apply-templates>	
			<xsl:for-each select="//paragraph[2]/descendant::point">		
			<xsl:number level="multiple"/>
			<xsl:apply-templates/><br/>
			</xsl:for-each>
			
			</body>
		</html>
		
		
		</xsl:template>
		<xsl:template match="//paragraph[floor(1)]">
	<span class="s">
		Paragraph I	 :
		<br/>
		</span>
	</xsl:template>
	<xsl:template match="//paragraph[floor(2)]">
	<span class="s">
		Paragrapf II :
		<br/>
	</span>
	
	</xsl:template>
		<xsl:template match="//point[count(ancestor-or-self::point) =1]">
		<span class="layerI">
			<xsl:apply-templates/>
		</span>
	</xsl:template>
	<xsl:template match="//note">
		<sub class="note">
			<a title="{.}">note<xsl:value-of select="count(preceding::note)+1"/>
			</a>
		</sub>
	</xsl:template>
	<xsl:template match="//point[count(ancestor-or-self::point) =2]">
		<span class="layerII">
			<xsl:apply-templates/>
		</span>
	</xsl:template>
	<xsl:template match="//point[count(ancestor-or-self::point) =3]">
		<span class="layerIII">
			<xsl:apply-templates/>
		</span>
	</xsl:template>
	<xsl:template match="//point[count(ancestor-or-self::point) =4]">
		<span class="layerIV">
			<xsl:apply-templates/>
		</span>
	</xsl:template>
	<xsl:template match="//paragraph[ancestor-or-self::paragraph]">
		<span class="s">
			<xsl:apply-templates/>
		</span>
		<br/>
	</xsl:template>	
		
</xsl:stylesheet>
