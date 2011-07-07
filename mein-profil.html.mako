<%inherit file="_templates/imeetup.mako" />
${self.thumb("mein-profil", "Screenshot Mein Profil", 193, 438)}
<h2>Mein Profil</h2>
<p>Für jedes Profilfeld kannst du festlegen, wer es sehen darf:</p>
<ul>
	<li>public – öffentlich</li>
	<li>friends – deine Freunde bei iMeetUp</li>
	<li>contacts – Kontakte</li>
	<li>private – niemand</li>
</ul>
<p>Notwendig ist nur dein Nickname.</p>
<div class="center-button">${self.button("weiter", "aktivitaeten.html", "next")}</div>
