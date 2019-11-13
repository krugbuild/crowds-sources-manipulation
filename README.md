# Crowds, sources and manipulation

## Begriffshistorische Analysen mittels Wikipedia am Beispiel des Artikels "Populismus" zwischen 2014 und 2017.

[**zum Repositorium (Github)**](https://github.com/krugbuild/wiki-pop-quelle/) | [**zur Leseansicht (Github Pages)**](https://krugbuild.github.io/wiki-pop-quelle/)

Dieses Projekt ist als kommentiertes Forschungsdatenrepositorium zu verstehen, in dem Forschungsdaten, Dokumentation und Analyse im Verbund zur Verfügung gestellt werden. Es basiert auf einer [Vorstudie](../Vorstudie/), die im Juni und Juli 2019 im Rahmen einer Übung an der Humboldt-Universität zu Berlin durchgeführt wurde.

Stefan Krug, 13.11.2019.

---

Die [Versionsgeschichte](https://de.wikipedia.org/wiki/Hilfe:Versionen) ist eines der zentralen Werkzeuge zur Pflege der Wikipedia. In Ihr werden sämtliche Änderungen eines Artikels mit Zeitpunkt und Autor vermerkt. Neben Manipulationsversuchen[^1] kann so theoretisch die gesamte Entwicklung eines Artikels nachverfolgt werden. Die gesamte Begriffsgeschichte, wenn man so will. Da die Versionsgeschichte vieler Begriffe bis in die frühen 2000er Jahre reicht, sollte sie eine reiche Quelle für verschiedene Methoden und Fragestellungen der zeit- und begriffsgeschichtlichen Forschung sein. Diese These zu überprüfen ist das Kernanliegen dieses Projekts.

[^1]: Siehe z.B.: https://www.heise.de/newsticker/meldung/Fall-Relotius-Manipulationen-im-Wikipedia-Artikel-4582927.html .

Der Umgang mit diesen *digital born* Daten[^2] verlangt natürlich nach einer gesonderten quellenkundlichen Behandlung,  #anspruch #herausforderung


[^2]: Vgl. Rehbein, Malte: Geschichtsforschung im digitalen Raum. Über die Notwendigkeit der Digital Humanities als historische Grund- und Transferwissenschaft., in: Herbers, Klaus; Trenkle, Viktoria (Hg.): Papstgeschichte im digitalen Zeitalter: neue Zugangsweisen zu einer Kulturgeschichte Europas, Köln; Weimar; Wien 2018 (Beihefte zum Archiv für Kulturgeschichte BV023554989 Heft 85), S. 41f.

## Quellenarbeit

Kern dieses Projektes ist die Auseinandersetzung mit dem Quellenmaterial und der Exploration digitalhistorischer Methoden zum Umgang mit demselben. Um den Projektverlauf möglichst nachvollziehbar zu gestalten, werden im Folgenden die verschiedenen Stufen der Quellenarbeit (die sich in der Struktur des Repositoriums widerspiegeln) kurz umrissen. Diese komprimierte Darstellung kann die eigentliche Dokumentation der Quellenarbeit nur ergänzen, keinesfalls jedoch ersetzen. Die Überschriften dienen als Verweis zu den jeweiligen Unterordnern.

### [01 Aufbereitung der Quelldaten](./01_Quelldaten/)

Da die Informationen zur Versionsgeschichte zur besseren Lesbarkeit in einer HTML-Struktur eingebettet sind, müssen diese zunächst in Reinform gebracht werden. Denn nur so wird eine Weiterverarbeitung überhaupt erst möglich. Das Ergebnis dieser Datenaufbereitung ist eine [Tabelle](./01_Quelldaten/20190627_Arbeitsdaten_Populismus_vollstaendig.csv), in der alle 1045 Versionen des Lemmas *Populismus* zwischen dem 02. Juni 2019 und dem 04. März 2004, dem Tag der Erstellung dieses Artikels, mit Datum, verantwortlichem Benutzer, Kommentar und weiteren, technischen Details verzeichnet sind.

### [02 Referenzzeitraum](./02_Referenzzeitraum/)

Um einen Abgleich mit dem öffentlichen Diskurs zu ermöglichen, muss ein Referenzzeitraum bestimmt werden. Der Konjunkturzyklus eines Begriffes kann zum Beispiel über die Wortverlaufskurve innerhalb eines gesellschaftlich relevanten Textkorpus nachvollzogen werden. Als Grundlage für dieses Projekt wurde der Korpus der Wochenzeitschrift DIE ZEIT gewählt, welche zu den deutschen Leitmedien gezählt wird.[^3] 

![Wortverlauf_ZEIT](./02_Referenzzeitraum/Wortverlauf_Populismus_ZEIT.png)

Dieser Verlauf vermittelt einen Eindruck der medialen Aufmerksam für das Thema *Populismus* seit Erstellung des zugehörigen Lemmas in der Wikipedia. Zwischen 2014 und 2016/2017 zeigt sich hier ein starker Anstieg, dessen Auswirkung auf die Begriffsbestimmung im Folgenden untersucht werden soll - und somit den Referenzzeitraum definiert.

[^3]:  Vgl. [Weischenberg, Von Siegfried; Malik, Maja; Scholl, Armin: Journalismus in Deutschland 2005. Zentrale Befunde der aktuellen Repräsentativbefragung deutscher Journalisten, in: Media Perspektiven 7, 2006, S. 359](https://www.ard-werbung.de/fileadmin/user_upload/media-perspektiven/pdf/2006/07-2006_Weischenberg.pdf).

### [03 Versionsverlauf](./03_Versionsverlauf/)

Um die konjunkturelle Entwicklung des Lemmas mit der öffentlichen Berichterstattung vergleichen zu können, hilft es, die im [1. Abschnitt](./01_Quelldaten/) erhobenen Daten zu visualisieren. Die tabellarische Notation suggeriert möglicherweise eine zeitliche Gleichverteilung der einzelnen Versionen, weshalb diese stattdessen auf einem Zeitstrahl angeordnet dargestellt werden.

![Zeitstrahl](./03_Versionsverlauf/20190627_Plot_2014-2017.png)

Dieser Plot zeigt den zuvor ermittelten Referenzzeitraum. Dargestellt ist jeder einzelne Versionssprung des Lemmas durch den zugehörigen *timestamp*. Es lassen sich Strukturen erkennen, die als Phasen hoher bzw. niedriger Bearbeitungsfrequenz identifiziert werden können. Zu Beginn und Ende des Untersuchungszeitraumes findet sich jeweils eine Phase mit geringer Bearbeitungsfrequenz (rot markiert). Die daraus entnommenen Grenzversionen bilden die Grundlage für die folgende begriffshistorische Analyse und werden fortan als [*V2014*](./03_Versionsverlauf/Populismus_V2014.html) und [*V2017*](./03_Versionsverlauf/Populismus_V2017.html) identifiziert und als lokale Kopie vorgehalten.

### [04 Referenzkollokationen](./04_Referenzkollokationen/) 

Zur Untersuchung einer möglichen Veränderung der Begriffsbedeutung orientieren wir uns erneut an einen Abgleich mit dem öffentlichen Diskurs. Hierzu werden mittels einer Kollokationsanalyse jene Begriffe ermittelt, die im Referenzzeitraum häufig in Verbindung mit dem Lemma auftreten. Die erzeugte [Liste](./04_Referenzkollokationen/populismus_2010-2017_kollokation.tsv) beinhaltet neben den ermittelten Kollokationen auch Informationen zu deren Frequenz und Wortart.

### [05 Abgleich](./05_Abgleich/)

Die Prüfung Verteilung der ermittelten Kollokationen in den Grenzversionen *V2014* und *V2017* bildet schlussendlich die Grundlage für die folgende Auswertung. Das Ergebnis ist eine [kommentierte Liste mit Wortverteilungen](./05_Abgleich/README.md) für beide Grenzversionen. 

Neben der Dokumentation der Begriffsänderung und der öffentlichen Debatte, lassen sich mit dieser Methodik Rückschlüsse auf den Einfluss der medialen Berichterstattung auf das Medium Wikipedia ziehen. Das Ergebnis wird vermutlich zwischen folgenden beiden Extrema eingeordnet werden müssen:

- Eine weitgehende Übernahme der sich verändernden Kollokationen vom ZEIT-Korpus in das Lemma würde auf einen **direkten Einfluss der medialen Debatte** auf die allgemeingültige Begriffsdefinition in der Wikipedia hindeuten.
- Eine ausbleibende Übernahme der Änderungen hingegen würde auf eine Trennung der beiden medialen Sphären hindeuten. In diesem Falle würde sich die Begriffsdefinition in der Wikipedia augenscheinlich **losgelöst von einer übergeordneten medialen** Debatte entwickeln.

## Auswertung

Um die Diskussion der [Ergebnissliste aus Abschnitt "05 Abgleich"](./05_Abgleich/README.md) zu strukturieren, werden die Begriffe zunächst in drei Gruppen gemäß Ihrer Worthäufigkeit innerhalb der Grenzversionen eingeteilt: 

1. kein Auftreten: `Antwort, CDU, CSU, Gabriel, Hollande, Not, Seehofer, SPD, Tsipras, vermeintlich, warnen`
2. weniger als zehn Treffer in *V2014* und *V2017*: `AfD, Aufstieg, billig, Demagogie, Europa, Frankreich, Grüne, Merkel, Opposition, Präsident, Vorwurf, Zeit, zunehmend`
3. mehr als zehn Treffer in in *V2014* oder *V2017*: `Demokratie, Deutschland, liberal, link, Nationalismus, Partei, Politik, recht, Volk`

### Personenbezug
Bei der Analyse der Gruppen 1 und 2 fällt auf, dass in den Medien erwähnte Personen im Lemma keine Rolle spielen. Weder *Sigmar Gabriel*, *François Hollande*, *Horst Seehofer* noch *Alexis Tsipras* wurden in *V2014* oder *V2017* erwähnt. *Angela Merkel* findet nur als beiläufiges Beispiel für den *(neo)liberalen Populismus* Einzug in *V2017*. Es liegt somit nahe anzunehmen, dass dies ein Indikator für eine neutralere, weniger personenbezogene Darstellung in der Wikipedia spricht. Gleichwohl muss dabei beachtet werden, dass alle Politiker nur in einzelnen Jahren, viele davon im Vorlauf des Referenzzeitraumes, und zudem mit einer niedrigen Kollokationsfrequenz (*f12*) im Korpus der ZEIT erwähnt wurden. `Gabriel (2012, f12=5), Hollande (2012, f12=5), Seehofer (2010, f12=6), Tsipras (2015, f12=5), Merkel (2016, f12=7)` Die fehlende Erwähnung dieser Akteure in den untersuchten Versionen ist somit durchaus bemerkenswert, nicht jedoch signifikant.

### Normative Wortwahl

Neben Personen finden sich insbesondere Begriffe normativer Art in den ersten beiden Gruppen. Begriffe wie *warnen* (2016, f12=5), *Vorwurf* (2012, f12=5; 2014, f12=7; V2014 & V2017: 4) oder *Demagogie* (2016, f12=6; V2014: 1) treten zwar nur mit eher niedrigen Kollokationsfrequenzen im Korpus der ZEIT auf, sind in den Grenzversionen jedoch praktisch nicht vorhanden.

  `Antwort (2016, f12=6; 2017 f12=7), Not (2012, f12=5), vermeintlich (2014, f12=7), warnen (2016, f12=5), Aufstieg (2017, f12=7; V2014 & V2017: 1), billig (2012, f12=7; 2015 f=15; V2014 & V2017: 1), Demagogie (2016, f12=6; V2014: 1), Vorwurf (2012, f12=5; 2014, f12=7; V2014 & V2017: 4), zunehmend (2016, f12=5; V2017: 2)`

wertend / subjektiv -> normativ, präskriptiv, 

### Parteien

"Volksparteien" sowie Grüne spielen keine Rolle im Wiki. AfD wird erst in V2017 erwähnt, jedoch nur 1x. Obwohl Kollokationsfrequenz im Jahr 2016 mit f12=11 relativ hoch ist. Begriff "Partei" selbst erwartungsgemäß häufig.

`CDU (2016, f12=7), CSU (2014, f=10), SPD (2013, f12=5; 2014, f12=8), AfD (2015, f12=5; 2016, f12=11; V2017: 1), Grüne (2010, f12=6; V2014: 1, V2017: 2), Partei (2013, f12=; 2016, f12=; V2014: 28, V2017: 37)`



---
