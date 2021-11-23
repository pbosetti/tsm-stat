Introduzione a R e RStudio
========================================================
author: Paolo Bosetti
date: Dicembre 2021
autosize: true

Per Trento School of Management

![TSM](https://www.tsm.tn.it/fileadmin/2019/templates/images/logo-scritta-r-w.svg)

Contenuti del corso
========================================================

- L'ambiente RStudio
- Il linguaggio R
- Statistica descrittiva
- Statistica inferenziale
- Modelli di regressione lineare e lineare generalizzata
- Serie temporali e modelli ARIMA

*Questa presentazione è realizzata in RStudio e sarà disponibile con il resto del materiale su github: <https://support.rstudio.com/hc/en-us/articles/200486468>.*


Slide With Code
========================================================


```r
summary(cars)
```

```
     speed           dist       
 Min.   : 4.0   Min.   :  2.00  
 1st Qu.:12.0   1st Qu.: 26.00  
 Median :15.0   Median : 36.00  
 Mean   :15.4   Mean   : 42.98  
 3rd Qu.:19.0   3rd Qu.: 56.00  
 Max.   :25.0   Max.   :120.00  
```

Slide With Plot
========================================================
title: true


```r
plot(cars)
```

![plot of chunk unnamed-chunk-2](Presentazione-figure/unnamed-chunk-2-1.png)
***

```r
plot(cars, typ="b")
```

![plot of chunk unnamed-chunk-3](Presentazione-figure/unnamed-chunk-3-1.png)
