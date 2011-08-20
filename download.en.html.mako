<%!
	lang    = 'en'
	bodycls = "download"
	title   = "Download"
%>
<%inherit file="_templates/batorel.mako" />
<table class="download">
	<tr>
		<td class="logo"><img src="res/images/dl_apple.png" width="175" height="100" alt="Apple-Logo" /></td>
		<td class="logo"><img src="res/images/dl_android.png" width="175" height="100" alt="Android-Logo" /></td>
	</tr>
	<tr>
		<td class="button">${self.button("iPhone", "download.%s.html" %(self.attr.lang), "download")}</td>
		<td class="button">${self.button("Android", "download.%s.html" %(self.attr.lang), "download")}</td>
	</tr>
</table>
