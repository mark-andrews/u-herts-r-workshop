# Introduction to R workshop. University of Hertfordshire. July 15-16, 2019

The slides for Part 1 are [here](R-workshop-part-1.pdf). The slides for Part 2 are [here](R-workshop-part-2.pdf). All required data files are in the `data` directory, but all data frames are available as an [data Rda file](data/workshop_data.Rda).

For Part 1, the only required R package is `tidyverse` (which is a package of packages). For Part 2, you need the R packages `reghelper`, `car`, `lme4`, and `brms` (which requires `rstan`, see next section).

## Installing (r)stan

Stan is a probabilistic programming language. Using the Stan language, you can define arbitrary probabilistic models and then perform Bayesian inference on them using MCMC, specifically using Hamiltonian Monte Carlo.

In general, Stan is a external program to R; it does not need to be used with R. However, one of the most common ways of using Stan is by using it through R and that is what we will be doing in this workshop.

To use Stan with R, you need to install an R package called `rstan` see https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started.



## Installing brms

If the installation of R, Rstudio and Stan seemed to go fine, you can get the `brms` R package, which makes 
using Stan with R particularly easy when using conventional models.

To get brms_, first start Rstudio (whether on Windows, Macs, Linux) and then run

```r
        install.packages('brms')
```

You can test the installation of brms_ with 

```r
        library('brms')
```

If no errors are raised, you can assume the installation was successful.

