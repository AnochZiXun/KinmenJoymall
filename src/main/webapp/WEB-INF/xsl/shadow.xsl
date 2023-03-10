<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:output
		method="html"
		encoding="UTF-8"
		omit-xml-declaration="yes"
		indent="no"
		media-type="text/html"
	/>

	<xsl:import href="/import.xsl"/>

	<xsl:template match="/">
		<xsl:text disable-output-escaping="yes">&#60;!DOCTYPE HTML&#62;</xsl:text>
		<HTML dir="ltr" lang="zh-TW">
			<xsl:apply-templates/>
		</HTML>
	</xsl:template>

	<xsl:template match="document">
		<HEAD>
			<META charset="UTF-8"/>
			<META name="viewport" content="width=device-width, initial-scale=1.0"/>
			<LINK href="/STYLE/font-awesome.min.css" rel="stylesheet" media="all" type="text/css"/>
			<LINK href="/STYLE/common.css" rel="stylesheet" media="all" type="text/css"/>
			<LINK href="/STYLE/me.css" rel="stylesheet" media="all" type="text/css"/>
			<SCRIPT src="/SCRIPT/gcse.js"/>
			<TITLE>旅图中国跨境电商 &#187; 变更密码</TITLE>
		</HEAD>
		<xsl:comment>
			<xsl:value-of select="system-property('xsl:version')"/>
		</xsl:comment>
		<BODY>
			<DIV>
				<DIV>
					<HEADER>
						<DIV>
							<xsl:call-template name="header"/>
						</DIV>
					</HEADER>
				</DIV>
				<DIV>
					<DIV>
						<NAV>
							<xsl:call-template name="navigator"/>
							<DIV class="cF">
								<ASIDE>
									<A id="aside1">会员管理</A>
									<A id="aside2" href="/me.asp">基本资料</A>
									<A id="aside3" href="/history.asp">订单查询</A>
									<A href="/shadow.asp">变更密码</A>
								</ASIDE>
								<DIV>
									<H1 id="asideName">变更密码</H1>
									<FORM action="{form/@action}" method="POST">
										<TABLE class="form">
											<xsl:if test="form/@error">
												<CAPTION>
													<xsl:value-of select="form/@error"/>
												</CAPTION>
											</xsl:if>
											<TBODY>
												<TR>
													<TH class="must">
														<LABEL for="shadow">新密码</LABEL>
													</TH>
													<TD>
														<INPUT id="shadow" name="shadow" required="" type="password"/>
													</TD>
												</TR>
												<TR>
													<TD colspan="2">
														<INPUT class="fL" style="background-color:#EF7F00" type="reset" value="重新填写"/>
														<INPUT class="fR" style="background-color:#CE2118" type="submit" value="确认送出"/>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</FORM>
								</DIV>
							</DIV>
							<xsl:call-template name="footer"/>
						</NAV>
					</DIV>
				</DIV>
			</DIV>
		</BODY>
	</xsl:template>

</xsl:stylesheet>