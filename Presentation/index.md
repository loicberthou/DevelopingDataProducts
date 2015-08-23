---
title       : Coursera Developing Data Products Class - Final Project 
subtitle    : Regression Modeling study
author      : Loïc BERTHOU
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

- This Shiny application is inspired by the final project of the Regression Modeling class.
- The data is taken from the **mtcars** dataset in the package **datasets**.
- The objective is to demonstrate the choice of model for the MPG.

## The models

### Model 1: lm(mpg ~ wt + factor(am), data=mtcars)
Selecting the two most influential factors.

### Model 2: lm(mpg ~ wt * factor(am), data=mtcars)
Selecting the two most influential factors with their concurrent interraction.

### Model 3: lm(mpg ~ wt * factor(am) + qsec, data=mtcars)
Adding the qsec factor.

---

## Model 1

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 

---

## Model 2

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 

---

## Model 3

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png) 
