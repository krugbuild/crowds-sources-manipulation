## 03 Versionsverlauf des Lemmas "Populismus"

Es ist anzunehmen, dass die Entwicklung eines Wikpedia-Lemmas durch eine freiwillige, cooperative[¹] Methodik nicht linear, sondern in Phasen abläuft. Insbesondere gesteigertes öffentliches Interesse an einem Begriff dürfte zu mehr definitorischen Anstrengungen und folglich zu mehr Edits führen.

![timeline_facet](openrefine_timeline_facet.png) 

Diese aus OpenRefine erzeugte Kurzübersicht vermittelt einen ersten Eindruck von der Verteilung der Edit-Häufigkeit über den betrachteten Zeitraum hinweg. Diese Visualisierung der Werte ist jedoch stark vereinfacht und dadurch vermittelt deshalb möglicherweise einen falschen Eindruck. Solche Diagramme fassen die einzelnen Datumswerte in definierten Zeiträumen zusammen, sodass die Höhe der einzelnen Balken die Anzahl der darin subsummierten Daten darstellt. Ohne genaue Kenntnis über die Definition dieser Zeiträume und der exakten Werte lässt somit keine valide Auswertung der Verteilung der Edits durchführen.

### timeline plot mit R

Für den höchst möglichen Detailgrad müsste jeder einzelne Versionssprung als eigener Wert auf einer Zeitachse eingetragen werden. Bereiche mit vielen Werten entsprächen Zeiträumen mit hoher Änderungsaktivität, Zeiträume mit wenigen Werten hingegen Zeiträumen mit geringer Änderungsaktivität. Unserer oben definierten These folgend, entspräche diese Zeiträume somit einem hohen bzw. niedrigem öffentlichen Interesse.

Die Visualisierung dieses Diagramms wurde mittels R und des Plugins "Timeline Plot" implementiert. Der kommentierte Quellcode dazu befindet sich im Unterordner [R_timeline_plot](R_timeline_plot). Als Werte werden die genauen Timestamps der einzelnen Versionen angegeben. Die Label variieren in Ihrer Höhe, um eine bessere Lesbarkeit zu gewährleisten.

![timeline_plot](20190627_Plot.png)

Trotz bzw. Dank der hohen Auflösung lassen sich sofort Zeiträume mit hoher Bearbeitungsdichte von Zeiträumen relativer Ruhe unterscheiden.