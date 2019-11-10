## 03 Versionsverlauf des Lemmas "Populismus"

| [**zurück zur Übersicht**](../README.md) |

---

Um einen Abgleich mit dem Referenzzeitraum zu ermöglichen, muss zunächst der Versionsverlauf des Lemmas visualisiert werden. Es ist anzunehmen, dass sich im Versionsverlauf ähnliche Muster zeigen werden, wie sie in der Wortverlaufskurve im [Abschnitt 02](../02_Referenzzeitraum/) deutlich wurden. Im Gegensatz zur Analyse des Wortverlaufs soll hier jedoch die Bearbeitungsfrequenz dargestellt werden.
Zur Eingrenzung des Untersuchungszeitraumes ist es notwendig, die unterschiedlichen Phasen des Bearbeitungsverlaufs zu definieren. Hierbei wird angenommen, dass Phasen mit einer hohen Bearbeitungsfrequenz durch ein gesteigertes öffentliches Interesse und einen intensivierten Diskurs um den Begriff selbst hervorgerufen werden. Phasen mit geringer Bearbeitungsfrequenz lassen dementsprechend darauf schließen, dass das Lemma sich in einem relativ unumstrittenen, möglicheweise temporär abgeschlossenen Zustand befindet. Gegenstand der Untersuchung ist folglich ein Zeitraum mit hoher Bearbeitungsfrequenz, dessen Beginn und Ende  von Zeiträumen mit geringer Bearbeitungsfrequenz markiert werden. 

### OpenRefine - Timeline Facet

![timeline_facet](./openrefine_timeline_facet.png) 

Diese aus OpenRefine erzeugte Kurzübersicht vermittelt einen ersten Eindruck von der Verteilung der Edit-Häufigkeit über den betrachteten Zeitraum hinweg. Diese Visualisierung der Werte ist jedoch stark vereinfacht und vermittelt deshalb möglicherweise einen falschen Eindruck. Solche Diagramme fassen die einzelnen Datumswerte in definierten Zeiträumen (*buckets*) zusammen, sodass die Höhe der einzelnen Balken die Anzahl der darin subsumierten Daten darstellt. Ohne genaue Kenntnis über die Definition dieser Zeiträume und der exakten Werte lässt sich somit keine vernünftige Auswertung der Verteilung der Edits durchführen.

Für den höchst möglichen Detailgrad müsste jeder einzelne Versionssprung als eigener Wert auf einer Zeitachse eingetragen werden. Werthäufungen entsprächen dort Zeiträumen mit hoher Änderungsaktivität, Bereiche mit wenigen Werten hingegen Zeiträumen mit geringer Änderungsaktivität. Unserer oben definierten These folgend, entsprächen diese Zeiträume somit einem hohen bzw. niedrigem öffentlichen Interesse.

### timeline plot mit R

Die Visualisierung eines derartigen Diagramms wurde in der Sprache *R* (RStudio in Version 1.2.1335 unter Lubuntu 18.04) mit Hilfe des Plugins [*timelineS in der Version 0.1.1.*](https://www.rdocumentation.org/packages/timelineS/versions/0.1.1) implementiert. Der kommentierte Quellcode dazu befindet sich im Unterordner [R_timeline_plot](./R_timeline_plot). Als Werte werden die genauen Timestamps der einzelnen Versionen angegeben. Die Label variieren in Ihrer Höhe, um eine bessere Lesbarkeit zu gewährleisten. Als Datenbasis dient der auf das Datum reduzierte [Export der Arbeitsdaten](../01_Quelldaten/20190627_Arbeitsdaten_Populismus_nurDatum.csv) mit allen 1045 Einträgen.

![timeline_plot](20190627_Plot.png)

Im Vergleich zur eingangs verwendeten Grafik lassen sich an diesem Plot Zeiträume mit hoher und niedriger Aktivität exakt bestimmen und abgrenzen. Jeder Eintrag ist, unter Verwendung einer entsprechenden Vergrößerungsstufe, anhand des sekundengenauen Timestamps eindeutig zu bestimmen. Gleichwohl deckt sich der Verlauf in etwa mit der Kurzübersicht. Die Häufung im ersten Drittel findet sich ebenso wieder, wie der aktivitätsarme Bereich im dritten Viertel und der Anstieg am Ende.

### Abgleich mit Referenzzeitraum

Im direkten Vergleich der Wortverlaufskurve aus [Abschnitt "02 Referenzzeitraum"](../02_Referenzzeitraum/) mit dem Versionsverlauf lassen sich tatsächlich Parallelen erkennen.
![Wortverlauf_Populismus_ZEIT](../02_Referenzzeitraum/Wortverlauf_Populismus_ZEIT.png)  
Zwischen 2012 und 2014 ist hier deutlich eine Phase geringer Aktivität zu erkennen, die sich ebenfalls im Plot wiederfindet. Dem folgt eine Phase ansteigender Aktivität, die bis etwa 2017 anhält und anschließend relativ stabil bleibt. Die Begrenzung der Auflösung auf Jahresschritte führt jedoch dazu, dass Häufungen außerhalb dieses Jahresrasters nicht erkannt werden können.
![timeline_plot_2014-2017](./20190627_Plot_2014-2017.png)  
Im feiner aufgelösten Plot ist hier klar eine zusammenhängende Häufung über den Jahreswechsel 2016/2017 zu erkennen (hier blau hinterlegt). Es ist somit geboten, den Untersuchungszeitraum um den Jahresbeginn 2017 zu erweitern, um keinen willkürlichen Schnitt mitten durch eine Phase mit hoher Bearbeitungsrate vorzunehmen.

Die rot unterlegten Bereiche markieren die den Untersuchungszeitraum eingrenzenden Phasen mit geringer Bearbeitungsfrequenz. Die letzte Version vor dem ersten Grenzbereich dient hierbei als Ausgangsversion, da sie den Stand des Lemmas vor den zu untersuchenden Änderungen beschreibt. Sie wird fortan als *V2014* bezeichnet, es handelt sich dabei um die Version vom [2014-03-16T14:09:00Z mit der ID 128563967](https://de.wikipedia.org/w/index.php?title=Populismus&oldid=128563967).
Die letzte Version vor dem zweiten Grenzbereich dient als Vergleichsversion. Sie beinhaltet alle Änderungen des Untersuchungszeitraumes und da ihr eine Phase mit geringer Bearbeitungsfrequenz folgt kann davon ausgegangen werden, dass sie einen unumstrittenen bis temporär abgeschlossenen Zustand repräsentiert. Sie wird fortan als *V2017* bezeichnet, es handelt sich dabei um die Version vom [2017-06-04T18:04:00Z mit der ID 166083456](https://de.wikipedia.org/w/index.php?title=Populismus&oldid=166083456).
Grundlage für die weitere Untersuchung sind die lokalen Kopien der beiden Versionen als Plain HTML.[^1]

V2014: [Populismus_V2014.html](../03_Versionsverlauf/Populismus_V2014.html), 96.1 KB, 5261 Wörter, 400 Zeilen.    
V2017: [Populismus_V2017.html](../03_Versionsverlauf/Populismus_V2017.html), 122 KB, 7951 Wörter, 465 Zeilen.

---

[^1]: Abgerufen am 25.10.2019 via:
```
wget https://de.wikipedia.org/w/index.php?title=Populismus&oldid=128563967
wget https://de.wikipedia.org/w/index.php?title=Populismus&oldid=166083456
```
