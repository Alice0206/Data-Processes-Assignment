library(ggplot2)
library(tidyverse)
library(dplyr)
library(tidyr)
library(wordcloud)
library(RColorBrewer)
# world map
library(maps)
library(mapproj)

# can use relative path
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# read original dataset
artists <- read.csv("artists.csv", header=T, na.strings=c("","NA"))

# variables drop and filter, as well as null and dupliate row process
artists_clean <- artists %>% mutate(
  artist = ifelse(!is.na(artist_lastfm),as.character(artist_lastfm),as.character(artist_mb)),
  country = ifelse(!is.na(country_lastfm),as.character(country_lastfm),as.character(country_mb)),
  tags =  ifelse(!is.na(tags_lastfm),as.character(tags_lastfm),as.character(tags_mb))
) %>%
  select(-c(artist_lastfm,artist_mb,country_lastfm,country_mb,tags_lastfm,tags_mb)) %>%
  na.omit() %>%
  distinct(listeners_lastfm,scrobbles_lastfm,ambiguous_artist,artist,country,tags,.keep_all = TRUE) %>%
  select(-c(ambiguous_artist)) %>% 
  filter(!grepl(";",country))

# percentage of deleted row
#((nrow(artists)-nrow(artists_clean))/nrow(artists))*100
# save as clean dataset
write.csv(artists_clean,"artists_clean.csv", row.names = FALSE)

########=========================================================================================#########

# read clean dataset
dataset <- read.csv(
  "/Users/feynman/Documents/subject/data_processing/project/Data-Processes-Assignment 10.54.30 AM/data/last_fm/artists_clean.csv")

# color setting
pal =rev(colorRampPalette(brewer.pal(9,"BuGn"))(32)[seq(8,32,6)])
pal = brewer.pal(9,"Blues")
# function for word cloud setting and creation
createcloud <- function(data){
        data <- data %>%
             distinct(artist, .keep_all = TRUE) %>%
             arrange(-listeners_lastfm) %>% #popularity
             top_n(100,listeners_lastfm) # TOP100
  # split tags and convert to table(tag,frequency)
  freq <- table(unlist(strsplit(gsub(" ","",as.character(data$tags)),";")))
  # various level of color for word frequency
  pal =rev(colorRampPalette(brewer.pal(9,"Blues"))(32)[seq(8,32,6)])
  # wordcloud setting
  cloud <- wordcloud(words = names(freq), freq = freq, max.words= 200,
                     scale = c(5,.3), 
                     # random.order = F,
                     random.color = F,
                     colors = pal)
}

China <- dataset %>% filter(country == "China") 
China %>% createcloud()

# European Data
european_countries = c(
  "Albania",
  "Andorra",
  "Austria",
  "Belarus",
  "Belgium",
  "Bosnia and Herzegovina",
  "Bulgaria",
  "Croatia",
  "Czech Republic",
  "Denmark",
  "Estonia",
  "Finland",
  "France",
  "Germany",
  "Greece",
  "Holy See",
  "Hungary",
  "Iceland",
  "Ireland",
  "Italy",
  "Latvia",
  "Liechtenstein",
  "Lithuania",
  "Luxembourg",
  "Malta",
  "Moldova",
  "Monaco",
  "Montenegro",
  "Netherlands",
  "North Macedonia",
  "Norway",
  "Poland",
  "Portugal",
  "Romania",
  "Russia",
  "San Marino",
  "Serbia",
  "Slovakia",
  "Slovenia",
  "Spain",
  "Sweden",
  "Switzerland",
  "Ukraine",
  "United Kingdom"
)

# Filter Dataset by European countries
european <- dataset %>% filter(country %in% european_countries)
createcloud(european)




