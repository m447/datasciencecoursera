pollutantmean <- function(directory, pollutant, id = 1:332) {
        list_ <- list.files(getwd(), full.names=TRUE)
        dat <- data.frame()
        
        for(i in id)
        {
                dat <- rbind(dat, read.csv(list_[i]))
        }
        
        mean_data <- mean(dat[,pollutant], na.rm = TRUE)
        round(mean_data, digits=6)
}

print(R.version.string)
## [1] "R version 3.4.1 (2017-06-30)"

pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064128

pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706047

pollutantmean("specdata", "nitrate", 23)
## [1] 1.280833