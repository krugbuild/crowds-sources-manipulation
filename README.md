# Begriffshistorische Analysen der Wikipedia-Versionsgeschichte am Beispiel des Artikels "Populismus"

---

work in progress

---

## Versionierung und Quellenwert

Die [Versionsgeschichte](https://de.wikipedia.org/wiki/Hilfe:Versionen) ist eines der zentralen Werkzeuge zur Pflege der Wikipedia. In Ihr werden sämtliche Änderungen eines Artikels mit Zeitpunkt und Autor vermerkt. Neben Manipulationsversuchen [^Heise: "Fall Relotius"] kann so theoretisch die gesamte Entwicklung eines Artikels nachverfolgt werden. Die gesamte Begriffsgeschichte, wenn man so will. Da die Versionsgeschichte vieler Begriffe bis in die frühen 2000er Jahre reicht, sollte sie eine reiche Quelle für verschiedene Methoden und Fragestellungen der zeit- und begriffsgeschichtlichen Forschung sein. Diese These zu überprüfen ist das Kernanliegen dieses Projekts.

Der Umgang mit diesen *digital born* Daten[^1] verlangt natürlich nach einer gesonderten quellenkundlichen Behandlung, die im Detail im [Abschnitt "01 Quelldaten"](/01_Quelldaten/) dokumentiert und kommentiert ist. Ziel dieser Bearbeitung sind maschinenlesbare Datenreihen, die die Grundlage der folgenden Auswertungen bilden werden. Das Ergebnis dieses ersten Bearbeitungsschrittes ist eine [Tabelle](/01_Quelldaten/20190627_Arbeitsdaten_Populismus_vollstaendig.csv) mit der folgenden Struktur:

| shortDate | Time | Benutzer | kleine Änderung | Kommentar | Größenänderung in Bytes | Größe in Bytes | ID | Date&Time |
| - | - | - | - | - | - | - | - | - |
| 2019-06-02 | 02:26 | Aka | k | →Literatur: doppelte Leerzeichen entfernt | -1 | 77.498 | 188056880 | 2019-06-02T02:26:00Z |
| ... |  |  |  |  |  |  |  |  |

Dabei handelt es sich um eine Auflistung aller 1045 Versionen des Lemmas *Populismus* zwischen dem 02. Juni 2019 und dem 04. März 2004, dem Tag der Erstellung dieses Eintrages. Die Aussagekraft der Rohdaten ist jedoch ziemlich beschränkt. Für eine begriffshistorische Analyse gilt es zunächst, den Zeitrahmen zu definieren, der untersucht werden soll.

[^Heise: "Fall Relotius"]: https://www.heise.de/newsticker/meldung/Fall-Relotius-Manipulationen-im-Wikipedia-Artikel-4582927.html
[^1]: "Vgl. Rehbein, Malte: Geschichtsforschung im digitalen Raum. Über die Notwendigkeit der Digital Humanities als historische Grund- und Transferwissenschaft., in: Herbers, Klaus; Trenkle, Viktoria (Hg.): Papstgeschichte im digitalen Zeitalter: neue Zugangsweisen zu einer Kulturgeschichte Europas, Köln; Weimar; Wien 2018 (Beihefte zum Archiv für Kulturgeschichte BV023554989 Heft 85), S. 19–43."

## Ermittlung des Referenzzeitraums anhand medialer Aufmerksamkeit



---

Dieses Foschungsprozessdatenrepositorium dient der Dokumentation des o.g. Seminarprojektes und gleichzeitig der Exploration digital-historischer Method
Rahmen ist die Übung _Begriffsgeschichte 2.0. Chancen und Grenzen digitaler Quellen und
Analysemethoden_ im Sommersemester 2019 unter Leitung von [Dr. Sina Fabian](https://www.geschichte.hu-berlin.de/de/bereiche-und-lehrstuehle/dtge-20jhd/deutsche-geschichte-im-20-jahrhundert-mit-schwerpunkt-im-nationalsozialismus/personen/dr-sina-fabian) an der [Humboldt-Universität zu Berlin](https://www.hu-berlin.de/de).
(Erfahrungswerte werden im [Wiki](https://github.com/krugbuild/wiki-pop-quelle/wiki) dokumentiert.)


## Präsentation
Eine Abschlusspräsentation fand am 11.07.2019 statt. Der Foliensatz ist hier einsehbar: [hackmd.io/@krugbuild/wiki-pop-quelle](https://hackmd.io/@krugbuild/wiki-pop-quelle).



## Autoren
Stefan Krug (stefan.krug@hu-berlin.de, [@krugbuild](https://github.com/krugbuild))

Sören Rampf (rampfsoe@hu-berlin.de, [@Soe-Ra](https://github.com/Soe-Ra))

Titouan Morand (morandti@hu-berlin.de, [@Tmorand](https://github.com/Tmorand))

---

## Konzept vom 11.06.2019
Dank der automatischen Versionierung sämtlicher Änderungen haben wir mit der Wikipedia einen bisher kaum wissenschaftlich erschlossenen Quellenkorpus, der sich durch seinen Allgemeingültigkeitsanspruch sowie eine hervorragende Zugänglichkeit auszeichnet. Das Ziel dieser Projektarbeit ist die Exploration und Evaluation verschiedener digitaler Hilfsmittel zur Erschließung dieser Quellenart. Thematischer Kern der Arbeit wird die begriffshistorische Auseinandersetzung mit dem
Lemma „Populismus“ sein.
Da die Versionsgeschichte von Artikeln in der Wikipedia nur als HTML ausgegeben werden kann (Alternative Zugriffsmöglichkeiten werden im Rahmen des Projektes evaluiert), muss dieses Dokument zunächst in die einzelnen Informationseinheiten zerlegt werden. Diese werden in einem zweiten Schritt mittels eines Zeitstrahls visualisiert, um Zeiträume mit hoher Bearbeitungsfrequenz ermitteln zu können. Die Entwicklung des Lemmas wird mittels Korpusstatistiken und Kollokationsanalysen mit dem Zeit.de-Korpus abgeglichen, um eventuelle Wechselwirkungen zwischen medialer Berichterstattung und der Begriffsbestimmung in der Wikipedia zu untersuchen.

### Quelle
Versionsgeschichte der Wikipedia am Beispiel des Lemmas [Populismus](https://de.wikipedia.org/w/index.php?title=Populismus&action=history) Die Wikipedia wird über die Open-Source-Software [MediaWiki](https://www.mediawiki.org) betrieben. Die Prüfung der Versionierungsfunktion ist dank des veröffentlichten Quellcodes möglich. Eine Anpassung in der Implementierung auf der Wikipedia-Instanz oder Datenmanipulationen auf Datenbankseite lassen sich, auch wenn diese sehr unwahrscheinlich erscheinen,
ohne Serverzugriff nicht vollends ausschließen. Die Analyse der Akteure begrenzt sich auf Grund der Pseudonymität angemeldeter Benutzer und der technischen Einschränkungen bei der Auflösung von IP-Adressen auf statistische Betrachtungen.

---

### Werkzeuge (Auswahl)
(Ausführliche Informationen und Diskussionen zu verwendeten und potentiell hilfreichen Werkzeugen finden sich im [Wiki](https://github.com/krugbuild/wiki-pop-quelle/wiki/Werkzeugsammlung).)
* DiaCollo (Zeit.de): http://kaskade.dwds.de/dstar/zeit/diacollo/
* Korpusstatistik der dwds (Zeit.de): http://kaskade.dwds.de/dstar/zeit/
* OpenRefine: http://openrefine.org/

---

### Literatur
Astrid Blome, Zeitungen, in: Clio Guide – Ein Handbuch zu digitalen Ressourcen für die Geschichtswissenschaften, Hrsg. von Laura Busse, Wilfried Enderle, Rüdiger Hohls, Thomas Meyer, Jens Prellwitz, Annette Schuhmann, 2. erw. und aktualisierte Aufl., Berlin
2018 (=Historisches Forum, Bd. 23), S. B.6-1 – D.6-36, [DOI: 10.18452/19244](https://guides.clio-online.de/).

Canovan, Margaret, Populism, Harcourt Brace Jovanovich, 1981.

Collovald Annie. Populisme. In: Quaderni, n°63, Printemps 2007. Nouveaux mots du pouvoir : fragments d'un abécédaire. pp. 71-73. www.persee.fr/doc/quad_0987-1381_2007_num_63_1_1786

Hitchcock, Tim, Confronting the Digital, Cultural and Social History, 10:1,
9-23, 2013.

Huistra, Hieke; Mellink, Bram, Phrasing history: Selecting sources in digital repositories, Historical Methods: A Journal of Quantitative and Interdisciplinary History, 49:4, S. 220–229, 2016.

Ionescu, Ghita, Populism: Its Meaning and National Characteristics, Macmillan, 1969.

Müller, Jan-Werner. Was Ist Populismus? : Ein Essay, Berlin, 2016. 

Priester, Karin. Sammelrezension Populismus, Springer, Münster, 2017. 

Schieren, Stefan, and Diewald-Kerkmann, Gisela. Populismus - Extremismus - Terrorismus : Eine Einführung. Uni-Studien Politik BV010767571 57. Schwalbach/Ts., 2014.

Taguieff, Pierre-André, L'Illusion populiste. Essais sur les démagogies de l'âge démocratique, Paris, Flammarion, « Champs », 2007.
