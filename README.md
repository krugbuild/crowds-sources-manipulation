# Projektdokumentation

[**zum Repositorium (Github)**](https://github.com/krugbuild/wiki-pop-quelle/) | [**zur Leseansicht (Github Pages)**](https://krugbuild.github.io/wiki-pop-quelle/)

*work in progress*

[Abschnitt "Quellenarbeit"](./README.md#Quellenarbeit)

[Abschnitt "Auswertung"](./README.md#Auswertung)

---

## Quellenarbeit

Kern dieses Projektes ist die Auseinandersetzung mit dem Quellenmaterial und der Exploration digitalhistorischer Methoden zum Umgang mit demselben. Im Folgenden sind die verschiedenen Stufen der Quellenarbeit (die sich in der Struktur des Repositoriums widerspiegeln) kurz zusammengefasst, um den Projektverlauf möglichst nachvollziehbar zu gestalten. Diese komprimierte Darstellung kann die eigentliche Dokumentation der Quellenarbeit nur ergänzen, keinesfalls jedoch ersetzen.

### [Versionierung und Quellenwert](./01_Quelldaten/)

Die [Versionsgeschichte](https://de.wikipedia.org/wiki/Hilfe:Versionen) ist eines der zentralen Werkzeuge zur Pflege der Wikipedia. In Ihr werden sämtliche Änderungen eines Artikels mit Zeitpunkt und Autor vermerkt. Neben Manipulationsversuchen[^1] kann so theoretisch die gesamte Entwicklung eines Artikels nachverfolgt werden. Die gesamte Begriffsgeschichte, wenn man so will. Da die Versionsgeschichte vieler Begriffe bis in die frühen 2000er Jahre reicht, sollte sie eine reiche Quelle für verschiedene Methoden und Fragestellungen der zeit- und begriffsgeschichtlichen Forschung sein. Diese These zu überprüfen ist das Kernanliegen dieses Projekts.

Der Umgang mit diesen *digital born* Daten[^2] verlangt natürlich nach einer gesonderten quellenkundlichen Behandlung, die im Detail im [Abschnitt "01 Quelldaten"](./01_Quelldaten/) dokumentiert und kommentiert ist. Ziel dieser Bearbeitung sind maschinenlesbare Datenreihen, die die Grundlage der folgenden Auswertungen bilden werden. Das Ergebnis dieses ersten Bearbeitungsschrittes ist eine [Tabelle](./01_Quelldaten/20190627_Arbeitsdaten_Populismus_vollstaendig.csv) mit der folgenden Struktur:

| shortDate | Time | Benutzer | kleine Änderung | Kommentar | Größenänderung in Bytes | Größe in Bytes | ID | Date&Time |
| - | - | - | - | - | - | - | - | - |
| 2019-06-02 | 02:26 | Aka | k | →Literatur: doppelte Leerzeichen entfernt | -1 | 77.498 | 188056880 | 2019-06-02T02:26:00Z |
| ... |  |  |  |  |  |  |  |  |

Dabei handelt es sich um eine Auflistung aller 1045 Versionen des Lemmas *Populismus* zwischen dem 02. Juni 2019 und dem 04. März 2004, dem Tag der Erstellung dieses Artikels. Die Aussagekraft der Rohdaten ist jedoch ziemlich beschränkt. Für eine begriffshistorische Analyse gilt es zunächst, den Zeitrahmen zu definieren, der untersucht werden soll.

[^1]: Siehe z.B.: https://www.heise.de/newsticker/meldung/Fall-Relotius-Manipulationen-im-Wikipedia-Artikel-4582927.html .
[^2]: Vgl. Rehbein, Malte: Geschichtsforschung im digitalen Raum. Über die Notwendigkeit der Digital Humanities als historische Grund- und Transferwissenschaft., in: Herbers, Klaus; Trenkle, Viktoria (Hg.): Papstgeschichte im digitalen Zeitalter: neue Zugangsweisen zu einer Kulturgeschichte Europas, Köln; Weimar; Wien 2018 (Beihefte zum Archiv für Kulturgeschichte BV023554989 Heft 85), S. 41f.

### [Ermittlung des Referenzzeitraums anhand medialer Aufmerksamkeit](./02_Referenzzeitraum/)

Eine simple Möglichkeit, den Konjunkturzyklus eines Begriffes nachzuvollziehen ist es, die Verlaufskurve der Worthäufigkeit innerhalb eines gesellschaftlich relevanten Textkorpus heranzuziehen. Als Basis für dieses Projekt diente dabei der Korpus der Wochenzeitschrift DIE ZEIT. Alle Details zur Methodik finden sich im [Abschnitt "02 Referenzzeitraum"](./02_Referenzzeitraum/).

![Wortverlauf_ZEIT](./02_Referenzzeitraum/Wortverlauf_Populismus_ZEIT.png)

Dieser Verlauf vermittelt einen Eindruck der medialen Aufmerksam für den Begriff bzw. das Thema *Populismus*. Zwischen 2014 und 2016/2017 zeigt sich hier ein starker Anstieg, dessen Auswirkung auf die Begriffsbestimmung im Folgenden untersucht werden soll. Hierzu wird dieser Verlauf mit der Bearbeitungsfrequenz des untersuchten Lemmas abgeglichen.

### [Ermittlung des Versionsverlaufs mittels R](./03_Versionsverlauf/)

Aus der Rohform der in [Abschnitt "01 Quelldaten"](./01_Quelldaten/README.md) erzeugten Daten lassen sich schwerlich Aussagen über die Versionsentwicklung des Lemmas ableiten. Die tabellarische Notation suggeriert möglicherweise sogar eine zeitliche Gleichverteilung der einzelnen Versionen. Mittels eines simplen Zeitstrahls kann der Versionsverlauf jedoch nachvollziehbar visualisiert werden, was in [Abschnitt "03 Versionsverlauf"](./03_Versionsverlauf/) im Detail dokumentiert ist.

![Zeitstrahl](./03_Versionsverlauf/20190627_Plot.png)

An diesem Plot lassen sich Strukturen erkennen, die als Phasen hoher bzw. niedriger Bearbeitungsfrequenz identifiziert werden können. Analog zum zuvor definierten Zeitraum ist zwischen Frühjar 2014 und Frühjahr 2017 eine Phase mit hoher Bearbeitungsfrequenz zu erkennen. Da in diesem Zeitraum die mediale Berichterstattung deutlich zunimmt und gleichzeitig ein höheres Aufkommen an Bearbeitungen des Lemmas zu berzeichnen ist, kann von einer Phase hohen öffentlichen Interesse an diesem Begriff und folglich der Begriffsbestimmung ausgeangen werden. Die Grenzversionen dieser Phase dienen somit als Grundlage für die folgende Begriffshistorische Analyse und werden als *V2014* und *V2017* identifiziert.

### [Ermittlung von Referenzen mittels Kollokationsanalyse](./04_Referenzkollokationen/) sowie [Abgleich mit den Grenzversionen](./05_Abgleich/)

Einer möglichen Veränderung der Begriffsbedeutung nähern wir uns erneut über einen Ablgeich mit dem öffentlichen Diskurs. Hierzu werden mittels einer Kollokationsanalyse zunächst jene Begriffe ermittelt, die im untersuchten Zeitrahmen häufig in Verbindung mit dem Lemma auftreten. Im [Abschnitt "04 Referenzkollokationen"](./04_Referenzkollokationen/) ist das Verfahren detailliert erläutert.
Anschließend wurden die beiden Grenzversionen *V2014* und *V2017* gegen die ermittelten Kollokationen geprüft. Die Vollständige Auswertung findet sich im [Abschnitt "05 Abgleich"](./05_Abgleich/)

## Auswertung

Um die Diskussion der [Ergebnissliste aus Abschnitt 05](./05_Abgleich/README.md) zu strukturieren, teilen wir die Begriffe in drei Gruppen gemäß Ihrer Worthäufigkeit innerhalb der Grenzversionen: 

1. kein Auftreten: `Antwort, CDU, CSU, Gabriel, Hollande, Not, Seehofer, SPD, Tsipras, vermeintlich, warnen`

2. weniger als zehn Treffer in *V2014* und *V2017*: `AfD, Aufstieg, billig, Demagogie, Europa, Frankreich, Grüne, Merkel, Opposition, Präsident, Vorwurf, Zeit, zunehmend`

3. mehr als zehn Treffer in in *V2014* oder *V2017*: `Demokratie, Deutschland, liberal, link, Nationalismus, Partei, Politik, recht, Volk`

-> Lemma ist weit weniger personengebunden. Für die damalige öffentliche Debatte zentrale Figuren wie Sigmar Gabriel, François Hollande, Horst Seehofer und Alexis Tsipras wurden weder in *V2014* noch in *V2017* erwähnt. Selbst Angela Merkel findet nur als beiläufiges Beispiel für den (neo)liberalen Populismus Einzug in *V2017*. 

