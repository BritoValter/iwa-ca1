<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Class in Video</title>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>				
        		<link rel="stylesheet" href="css/PaddysCafe.css" />
            	<script type="text/javascript" src="js/PaddysCafe.js">x</script>
			</head>
			<body>
				<h2><img src="img/logo.png" alt="Javaco Tea Logo" width="58" height="100"/>Welcome to Class in Video</h2>
				<p>Select your entrees from the menu below. To calculate the amount of the bill, click the Calculate Bill button. Check the "Highlight bestSeller Meals" box to highlight bestSeller dishes.</p>
				<table id="menuTable" border="1" class="indent">
					<thead>
						<tr>
							<th colspan="3">Courses Menu</th>
						</tr>
						<tr>
							<th>Select</th>
							<th>Item</th>
							<th>Price</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="//section">
							<tr>
								<td colspan="3">
									<xsl:value-of select="@name"/>
								</td>
							</tr>
							<xsl:for-each select="entry">
								<tr>
									<xsl:attribute name="bestSeller">
										<xsl:value-of select="boolean(@bestSeller)"/>
									</xsl:attribute>
									<td align="center">
										<input name="item0" type="checkbox"/>
									</td>
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
				<form class="indent">
					<p><input type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill"/>
                Total: €
                <input type="text" name="txtBillAmt"/><input type="checkbox" name="cbOpts" value="isVeg" id="showVeg"/><label for="showVeg">Highlight BestSellers </label></p>
				</form>
			</body>
		</html>
	</xsl:template>
</xsl:transform> 