## Forschungsprozessdatenlog
### Datenbezug
Abruf: 20190606
* Abruf sämtlicher Versionen mittels: ` wget "https://de.wikipedia.org/w/index.php?title=Populismus&offset=&limit=2000000&action=history" `
* Abgleich des Versionsinventars der lokalen Kopie mit Wikipedia Versionsgeschichte: Aktuelle version bei beiden 02:26, 2. Jun. 2019‎ - erste Version bei beiden 14:08, 4. Mär. 2004‎ 
* encoding auf UTF-8 gesetzt, führende und folgende Inhalte abseits der Versionsliste (markiert durch HTML-Liste `<ul>`) entfernt
* import in OpenRefine als Line-based text files
### Datenmanipulationen in OpenRefine
#### Datum freistellen
* split column via separator: `class="mw-changeslist-date" title="Populismus">`
* split new column via separator: `</a>‎ <span class='history-user'>`
#### Benutzer freistellen
* split column via separator: `<bdi>`
* split column via separator: `</bdi>`
#### ID freistellen
* split column via separator: `oldid=`
* split column via separator: `" title="`
#### Kennzeichen kleine Änderung 
* generate new column: `if(contains(value,'<abbr class="minoredit"'),'k','')`
#### Größe freistellen
* split column via separator: `<span class="history-size mw-diff-bytes">`
* split column via separator: `Bytes</span>`
### div freistellen
* split coliumn via separator: `Bytes nach der Änderung">`
* replace closing strong and span tag via text transformation: 
	* `replace(value, '</strong>','')`
	* `replace(value, '</span>','')`
* split coliumn via separator: `<span class="mw-changeslist-separator">`
#### Kommentar freistellen
* split column via separator: `<span class="comment comment--without-parentheses">`
* split column via separator: `</span> <span class="mw-changeslist-links">`
* transformations:
	* `replace(value,'<span dir="auto"><span class="autocomment">','')`
	* `replace(value,'</a></span>','')`
	* `replace(value,'</span>','')`
	* `slice(value,indexOf(value,'>')+1)`
#### Steuerzeichen auflösen
* `replace(value,'&quot;','"')`
* `replace(value,'&#91;','[')`
* `replace(value,'&gt;','>')`
* `replace(value,'&#039;','\'')`
* `replace(value,'&lt;','<')`
#### Datum vereinheitlichen
* split column via separator: `,`
* `value.replace('Jan', '01').replace('Feb','02').replace('Mär', '03').replace('Apr', '04').replace('Mai', '05.').replace('Jun', '06').replace('Jul','07').replace('Aug','08').replace('Sep','09').replace('Okt', '10').replace('Nov','11').replace('Dez', '12').replace(' ','')`
					

## Verworfene Ansätze
20190606
* Abruf sämtlicher Versionen über URL-Import in OpenRefine, URL: "https://de.wikipedia.org/w/index.php?title=Populismus&offset=&limit=2000000&action=history"
	* Einlesen der HTML als XML, als erstes Element wurde die erste Version (erstes `<li>`-tag) gewählt
	* Abgleich des Versionsinventars der lokalen Kopie mit Wikipedia Versionsgeschichte: Aktuelle Version bei beiden 02:26, 2. Jun. 2019‎ - erste Version bei beiden 14:08, 4. Mär. 2004‎ 