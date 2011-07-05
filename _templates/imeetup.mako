<%
	if not hasattr(self, "lightbox"):
		self.lightbox = False
	if not hasattr(self, "jquery"):
		self.jquery = False
%><!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title>iMeetUp</title>
	<meta name="viewport" content="width=580" />
	<link rel="stylesheet" href="res/imeetup.css" />
	<link rel="stylesheet" href="res/imageZoom/jquery.imageZoom.css" />
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
<%def name='thumb(name, title, width, height)'>
<div class="screenshot">
	<a href="res/images/${name}.jpg" class="lightboxed"><img src="res/images/${name}.thumb.jpg" alt="${title}" width="${width}" height="${height}" /></a>
</div>
</%def>
<%
if self.lightbox:
	self.jquery = True
%>
% if self.jquery:
<script src="res/jquery-1.6.1.min.js"></script>
% endif
% if self.lightbox:
<script src="res/imageZoom/jquery.imageZoom.min.js"></script>
<script>
jQuery('a.lightboxed').imageZoom();
</script>
% endif
</html>
