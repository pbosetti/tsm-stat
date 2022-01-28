# Corso di R e RStudio per TSM

Questa repo contiene la documentazione e il materiale sviluppato da Paolo Bosetti per il corso di R e RStudio organizzato per [Trento School of Management](http://www.tsm.tn.it) nel Gennaio del 2022.

Il materiale è organizzato in notebook RStudio utilizzati per generare documenti in formato pdf:

1. Richiami di statistica, slide statiche qui non disponibili
2. L’ambiente RStudio, [0-RIntro.pdf](https://github.com/pbosetti/tsm-stat/raw/master/0-RIntro.pdf)
3. Il linguaggio R, [0-RIntro.pdf](https://github.com/pbosetti/tsm-stat/raw/master/0-RIntro.pdf)
4. Statistica base in R, [1-statistics.pdf](https://github.com/pbosetti/tsm-stat/raw/master/1-statistics.pdf)
5. Modelli di regressione lineare e lineare generalizzata, [2-reglin.pdf](https://github.com/pbosetti/tsm-stat/raw/master/2-reglin.pdf)
6. Serie temporali e modelli ARIMA, [3-ARIMA.pdf](https://github.com/pbosetti/tsm-stat/raw/master/3-ARIMA.pdf)
7. Tidyverse, 4h [4-tidy.pdf](https://github.com/pbosetti/tsm-stat/raw/master/4-tidy.pdf)
8. Mappe e GIS, 3h [5-maps.pdf](https://github.com/pbosetti/tsm-stat/raw/master/5-maps.pdf)

# Note per ambiente Windows

Alcune (poche) librerie di R sono disponibili in formato sorgente e devono essere compilate durante l'installazione. 
In ambiente Windows è quindi necessario installare `Rtools`: le istruzioni si trovano su [https://cran.r-project.org/bin/windows/Rtools/rtools40.html](https://cran.r-project.org/bin/windows/Rtools/rtools40.html). Quest'installazione mette a disposizione un'ambiente di compilazione UNIX-like adatto alla compilazione automatica delle librerie disponibili solo in formato sorgente.

Una volta installato `Rtools` **non è necessario** seguire le istruzioni indicate sul sito per configurare la variabile `PATH`, lo fa già l'installer.

## Mappe tematiche

Si noti che, in particolare, la libreria `tmap` utilizzata nella parte 5 per creare mappe tematiche richiede la versione più recente della libreria `terra`, che è disponibile solo in formato sorgente. Quindi, prima di installare `tmap` è necessario installare `Rtools` (vedi sopra) e compilare `terra` dalla console R:

````r
install.packages("terra", type = "source")
````

Inoltre, la libreria `spDataLarge` non è disponibile sulle repository CRAN, e va installata con il seguente comando in console R:

```r
install.packages("spDataLarge", repos = "https://geocompr.r-universe.dev")
```


# Autore

Paolo Bosetti, Dipartimento di Ingegneria Industriale, Università di Trento


# Licenza

Il contenuto di questo progetto è fornito in accordo alla licenza [Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

![](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)
