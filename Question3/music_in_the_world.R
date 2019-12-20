## load library
library(stringi)
library(spotifyr)
library(dplyr)
library(maps)
library(ggplot2)
library(ggmap)
library(countrycode)
library(gridExtra)

setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# id spotify track 
data <- data %>%
  mutate(id=substr(URL,32,nchar(as.character(URL)))) %>%
  select(-c(URL))

Sys.setenv(SPOTIFY_CLIENT_ID = '6635880d82ff496e99f9988d6cd11966')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'ab0100aa778845a197ae438886345e52')

access_token <- get_spotify_access_token()


# I have to do a loop, because spotifyr doesn't consent to make
# more than 100 requests in one time
end=nrow(data)
data_final <- data[0,]
i=1
while(i<end){
  tmp <- data[i:(i+99),] %>% 
  mutate(danceability=(get_track_audio_features(id)$danceability),
         energy=(get_track_audio_features(id)$energy),
         valence=(get_track_audio_features(id)$valence),
         tempo=(get_track_audio_features(id)$tempo))
  
  print((i/end)*100)
  data_final <- rbind(data_final,tmp)
  i=i+100
}

# calculate the mean of the features per country
data_final <- data_final %>%
  group_by(country) %>%
  filter(country!="global") %>%
  summarise(danceability = mean(danceability),
            energy=mean(energy),
            valence=mean(valence),
            tempo=mean(tempo))
  

View(data_final)
# world map data
WorldData <- map_data('world') %>% filter(region != "Antarctica") %>% fortify
View(WorldData)

# default layer with all region white, as background
default_layer <- geom_map(dat=WorldData, map = WorldData, 
    aes(map_id=region), fill="white", color="white") 

my_scale <- scale_fill_viridis_c(option = "C") 

my_theme <- theme(panel.grid = element_blank(),
                  axis.title = element_blank(),
                  axis.text = element_blank(),
                  axis.ticks = element_blank())

plot_dancebility <- ggplot(data_final, aes(map_id = country)) +
  default_layer +
  geom_map(aes(fill = danceability),colour="white", map = WorldData) +
  expand_limits(x = WorldData$long, y = WorldData$lat) +
  my_scale +
  my_theme

plot_tempo <- ggplot(data_final, aes(map_id = country)) +
  default_layer +
  geom_map(aes(fill = tempo),colour="white", map = WorldData) +
  expand_limits(x = WorldData$long, y = WorldData$lat) +
  my_scale +
  my_theme

plot_energy <- ggplot(data_final, aes(map_id = country)) +
  default_layer +
  geom_map(aes(fill = energy),colour="white", map = WorldData) +
  expand_limits(x = WorldData$long, y = WorldData$lat) +
  my_scale +
  my_theme

plot_valence <- ggplot(data_final, aes(map_id = country)) +
  default_layer +
  geom_map(aes(fill = valence),colour="white", map = WorldData) +
  expand_limits(x = WorldData$long, y = WorldData$lat) +
  my_scale +
  my_theme


plot_energy
plot_dancebility
plot_valence
plot_tempo

#for get all plots in one unique plot
grid.arrange(plot_energy, plot_dancebility,plot_valence,plot_tempo, nrow = 2)
