## 01 Aufbereitung der Quelldaten

| [zurück zur Übersicht](../README.md) |

---

Ausgangspunkt der Untersuchung ist die [Versionsgeschichte](https://de.wikipedia.org/w/index.php?title=Populismus&action=history) des Lemmas [Populismus](https://de.wikipedia.org/wiki/Populismus) der deutschsprachigen Wikipedia. Der hier verfolgte Ansatz der Datenbeschaffung und -Aufbereitung beschränkt sich auf das Parsen (also das Zerlegen von Datenmengen und Entnehmen definierter Datensätze) der Versionsgeschichte des Lemmas. Ziel ist die Erzeugung eines bereinigten Datenbestandes, der sowohl die Weiterverarbeitung als auch die IT-gestützte Auswertung ermöglicht.

Die Umsetzung wurde im [Prozesslog_Quelldatenaufbereitung.md](Prozesslog_Quelldatenaufbereitung.md) detailliert dokumentiert. Das aktuelle Dokument versteht sich hingegen als Prozessbeschreibung.

## Ablauf

Der erste Schritt der Aufbereitung ist der Bezug der Quelldaten. Hierzu wurde eine [lokale Kopie](20190606_Quelldaten_Populismus.html) des HTML-Dokuments der Versionsgeschichte mit Stand vom 06.06.2019 erzeugt. Die eigentlichen Informationen zur Versionsgeschichte finden sich in diesem Dokument in einer Liste, die in HTML über das Tag `<ul>` definiert wird. Im nächsten Schritt wurde das Ausgangsdokument auf eben diesen Listenbereich reduziert, um ein [Dokument mit einer sich wiederholenden Struktur](20190606_Quelldaten_Populismus_reduziert.html) zu erhalten. Dieses Dokument wurde anschließend in das Datenbereinigungstool [OpenRefine](http://openrefine.org/) eingelesen. Dabei wurde die Listenstruktur in eine Tabellenstruktur überführt. Im Folgenden wurden über Texterkennung und reguläre Ausdrücke die Informationstragenden Elemente von den HTML-Strukturen getrennt sowie das Format der Datumsnotation vereinheitlicht. Der finale Zustand der bearbeiteten Struktur ist als [OpenRefine-Export](20190613_export_Begriffsgeschichte-2.0-Populismus.openrefine.tar.gz) hinterlegt. Zur weiteren Bearbeitung wurden die bereinigten Daten in zwei Versionen exportiert: Der [vollständige Export der Arbeitsdaten](20190627_Arbeitsdaten_Populismus_vollstaendig.csv) umfasst sämtliche Datenfelder und entspricht somit der Versionsgeschichte im MediaWiki. Der [reduzierte Export der Arbeitsdaten](20190627_Arbeitsdaten_Populismus_nurDatum.csv) umfasst hingegen ausschließlich die Datumsfelder und dient der späteren grafischen Aufbereitung.

---

### Methodische Erkenntnisse

Die HTML-Struktur der Versionsgeschichte beinhaltet mehr irreguläre Elemente, als eingangs vermutet. Insbesondere irreguläre `<span>` Tags verhindern bzw. erschweren ein automatisiertes Parsen der HTML-Liste.

Für zukünftige Auswertungen auf Basis von MediaWiki-Seiten ist zu prüfen, ob mittels der [MediaWiki-API](https://www.mediawiki.org/wiki/API:Main_page) ein besserer Zugriff auf die Rohdaten möglich ist.
