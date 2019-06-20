## Forschungsprozessdatenlog
Benutztes System: `Linux 4.15.0-52-generic #56-Ubuntu SMP Tue Jun 4 22:49:08 UTC 2019 x86_64 GNU/Linux`
### Datenbezug
Abruf: 2019-06-06
* Abruf sämtlicher Versionen mittels: ` wget "https://de.wikipedia.org/w/index.php?title=Populismus&offset=&limit=2000000&action=history" ` ([lokale Kopie](https://github.com/krugbuild/wiki-pop-quelle/blob/master/div/20190606_Quelldatei_Populismus.html))
* Abgleich des Versionsinventars der lokalen Kopie mit Wikipedia Versionsgeschichte: Aktuelle version bei beiden 02:26, 2. Jun. 2019‎ - erste Version bei beiden 14:08, 4. Mär. 2004‎ 
* encoding auf UTF-8 gesetzt, führende und folgende Inhalte abseits der Versionsliste (markiert durch HTML-Liste `<ul>`) entfernt ([lokale Kopie](https://github.com/krugbuild/wiki-pop-quelle/blob/master/div/20190606_Quelldatei_Populismus_reduziert))
* import in OpenRefine als Line-based text files
### Datenmanipulationen in OpenRefine 3.2 beta
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
					
## Technisches Prozesslog aus OpenRefine 3.2 beta

	Split 1044 cell(s) in column Column 1 into several columns by separator
	Split 1044 cell(s) in column Column 1 2 into several columns by separator
	Rename column Column 1 2 1 to Date
	Remove column Column 1 2
	Remove column Column 1 1
	Remove column Column 1 2 2
	Split 1044 cell(s) in column Column 1 into several columns by separator
	Split 1044 cell(s) in column Column 1 2 into several columns by separator
	Remove column Column 1 2
	Remove column Column 1 1
	Remove column Column 1 2 2
	Split 1044 cell(s) in column Column 1 into several columns by separator
	Split 1044 cell(s) in column Column 1 2 into several columns by separator
	Rename column Column 1 2 2 to ID
	Remove column Column 1 2
	Remove column Column 1 1
	Remove column Column 1 2 3
	Remove column Column 1 3
	Remove column Column 1 4
	Rename column Column 1 2 1 to Benutzer
	Create new column kleine Änderung based on column Column 1 by filling 1044 rows with grel:if(contains(value,'<abbr class="minoredit"'),'k','')
	Move column kleine Änderung to position 4
	Split 1044 cell(s) in column Column 1 into several columns by separator
	Split 1044 cell(s) in column Column 1 2 into several columns by separator
	Rename column Column 1 2 1 to Größe in Bytes
	Remove column Column 1 2
	Remove column Column 1 2 2
	Remove column Column 1 1
	Move column Größe in Bytes to position 5
	Split 1044 cell(s) in column Column 1 into several columns by separator
	Text transform on 177 cells in column Column 1 2: grel:replace(value, '</strong>','')
	Text transform on 1044 cells in column Column 1 2: grel:replace(value, '</span>','')
	Split 1044 cell(s) in column Column 1 2 into several columns by separator
	Remove column Column 1 2 2
	Rename column Column 1 2 1 to Größenänderung in Bytes
	Move column Größenänderung in Bytes to position 8
	Remove column Column 1 2
	Remove column Column 1 1
	Split 1044 cell(s) in column Column 1 into several columns by separator
	Split 919 cell(s) in column Column 1 2 into several columns by separator
	Text transform on 497 cells in column Column 1 2 1: grel:replace(value,'<span dir="auto"><span class="autocomment">','')
	Text transform on 658 cells in column Column 1 2 1: grel:replace(value,'</a>','')
	Remove column Column 1 2 2
	Text transform on 497 cells in column Column 1 2 1: grel:replace(value,'</span>','')
	Text transform on 658 cells in column Column 1 2 1: grel:slice(value,indexOf(value,'>')+1)
	Text transform on 44 cells in column Column 1 2 1: grel:replace(value,'&quot;','"')
	Text transform on 1 cells in column Column 1 2 1: grel:replace(value,'&#91;','[')
	Text transform on 5 cells in column Column 1 2 1: grel:replace(value,'&gt;','>')
	Text transform on 3 cells in column Column 1 2 1: grel:replace(value,'&#039;','\'')
	Rename column Column 1 2 1 to Kommentar
	Move column Kommentar to position 9
	Remove column Column 1 2
	Remove column Column 1 1
	Text transform on 1 cells in column Kommentar: grel:replace(value,'&lt;','<')
	Split 1044 cell(s) in column Date into several columns by separator
	Rename column Date to Date&Time
	Rename column Date 1 to Time
	Rename column Date 2 to Date
	Text transform on 1044 cells in column Date: value.trim()
	Text transform on 0 cells in column Time: value.trim()
	Text transform on 0 cells in column Date: value.toDate()
	Text transform on 0 cells in column Date: value.toDate()
	Text transform on 1044 cells in column Date: grel:value.replace('Jan', '01').replace('Feb','02').replace('Mär', '03').replace('Apr', '04').replace('Mai', '05.').replace('Jun', '06').replace('Jul','07').replace('Aug', '08').replace('Sep','09').replace('Okt', '10').replace('Nov','11').replace('Dez', '12').replace(' ','')
	Text transform on 0 cells in column Date&Time: value.trim()
	Text transform on 1044 cells in column Date&Time: grel:value.replace('Jan', '01').replace('Feb','02').replace('Mär', '03').replace('Apr', '04').replace('Mai', '05.').replace('Jun', '06').replace('Jul','07').replace('Aug', '08').replace('Sep','09').replace('Okt', '10').replace('Nov','11').replace('Dez', '12').replace(' ','')
	Text transform on 1044 cells in column Date&Time: grel:value.toDate('H:m,d.M.y')

## Verworfene Ansätze
20190606
* Abruf sämtlicher Versionen über URL-Import in OpenRefine, URL: "https://de.wikipedia.org/w/index.php?title=Populismus&offset=&limit=2000000&action=history"
	* Einlesen der HTML als XML, als erstes Element wurde die erste Version (erstes `<li>`-tag) gewählt
	* Abgleich des Versionsinventars der lokalen Kopie mit Wikipedia Versionsgeschichte: Aktuelle Version bei beiden 02:26, 2. Jun. 2019‎ - erste Version bei beiden 14:08, 4. Mär. 2004‎ 
