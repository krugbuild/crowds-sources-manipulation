## 02 Ermittlung des Referenzzeitraums

| [**zurück zur Übersicht**](../README.md) |

Der Referenzzeitraum wird über eine Wortverlaufskurve ermittelt, welche die Entwicklung der Worthäufigkeit über einen gegebenen Zeitraum innerhalb eines definierten Textkorpus visualisiert. Zum Einsatz kommt hierbei das webbasierte Programm *DStar Time Series* des [Digitalen Wörterbuchs der deutschen Sprache (DWDS)](https://www.dwds.de/).

Als Textkorpus dient das Archiv der überregionalen Wochenzeitung DIE ZEIT, welches von den webbasierten Programme des DWDS nativ unterstützt wird. Die Parameter des Zeitkorpus auf dem DWDS Server zum Zeitpunkt der Untersuchung wurden im Dokument [Korpuseigenschaften](./Korpuseigenschaften.md) festgehalten.

### Abfrageparameter

Die Abfrage ist unter folgender [URL](https://kaskade.dwds.de/dstar/zeit/dstar.perl?fmt=hist&pformat=png&q=Populismus&_s=submit&n=date%2Bclass&smooth=none&grid=1&sl=1&w=1&wb=0&pr=0&xr=2000%3A2018&yr=0%3A*&psize=840%2C480+) erreichbar:
`http://kaskade.dwds.de/dstar/zeit/dstar.perl?fmt=hist&pformat=png&q=Populismus&_s=submit&n=date%2Bclass&smooth=none&grid=1&sl=1&w=1&wb=0&pr=0&xr=2000%3A2018&yr=0%3A*&psize=840%2C480+`

Die Suchparameter sind bereits in der URL codiert, sodass eine erneute Abfrage dieser URL das gleiche Ergebnis liefern müsste. (Sofern sich der Zustand des Korpus nicht geändert hat. s.o.) Eine detaillierte Dokumentation aller Parameter und Werte findet sich auf der zugehörigen [Hilfeseite](https://kaskade.dwds.de/dstar/zeit/help-hist.perl) des DWDS.

- `fmt=hist` Anzeige als Verlaufskurve mit Zeitstrahl.
- `pformat=png` Ausgabeformat ist das Pixelformat png.
- `q=Populismus` Definition des Suchbegriffs.
- `n=date%2Bclass` Kategorisierungsmodus nach Datum und Klasse, Standardwert. (Mehr zu den Modi auf der [Hilfeseite](https://kaskade.dwds.de/dstar/zeit/help-hist.perl#details-norm)) 
- `smooth=none` Keine Glättung des Graphen. (Die einzelnen Werte werden mit Geraden verbunden.)
- `grid=1` Anzeige eines Rasters.
- `sl=1` Größe der Slices, also der Teilung der x-Achse, beträgt 1 Jahr. Dies ist kleinstmögliche Wert für eine höchst mögliche Präzision.
- `xr=2000%3A2018` Der Wertebereich der x-Achse ist definiert durch den Erstellungszeitpunkt des Lemmas mit einem Vorlauf von vier Jahren, sowie der aktuellste Datenreihe des Korpus. Der Vorlauf dient dazu, Trends und Anomalien leichter identifizieren zu können.
- `psize=840%2C480` Die Dimensionen der grafischen Ausgabe betragen 840x480 Pixel.

### Wortverlauf des Begriffs "Populismus" im Korpus der ZEIT

![Wortverlauf des Begriffs "Populismus" im Korpus DIE ZEIT](./Wortverlauf_Populismus_ZEIT.png)

Bemerkenswert ist der steile Anstieg der Worthäufigkeit nach 2014. In der Datenreihe von 2016 wurde der Begriff Populismus mit fast vierfacher Frequenz gegenüber 2014 erwähnt. Dies deutet auf einen sich intensivierenden Diskurs und erhöhtes öffentliches Interesse hin. Es liegt nahe, diese Entwicklung auf die sogenannte *Flüchtlingskrise* zurückzuführen, deren Hochphase sich weitestgehend mit dem ermittelten Untersuchungszeitraum deckt. Zur Einordnung dienen hierbei die Zahlen der Asylanträge, veröffentlicht vom statistischen Amt der Europäischen Union.

![EUROSTAT (2017)](./1024px-Zahl_der_Erstanträge_auf_Asyl_(Eurostat).svg.png)*Anzahl der Asylanträge in der EU insgesamt*[^1] 

In Anbetracht des signifikanten Frequenzanstiegs in der Berichterstattung und des historischen Kontextes ist davon auszugehen, dass der Begriff *Populismus* eine gewisse Entwicklung erfahren hat.

[^1]: Eurostat (2017): Anzahl der Asylanträge in der EU insgesamt (Schwarzweißer Graph) und von 9 europäschen Ländern (nicht alle Mitgl. EU). Zuordnung zu den farbigen Flächen von unten nach oben: D F GB IT GR ES SE AU CH, o. D., Own work - Zahlen: Eurostat [1] & Übersicht [2]. Online: <[https://commons.wikimedia.org/wiki/File:Zahl_der_Erstantr%C3%A4ge_auf_Asyl_(Eurostat).svg](https://commons.wikimedia.org/wiki/File:Zahl_der_Erstanträge_auf_Asyl_(Eurostat).svg)>, Stand: 18.11.2019.  

---

### Methodische Erkenntnisse

Die Wortverlaufsanalyse des DWDS lässt als kleinstmögliche Teilung der x-Achse nur Jahresschritte zu. Für eine genauere Analyse der Berichterstattung wäre eine feinere Teilung sicher von Vorteil, auch wenn die Varianzen in den einzelnen Korpora je Monat, Woche oder gar Tag möglicherweise drastisch ansteigen würden. Dies könnte jedoch durch die Nutzung der bereits implementierten Glättungsverfahren ausgeglichen werden.
