<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<title>PAN CARD</title>
				<style>
					table {
					border-collapse: collapse;
					}

					table, td, th {
					border: 1px
					solid black;
					}
				</style>
			</head>

			<body>

				<h1>PAN Card Verification</h1>
				<meta charset="UTF-8">
					<style>
						h1 {
						color: blue;
						font-size: 50px;
						margin: 0px;
						text-align:
						center;
						}
					</style>
				</meta>

				<table>
					<tr>
						<th style="color:purple;">Income Tax Department</th>
						<th>
							<img src="C:\Users\Sony\Desktop\PAN\src\emblem.jpeg"
								alt="logo" width="50" height="50">
							</img>
						</th>
						<th>Govt of India</th>
					</tr>

					<xsl:for-each select="Certificate">
						<tr>
							<td>
								Name:
								<xsl:value-of select="IssuedTo/Person/@name"/>
							</td>
							<tr>
								<td>
									Gender:
									<xsl:value-of select="IssuedTo/Person/@gender"/>
								</td>
							</tr>
							<tr>
								<td>
									DOB:
									<xsl:value-of select="IssuedTo/Person/@dob"/>
								</td>
							</tr>
							<tr>
							<td>
									Phone:
									<xsl:value-of select="IssuedTo/Person/@phone"/>
								</td>
							</tr>
							<tr>
							<td>
									Email ID:
									<xsl:value-of select="IssuedTo/Person/@email"/>
								</td>
							</tr>
								
							<tr>
								<td>
									Address:
									<xsl:value-of select="IssuedTo/Person/Address/@house"/>
								</td>
							</tr>
							<tr>
								<td>
									PAN No.:
									<xsl:value-of select="@number"/>
								</td>
							</tr>
							<tr>
							<td>
									PAN verified on:
									<xsl:value-of select="CertificateData/PAN/@verifiedOn"/>
									
								</td>
							</tr>
						
							
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>