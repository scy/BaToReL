<%!
	lang    = 'en'
	bodycls = 'go'
	title   = u'Los geht’s!'
%>
<%inherit file="_templates/batorel.mako" />
${self.thumb("homepage", "Screenshot BaToReL", 193, 439)}
<h2>${self.attr.title}</h2>
<p>So, jetzt weißt du wie es funktioniert, also jetzt noch die App herunterladen und gleich mit BaToReL durchstarten.</p>
<div class="center-button">${self.button("Download", "download.%s.html" %(self.attr.lang), "download")}</div>
