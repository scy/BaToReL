<%!
	# Most pages have a lightbox; enable it by default.
	lightbox = True
	# jQuery will be enabled when a lightbox is requested, so disable it by default.
	jquery   = False
	# Additional body classes.
	bodycls  = ""
%><%
	# If a lightbox is requested, make sure jQuery is enabled.
	if self.attr.lightbox:
		self.attr.jquery = True
%><!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title>iMeetUp</title>
	<meta name="viewport" content="width=580" />
	<link rel="stylesheet" href="res/imeetup.css" />
% if self.attr.lightbox:
	<link rel="stylesheet" href="res/imageZoom/jquery.imageZoom.css" />
% endif
</head>

<body class="${self.attr.bodycls}">
<div id="panel">
<div id="content-area">
	<div id="content-background-top" class="content-background"></div>
	<div id="heading" class="cf">
		<a href="./"><img id="icon" src="res/images/icon.png" width="95" height="95" alt="Applikationsicon" /></a>
	</div>
	<div id="navbar"><table><tr>
		<td width="45%"><a href="download.html">Download</a></td>
		<td width="10%">|</td>
		<td width="45%"><a href="mein-profil.html">Tour</a></td>
	</tr></table></div>
	<div id="content" class="cf">
	${next.body()}
	</div>
	<div id="content-background-bottom" class="content-background"></div>
</div>
</div>
% if self.attr.jquery:
<script src="res/jquery-1.6.1.min.js"></script>
% endif
% if self.attr.lightbox:
<script src="res/imageZoom/jquery.imageZoom.min.js"></script>
<script>
jQuery('a.lightboxed').imageZoom();
</script>
% endif
</body>

<%def name='button(text, href, cls="")'>
<div class="button button-${cls}"><a href="${href}">
	<div class="icon"></div>
	<div class="text">${text}</div>
</a></div>
</%def>
<%def name='thumb(name, title, width, height)'>
<div class="screenshot">
	<a href="res/images/${name}.jpg" class="lightboxed"><img src="res/images/${name}.thumb.jpg" alt="${title}" width="${width}" height="${height}" /></a>
</div>
</%def>

</html>
