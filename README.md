# Begriffshistorische Analysen von Wikipedia-Versionsgeschichten am Beispiel des Artikels "Populismus"

---

work in progress

---

[/01_Quelldaten/README.md](/01_Quelldaten/README.md)

[/01_Quelldaten](/01_Quelldaten)

---

Dieses Foschungsprozessdatenrepositorium dient der Dokumentation des o.g. Seminarprojektes und gleichzeitig der Exploration digital-historischer Methoden[^1].
Rahmen ist die Übung _Begriffsgeschichte 2.0. Chancen und Grenzen digitaler Quellen und
Analysemethoden_ im Sommersemester 2019 unter Leitung von [Dr. Sina Fabian](https://www.geschichte.hu-berlin.de/de/bereiche-und-lehrstuehle/dtge-20jhd/deutsche-geschichte-im-20-jahrhundert-mit-schwerpunkt-im-nationalsozialismus/personen/dr-sina-fabian) an der [Humboldt-Universität zu Berlin](https://www.hu-berlin.de/de).
(Erfahrungswerte werden im [Wiki](https://github.com/krugbuild/wiki-pop-quelle/wiki) dokumentiert.)

[^1]: Fußnote.

## Präsentation
Eine Abschlusspräsentation findet am 11.07.2019 statt. Der Foliensatz ist hier einsehbar: [hackmd.io/@krugbuild/wiki-pop-quelle](https://hackmd.io/@krugbuild/wiki-pop-quelle).



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
