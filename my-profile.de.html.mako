<%!
	lang    = 'de'
	bodycls = 'my-profile'
	title   = 'Mein Profil'
%>
<%inherit file="_templates/batorel.mako" />
${self.thumb("my-profile", "Screenshot Mein Profil", 193, 439)}
<h2>${self.attr.title}</h2>
<p>Für jedes Profilfeld kannst du festlegen, wer es sehen darf:</p>
<ul>
	<li><em>public</em> – öffentlich</li>
	<li><em>friends</em> – deine Freunde bei BaToReL</li>
	<li><em>contacts</em> – Kontakte</li>
	<li><em>private</em> – niemand</li>
</ul>
<p>Notwendig ist nur dein Nickname.</p>
<div class="center-button">${self.button("weiter", "activities.%s.html" %(self.attr.lang), "next")}</div>
