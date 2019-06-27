## lib doc siehe https://www.rdocumentation.org/packages/timelineS/versions/0.1.1
library(timelineS)

## reduziertes csv als dataframe laden
## NB erste Spalte muss Werte für die Label, zweite Spalte muss Werte für Dates enthalten
df <- read.csv('/home/op/Documents/Studium/FS4/UE Begriffsgeschichte 2.0/wiki-pop-quelle/div/20190627_Populismus_refined_twoCol.csv')

## Typisierung erzwingen
df[, 1] <- as.character(df[,1])
df[, 2] <- as.Date(as.character(df[,2]))

## Plot definieren, Labels vertikal und alternierend angeordnet
timelineS(df, main = 'Versionen des Artikels Populismus', buffer.days = 1,label.length = c(0.1,0.8,0.2,0.7,0.3,0.6,0.4,0.5), line.width = 5, scale.cex = "2.5", label.direction = "up", label.angle = "90", label.position = 4, scale = "year")


