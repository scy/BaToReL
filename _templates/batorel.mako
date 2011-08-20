<%!
	# Most pages have a lightbox; enable it by default.
	lightbox = True
	# jQuery will be enabled when a lightbox is requested, so disable it by default.
	jquery   = False
	# Additional body classes.
	bodycls  = ""
	# Page title.
	title    = None
	# Meta description.
	descr    = None
%><%
	# If a lightbox is requested, make sure jQuery is enabled.
	if self.attr.lightbox:
		self.attr.jquery = True
%><!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title>
		% if self.attr.title:
			${self.attr.title} «
		% endif
		BaToReL
	</title>
	<meta name="viewport" content="width=device-width" />
	<link rel="stylesheet" href="res/imeetup.css" />
% if self.attr.lightbox:
	<link rel="stylesheet" href="res/imageZoom/jquery.imageZoom.css" />
% endif
% if self.attr.descr:
	<meta name="description" content="${self.attr.descr}" />
% endif
</head>

<body class="${self.attr.bodycls}">
<div id="panel">
<div id="content-area">
	<div id="heading">
		<a href="./"><span>BaToReL – Back To Real Life</span></a>
	</div>
	<div id="navbar"><table><tr>
		<td width="45%"><a href="download.de.html">Download</a></td>
		<td width="10%">|</td>
		<td width="45%"><a href="my-profile.de.html">Tour</a></td>
	</tr></table></div>
	<div id="content" class="cf">
	${next.body()}
	</div>
	<div id="content-background-bottom" class="content-background">
		<a href="tos.de.html">AGBs</a>
		<a href="mailto:support@batorel.de">support@batorel.de</a>
		<a href="http://twitter.com/BaToReL">Twitter</a>
		<a href="contact.de.html">Impressum</a>
	</div>
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
