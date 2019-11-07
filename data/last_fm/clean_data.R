##read original dataset
first_artists <- read.csv("artists.csv", header=T, na.strings=c("","NA"))
second_artists <-  read.csv("artists.csv", header=T, na.strings=c("","NA"))
  
artists

artists_clean <- artists %>% mutate(
  artist = ifelse(!is.na(artist_lastfm),as.character(artist_lastfm),as.character(artist_mb)),
  country = ifelse(!is.na(country_lastfm),as.character(country_lastfm),as.character(country_mb)),
  tags =  ifelse(!is.na(tags_lastfm),as.character(tags_lastfm),as.character(tags_mb))
  ) %>%
  select(-c(artist_lastfm,artist_mb,country_lastfm,country_mb,tags_lastfm,tags_mb)) %>%
  na.omit() %>%
  distinct(listeners_lastfm,scrobbles_lastfm,ambiguous_artist,artist,country,tags,.keep_all = TRUE) %>%
  select(-c(ambiguous_artist))

##percentage of deleted row
((nrow(artists)-nrow(artists_clean))/nrow(artists))*100

write.csv(artists_clean,"artists_clean.csv", row.names = FALSE)
