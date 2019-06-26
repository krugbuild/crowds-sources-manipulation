### Corpus-Statistik-Tool

norm (normalize): Categorization mode for selecting frequency-per-million scaling coefficient.
To facilitate comparability of plotted values across (sub)corpora of varying size, raw epoch frequency counts may be scaled to frequency-per-million-tokens values by a simple linear projection as requested by the norm parameter.

  none (absolute values): do not normalize at all, but operate on raw absolute frequency counts
  
  corpus: normalize corpus-globally (over all date intervals and text-classes)
  
  data (slice): normalize by date interval only (over all text-classes)
  
  class (genre): normalize by text-class only (over all dates)
  
  data+class (default): normalize by date interval and text-class

wbase: Inverse-distance smoothing base (real number B) for weighted moving-average smoothing.

psize: gnuplot output image size WIDTH,HEIGHT (in pixels). 

logavg: If true (nonzero), moving averages will be computed on a logarithmic scale.

gaps: If true (nonzero), displays a grand-average curve with pseudo-class "Gesamt" in addition to the curves for individual text classes. 

---
### DiaCollo

