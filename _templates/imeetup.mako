<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="res/imeetup.css" />
</head>

<body><div id="panel">
<div id="content-area">
	<div id="content-background-top" class="content-background"></div>
	<div id="navbar"><table><tr>
		<td width="45%"><a href="download.html">Download</a></td>
		<td width="10%">|</td>
		<td width="45%"><a href="tour.html">Tour</a></td>
	</tr></table></div>
	<div id="content" class="cf">
	${next.body()}
	</div>
	<div id="content-background-bottom" class="content-background"></div>
</div>
</div></body>

<%def name='button(text, href, cls="")'>
<div class="button button-${cls}"><a href="${href}">
	<div class="icon"></div>
	<div class="text">${text}</div>
</a></div>
</%def>
</html>
