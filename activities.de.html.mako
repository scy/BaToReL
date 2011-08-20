<%!
	bodycls = 'activities'
	title   = u'Aktivitäten'
%>
<%inherit file="_templates/batorel.mako" />
${self.thumb("activities", u"Screenshot Aktivitäten", 193, 439)}
<h2>${self.attr.title}</h2>
<p>Auf diesem Bildschirm kannst Du einstellen was du gerne machen willst. Du kannst aus den vorgegebenen Aktivitäten auswählen oder neue anlegen.</p>
<p>BaToReL zeigt dir auf der Karte Leute, welche deine Interessen teilen.</p>
<div class="center-button">${self.button("weiter", "map.de.html", "next")}</div>
