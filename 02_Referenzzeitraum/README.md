## 02 Ermittlung des Referenzzeitraums

Der Referenzzeitraum wird über eine Wortverlaufskurve ermittelt, welche die Entwicklung der Worthäufigkeit über einen gegebenen Zeitraum innerhalb eines definierten Textkorpus visualisiert. Zum Einsatz kommt hierbei das webbasierte Programm *DStar Time Series* des [Digitalen Wörterbuchs der deutschen Sprache (DWDS)](https://www.dwds.de/).

Als Korpus dient das Archiv der überregionalen Wochenzeitung DIE ZEIT. Die webbasierten Programme des DWDS unterstützen diesen Korpus nativ und DIE ZEIT gilt gemeinhin zu den deutschen Leitmedien. [BELEG] Die Eigenschaften des Zeitkorpus auf dem DWDS Server sind im Dokument [Korpuseigenschaften](/02_Referenzzeitraum/Korpuseigenschaften.md) beschrieben.

### Abfrageparameter

Die Abfrage ist unter folgender [URL](http://kaskade.dwds.de/dstar/zeit/dstar.perl?fmt=hist&pformat=png&q=Populismus&_s=submit&n=date%2Bclass&smooth=none&grid=1&sl=1&w=1&wb=0&pr=0&xr=2000%3A2018&yr=0%3A*&psize=840%2C480+) erreichbar:
`http://kaskade.dwds.de/dstar/zeit/dstar.perl?fmt=hist&pformat=png&q=Populismus&_s=submit&n=date%2Bclass&smooth=none&grid=1&sl=1&w=1&wb=0&pr=0&xr=2000%3A2018&yr=0%3A*&psize=840%2C480+`

In der URL codiert, finden sich die Suchparameter definiert. Eine detaillierte Dokumentation aller Parameter findet sich auf der zugehörigen [Hilfeseite](http://kaskade.dwds.de/dstar/zeit/help-hist.perl) des DWDS. Der früheste Zeitpunkt der Betrachtung ist durch das Alter des Lemmas vorgegeben, das erst 200? erstellt wurde.

- ´fmt=hist´ 
- ´pformat=png´ Als Ausgabeformat wurde das Pixelformat png gewählt, um eine einfache Einbindung in Dokumente wie dieses zu ermöglichen. 
- q=Populismus
- _s=submit
n=date%2Bclass
smooth=none
grid=1
sl=1
w=1
wb=0
pr=0
xr=2000%3A2018
yr=0%3A*&psize=840%2C480+

### Wortverlauf des Begriffs "Populismus" im Korpus der ZEIT

![Wortverlauf des Begriffs "Populismus" im Korpus DIE ZEIT](/02_Referenzzeitraum/Wortverlauf_Populismus_ZEIT.png)

Bemerkenswert ist der steile Anstieg der Worthäufigkeit nach 2014. Im Korpus von 2016 wurde der Begriff Populismus mit fast vierfacher Frequenz gegenüber 2014 erwähnt. Dies deutet auf einen sich intensivierenden Diskurs und erhöhtes öffentliches Interesse hin. Gleichzeitig lässt das große Delta zwischen 2014 und 2016 eine gewisse Begriffsentwicklung erwarten.
