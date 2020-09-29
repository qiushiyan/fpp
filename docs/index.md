--- 
title: 'Notes for "Forecasting: Principles and Practice, 3rd edition"'
author: "Qiushi Yan"
date: "2020-09-29"
site: bookdown::bookdown_site
documentclass: book
bibliography: [references.bib, packages.bib]
biblio-style: apalike
link-citations: yes
github-repo: enixam/fpp
nocite: '@*'
description: '"Reproducing "Forecasting: Principles and Practice, 3rd edition"'
---

# Preface {-}

This project contains my learning notes and code for [*Forecasting: Principles and Practice, 3rd edition*](https://otexts.com/fpp3/). My solutions to its exercises can be found at https://qiushi.rbind.io/fpp-exercises

Other references include:   

- [*Applied Time Series Analysis for Fisheries and Environmental Sciences*](https://nwfsc-timeseries.github.io/atsa-labs/)    

- Kirchgässner, G., Wolters, J., & Hassler, U. (2012). *Introduction to modern time series analysis*. Springer Science & Business Media.

- a video tutorial on time series concepts presented in this [youtube watchlist](https://www.youtube.com/playlist?list=PLvcbYUQ5t0UHOLnBzl46_Q6QKtFgfMGc3) by [ritvikmath](https://www.youtube.com/channel/UCUcpVoi5KkJmnE3bvEhHR0Q)  

- also a video tutorial on [econometrics](https://www.youtube.com/playlist?list=PLwJRxp3blEvb7P-7po9AxuBwquPv75LjU) presented by [Ben Lambert](https://www.youtube.com/channel/UC3tFZR3eL1bDY8CqZDOQh-w)

- an [online course](https://online.stat.psu.edu/stat510) offered by the Department of Statistics at PennState   

My contributions include  

- More supplementary mathematical proofs: they are not hard assuming introductory level statistics knowledge, but skimmed in the book

- An additional chapter separating basic concepts of univariate processes from ARIMA models, so that Chapter \@ref(arima-models) will not be too verbose  

- Up-to-date `tidyverse` code: for example `gather()` use cases are changed into `pivot_longer()`

I will continue to add new topics as I learn new things related to time series modelling. 

`tidyverse` is assumed to be loaded before each chapter.


```r
library(tidyverse)
```
