## 03 Versionsverlauf des Lemmas "Populismus"

Es ist anzunehmen, dass die Entwicklung eines Wikpedia-Lemmas durch eine freiwillige, cooperative[1] Methodik nicht linear, sondern in Phasen abläuft. Insbesondere gesteigertes öffentliches Interesse an einem Begriff dürfte zu mehr definitorischen Anstrengungen und folglich zu mehr Edits führen.

![timeline_facet](openrefine_timeline_facet.png) 

Diese aus OpenRefine erzeugte Kurzübersicht vermittelt einen ersten Eindruck von der Verteilung der Edit-Häufigkeit über den betrachteten Zeitraum hinweg. Diese Visualisierung der Werte ist jedoch stark vereinfacht und dadurch vermittelt deshalb möglicherweise einen falschen Eindruck. Solche Diagramme fassen die einzelnen Datumswerte in definierten Zeiträumen zusammen, sodass die Höhe der einzelnen Balken die Anzahl der darin subsumierten Daten darstellt. Ohne genaue Kenntnis über die Definition dieser Zeiträume und der exakten Werte lässt somit keine valide Auswertung der Verteilung der Edits durchführen.

Für den höchst möglichen Detailgrad müsste jeder einzelne Versionssprung als eigener Wert auf einer Zeitachse eingetragen werden. Werthäufungen entsprächen dort Zeiträumen mit hoher Änderungsaktivität, Bereiche mit wenigen Werten hingegen Zeiträumen mit geringer Änderungsaktivität. Unserer oben definierten These folgend, entsprächen diese Zeiträume somit einem hohen bzw. niedrigem öffentlichen Interesse.

[1]: Siehe ...?

### timeline plot mit R

Die Visualisierung eines derartigen Diagramms wurde mittels R und des Plugins [timelineS in der Version 0.1.1.][https://www.rdocumentation.org/packages/timelineS/versions/0.1.1] implementiert. Der kommentierte Quellcode dazu befindet sich im Unterordner [R_timeline_plot](R_timeline_plot). Als Werte werden die genauen Timestamps der einzelnen Versionen angegeben. Die Label variieren in Ihrer Höhe, um eine bessere Lesbarkeit zu gewährleisten. Als Datenbasis dient der auf das Datum reduzierte Export der Arbeitsdaten mit allen 1045 Einträgen.

![timeline_plot](20190627_Plot.png)

Im Vergleich zur eingangs verwendeten Grafik lassen sich an diesem Plot Zeiträume mit hoher und niedriger Aktivität exakt bestimmen und abgrenzen. Jeder Eintrag ist, unter Verwendung einer entsprechenden Vergrößerungsstufe, anhand des sekundengenauen Timestamps eindeutig zu bestimmen. Gleichwohl deckt sich der Verlauf in etwa mit der Kurzübersicht. Die Häufung im ersten Drittel findet sich ebenso wieder, wie der aktivitätsarme Bereich im dritten Viertel und der Anstieg am Ende.