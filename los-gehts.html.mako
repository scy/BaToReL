<%!
	bodycls = 'los-gehts'
	title   = u'Los geht’s!'
%>
<%inherit file="_templates/imeetup.mako" />
${self.thumb("homepage", "Screenshot iMeetUp", 200, 455)}
<h2>${self.attr.title}</h2>
<p>So, jetzt weißt du wie es funktioniert, also jetzt noch die App herunterladen und gleich mit iMeetUp durchstarten.</p>
<div class="center-button">${self.button("Download", "download.html", "download")}</div>
