<%! bodycls = 'karte' %>
<%inherit file="_templates/imeetup.mako" />
${self.thumb("karte", "Screenshot Karte", 193, 438)}
<h2>Karte</h2>
<p>Auf der Karte siehst du alle Nutzer von iMeetUp in deiner Umgebung, welche die selben Aktivitäten wie du haben.</p>
<p>Die Farben der Pins signalisieren dir ob ein Nutzer bereits zu deinen Kontakten oder Freunden gehört. Zusätzlich sind die kleinen Sterne ein Indikator dafür, wie viele Aktivitäten ihr gemeinsam habt. Nach Berühren der Pins kannst du auch direkt neue Leute anschreiben oder zu den Kontakten hinzufügen.</p>
<div class="center-button">${self.button("weiter", "los-gehts.html", "next")}</div>
