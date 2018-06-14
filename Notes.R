## Ex 1.
## This exercise will give you a chance to
## learn the R / Rstudio interface
##
## 1. Add 2 and 2
2 + 2

## 2. Calculate the square root of 10
sqrt(10)

## 3. Find R documentation "An introduction to R"
# install.packages("curl")
library(curl)
url <- "https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf"
curl_download(url=url, dest="~/Desktop/R-intro.pdf")


