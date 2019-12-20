library(reshape2)
library(tidyverse)
library(dplyr)
library(ggplot2)

#Reading both datasets

msd<-read.csv("msd_simple.csv")

#Dropping rows where song_hotttnesss variable's value is Nan and then deleting duplicated rows
msd <- msd %>% 
  filter(!is.nan(song_hotttnesss)& year != 0&song_hotttnesss!=0) %>% 
  unique()

msd <- mutate(msd,decade=ifelse(msd$year<1960,5,
                                  ifelse(msd$year<1970,6,
                                         ifelse(msd$year<1980,7,
                                                ifelse(msd$year<1990,8,
                                                  ifelse(msd$year<2000,9,10))))))


msd <- mutate(msd,age=ifelse(msd$year<1999,1,2))

#Exploring the dataset

#how many artists are represented in this data set? 
number_of_artists<-length(unique(msd$artist_name))

#Who is the artist with most the highest number of songs in this dataset?
artist_with_most_songs<-tail(names(sort(table(msd$artist_name))),1)

#Which are the hottest 100 songs?
hottest_100_songs_hottness_min_val<-tail(sort(msd$song_hotttnesss),100)[1]
hottest_100_songs<- msd %>% 
  filter(song_hotttnesss>=hottest_100_songs_hottness_min_val)

#which artists have more than 2 songs in this hottest 100 songs list?
artists_with_more_than_two_top_songs<- hottest_100_songs %>% 
  group_by(hottest_100_songs$artist_name) %>%
  count() %>% 
  filter(n>2)
  
#how well are songs in this dataset distibuted through time?
number_of_songs_in_decades<-msd %>% 
  group_by(decade) %>% 
  count()

#delete the rows of songs from the 60's since we only have 4 songs 
msd<-msd %>% 
  filter(decade != 5)

#randomly remove 500 rows from 2000's since we have much more songs from this period than any other period
songs_from_10<- msd %>% 
  filter(decade==10)
to_remove<-sample(songs_from_10$track_id,500)
msd <- msd %>% 
  filter(! track_id %in% to_remove)


#keeping only the hottest songs of eache time period
msd<-msd %>% 
  filter(song_hotttnesss>0.7)

# creating correlation matrix and plotting it
msd_numeric<- msd %>% 
  select(year,song_hotttnesss,duration,tempo,loudness,key,mode)

cor <- round(cor(msd_numeric),2)
head(cor)

melted_msd <- melt(cor)
head(melted_msd)

ggplot(data = melted_msd,aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()



#plotting variables of interest against the added catgorical variables.
ggplot(msd,aes(age ,loudness,group=age))+
  geom_boxplot()

ggplot(msd,aes(age ,tempo,group=age))+
  geom_boxplot()

ggplot(msd,aes(age ,duration,group=age))+
  geom_boxplot()


ggplot(msd,aes(decade ,loudness,group=decade))+
  geom_boxplot()

ggplot(msd,aes(decade ,tempo,group=decade))+
  geom_boxplot()

ggplot(msd,aes(decade ,duration,group=decade))+
  geom_boxplot()


plot(msd$year,msd$tempo)
plot(msd$year,msd$loudness)
plot(msd$year,msd$dduration)

