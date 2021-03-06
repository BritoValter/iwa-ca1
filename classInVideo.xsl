<?xml version="1.0" encoding="UTF-8"?>
<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
 <!-- creats table  -->
<table id="menuTable" border="1" class="indent">
	<thead>
	     <!-- table row Tile -->
		<tr id="item">
			<th colspan="3">Courses Menu</th>
		</tr>
		<tr>			
			<th>Item</th>
			<th>Price</th>
		</tr>
	</thead>
	<tbody>
		<xsl:for-each select="//section">
		    <!-- table row items -->
			<tr id="item">
				<td colspan="3">
					<xsl:value-of select="@name"/>
				</td>
			 <!-- table row entry -->
			</tr>
			<xsl:for-each select="entry">
				<tr id="{position()}">				
					<td>
						<xsl:value-of select="item"/>
					</td>
					<td align="right">
						<xsl:value-of select="price"/>
					</td>
				</tr>
			</xsl:for-each>
		</xsl:for-each>
	</tbody>	
</table>
 
</xsl:template>
</xsl:transform>