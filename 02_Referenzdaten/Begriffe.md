### Corpus-Statistik-Tool

http://odo.dwds.de/~moocow/software/ddc/querydoc.html

1. norm (normalize): Categorization mode for selecting frequency-per-million scaling coefficient.
To facilitate comparability of plotted values across (sub)corpora of varying size, raw epoch frequency counts may be scaled to frequency-per-million-tokens values by a simple linear projection as requested by the norm parameter.

1.1 none (absolute values): do not normalize at all, but operate on raw absolute frequency counts
  
1.2 corpus: normalize corpus-globally (over all date intervals and text-classes)
  
1.3 data (slice): normalize by date interval only (over all text-classes)
  
1.4 class (genre): normalize by text-class only (over all dates)
  
1.5 data+class (default): normalize by date interval and text-class

2. wbase: Inverse-distance smoothing base (real number B) for weighted moving-average smoothing.

3. psize: gnuplot output image size WIDTH,HEIGHT (in pixels). 

4. logavg: If true (nonzero), moving averages will be computed on a logarithmic scale.

5. gaps: If true (nonzero), displays a grand-average curve with pseudo-class "Gesamt" in addition to the curves for individual text classes. 

---
### DiaCollo

http://kaskade.dwds.de/dstar/zeit/diacollo/help.perl#scores

1. Details

w1	: target token matching the user query request

w2	: collocate token matching the user groupby request

N	: total number of collocation relations in the corpus epoch

f12	: frequency of the collocation (w1,w2)

f1	: total frequency of the query term (w1) in the selected profile type

f2	: total frequency of the collocate term (w2) in the selected profile type
