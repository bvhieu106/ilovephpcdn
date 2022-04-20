<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>XML Sitemap</title>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<style type="text/css">
					body {
						font-family:"Lucida Grande","Lucida Sans Unicode",Tahoma,Verdana;
						font-size:13px;
					}
					
					#intro {
						background-color:#CFEBF7;
						border:1px #2580B2 solid;
						padding:5px 13px 5px 13px;
						margin:10px;
					}
					
					#intro p {
						line-height:	16.8667px;
					}
					
					td {
						font-size:11px;
					}
					
					th {
						text-align:left;
						padding-right:30px;
						font-size:11px;
					}
					
					tr.high {
						background-color:whitesmoke;
					}
					
					#footer {
						padding:2px;
						margin:10px;
						font-size:8pt;
						color:gray;
					}
					
					#footer a {
						color:gray;
					}
					#sitemapContent{
						max-width:800px;
						margin:0 auto;
						padding-top:30px;
					}
					a {
						color:black;
					}
				</style>
			</head>
			<body>
			<div id="sitemapContent">
				<h1>XML Sitemap</h1>
				<div id="intro">
					<p>
						This is a XML Sitemap which is supposed to be processed by search engines like <a href="http://www.google.com">Google</a>, <a href="http://search.msn.com">MSN Search</a> and <a href="http://www.yahoo.com">YAHOO</a>.<br />
						You can find more information about XML sitemaps on <a href="http://sitemaps.org">sitemaps.org</a> and Google's <a href="http://code.google.com/sm_thirdparty.html">list of sitemap programs</a>.
					</p>
				</div>
				<div id="content">
					<table id="sitemap" cellpadding="3">
						<thead>
							<tr>
								<th width="100%">Sitemap</th>
							</tr>
						</thead>
						<tbody>
						<xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
							<xsl:variable name="sitemapURL">
								<xsl:value-of select="sitemap:loc"/>
							</xsl:variable>
							<tr>
								<td>
									<a href="{$sitemapURL}"><xsl:value-of select="sitemap:loc"/></a>
								</td>
								
							</tr>
						</xsl:for-each>
						</tbody>
					</table>
				</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>