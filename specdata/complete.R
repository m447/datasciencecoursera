complete <- function(directory, id = 1:332) {
        nobs <- function(id) {
                path <- file.path(getwd(), paste(sprintf("%03d", as.numeric(id)), ".csv", sep=""))
                return (sum(complete.cases(read.csv(path))))
        }
    return (data.frame(id=id, nobs=sapply(id, nobs)))
}

complete("specdata", 1)
##  id nobs
##1  1  117

complete("specdata", c(2, 4, 8, 10, 12))
##  id nobs
##1  2 1041
##2  4  474
##3  8  192
##4 10  148
##5 12   96

complete("specdata", 30:25)
##  id nobs
##1 30  932
##2 29  711
##3 28  475
##4 27  338
##5 26  586
##6 25  463

complete("specdata", 3)
##  id nobs
##1  3  243