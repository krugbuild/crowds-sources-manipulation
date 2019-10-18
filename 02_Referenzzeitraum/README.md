## 02 Ermittlung des Referenzzeitraums

Der Referenzzeitraum wird über eine Wortverlaufskurve ermittelt, welche die Entwicklung der Worthäufigkeit über einen gegebenen Zeitraum innerhalb eines definierten Textkorpus visualisiert. Zum Einsatz kommt hierbei das webbasierte Programm *DStar Time Series* des [Digitalen Wörterbuchs der deutschen Sprache (DWDS)](https://www.dwds.de/).

Als Korpus dient das Archiv der überregionalen Wochenzeitung DIE ZEIT. Die webbasierten Programme des DWDS unterstützen diesen Korpus nativ und DIE ZEIT gilt gemeinhin zu den deutschen Leitmedien. [BELEG] Die Eigenschaften des Zeitkorpus auf dem DWDS Server sind im Dokument [Korpuseigenschaften](/02_Referenzzeitraum/Korpuseigenschaften.md) beschrieben.

### Abfrageparameter

Die Abfrage ist unter folgender [URL](http://kaskade.dwds.de/dstar/zeit/dstar.perl?fmt=hist&pformat=png&q=Populismus&_s=submit&n=date%2Bclass&smooth=none&grid=1&sl=1&w=1&wb=0&pr=0&xr=2000%3A2018&yr=0%3A*&psize=840%2C480+) erreichbar:
`http://kaskade.dwds.de/dstar/zeit/dstar.perl?fmt=hist&pformat=png&q=Populismus&_s=submit&n=date%2Bclass&smooth=none&grid=1&sl=1&w=1&wb=0&pr=0&xr=2000%3A2018&yr=0%3A*&psize=840%2C480+`

Die Suchparameter sind bereits in der URL codiert, sodass eine erneute Abfrage dieser URL das gleiche Ergebnis liefern müsste. (Sofern sich der Zustand des Korpus nicht geändert hat. s.o.) Eine detaillierte Dokumentation aller Parameter und Werte findet sich auf der zugehörigen [Hilfeseite](http://kaskade.dwds.de/dstar/zeit/help-hist.perl) des DWDS.

- `fmt=hist` Anzeige als Verlaufskurve mit Zeitstrahl.
- `pformat=png` Ausgabeformat ist das Pixelformat png.
- `q=Populismus` Definition des Suchbegriffs.
- `n=date%2Bclass` Kategorisierungsmodus nach Datum und Klasse, Standardwert. (Mehr zu den Modi auf der [Hilfeseite](http://kaskade.dwds.de/dstar/zeit/help-hist.perl#details-norm)) 
- `smooth=none` Keine Glättung des Graphen. (Die einzelnen Werte werden mit Geraden verbunden.)
- `grid=1` Anzeige eines Rasters.
- `sl=1` Größe der Slices, also der Teilung der x-Achse, beträgt 1 Jahr. (Kleinstmöglicher Wert.)
- `xr=2000%3A2018` Der Wertebereich der x-Achse ist definiert durch den Erstellungszeitpunkt des Lemmas plus 4 Jahre Vorlauf und die aktuellste Datenreihe des Korpus. (2000 bis 2018)
- `psize=840%2C480` Die Ausgabedimensionen sind auf 840x480 eingestellt.

### Wortverlauf des Begriffs "Populismus" im Korpus der ZEIT

![Wortverlauf des Begriffs "Populismus" im Korpus DIE ZEIT](/02_Referenzzeitraum/Wortverlauf_Populismus_ZEIT.png)

Bemerkenswert ist der steile Anstieg der Worthäufigkeit nach 2014. Im Korpus von 2016 wurde der Begriff Populismus mit fast vierfacher Frequenz gegenüber 2014 erwähnt. Dies deutet auf einen sich intensivierenden Diskurs und erhöhtes öffentliches Interesse hin. Gleichzeitig lässt das große Delta zwischen 2014 und 2016 eine gewisse Begriffsentwicklung erwarten.