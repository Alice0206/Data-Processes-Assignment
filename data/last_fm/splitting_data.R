setwd("C:/Users/giorg/Data-Processes-Assignment/Data/last_fm")
artists <- read.csv("artists.csv", header=T, na.strings=c("","NA"))

start <- 1
half <- nrow(artists)/2
end <- nrow(artists)

## splititng data for upload on github
first_artists <- sample(artists[start:half,])  
second_artists <- sample(artists[(half+1):end,])

write.csv(first_artists,"first_artists.csv", row.names = FALSE)
write.csv(second_artists,"second_artists.csv", row.names = FALSE)