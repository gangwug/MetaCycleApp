This repository contains a web application for MetaCycle. 

## Introduction
MetaCycle is an R package for evaluating periodicity in large scale time-series datasets. To see more information about MetaCycle, please visit its location in [CRAN](https://cran.r-project.org/web/packages/MetaCycle/index.html) or [GitHub](https://github.com/gangwug/MetaCycle). For facilitating using MetaCycle, a web application for its **meta2d** function has been prepared based on [shiny](http://shiny.rstudio.com) package. For successfully running this web application, R (≥ 3.0.2) is required. 

## Usage
```r
# install 'shiny' package (if 'shiny' is not installed yet)
install.packages("shiny")
# load 'shiny' package
library(shiny)

# the easy way to run this web application 
runGitHub("MetaCycleApp", "gangwug")

# Or you can download 'ui.R' and 'server.R' from this page, and place these two files into an directory named 'MetaCycleApp'. 
# Then set 'MetaCycleApp' as your working directory (see more introduction about working directory-http://shiny.rstudio.com/tutorial/quiz/). 
# Now you can launch this app in R with the below commands.
runApp("MetaCycleApp")

```
