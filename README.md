# Data-Processes-Assignment
## Table of contents
- [Collaborators](##collaborators)
- [Domain of interest](##Domain-of-interest)
- [Datasets](##datasets)

## Collaborators

**Alicia Wang**
- <https://github.com/Alice0206>

**Gabriele Zambra**
- <https://github.com/gabriele-94>

**Giorgio Segalla**
- <https://github.com/GiorgioSgl>

**Yazan Salti**
- <https://github.com/saltiyazan>

**Fee Lueng**
- <https://github.com/luengjunfee>

## Domain of interest

### Why

We want to focus our project on the digital music field for three main reasons: first we are all users of music services such as Spotify, Itunes, Google Music and so on, second it grants many ways to explore it and eventually we share this passion also in our private life since many of us are musicians (or have been). We found really interesting have the opportunity to explore the data of this field and have the possibility to discover some fascinating information hide.

### Three data-driven project example

The first project found use the Spotify API in a really interesting way to predict the person's mood based on playlist composition, it shows good statistical skills but not too hard to handle, it could be an inspiration for our project.
<https://towardsdatascience.com/predicting-my-mood-using-my-spotify-data-2e898add122a>

This other project merges two different field: music and sport. This works by analyzing playlists that contain “Ajax” or “Ajax Amsterdam” in their name creates a subset of playlist (and song) related to the club, then it could be possible to go further and analyze the mood of club supporters!
<https://towardsdatascience.com/discovering-football-anthems-through-data-analysis-3a9773499d77>

The last project analyzed is an investigation of the insight of the Top100 artist in the US, the main target of this project is to use the data to label at the best the music with a category. In this way you can obtain information about what is the mainstream music of these nowdays. 
<https://towardsdatascience.com/what-data-science-can-tell-us-about-mainstream-music-e56b20e00a25>

### Data-driven questions

1. What features have TOP50 artists in Europe & China, some comparisons? We would like to generate a Map of nations (Europe) for the most common type of music (according to the features contained in the dataset).
2. What characterizes best a new viral song? Which features is the most important, what is its average lifespan? (We would like to focus on Italy first and then extend it to Europe). 
3. Which countries are listen their respective song instead of song from foreign country? 
4. Analysis on the evolution of the prefer music in the respective country?

## Datasets

We have found some various dataset and we have saved them as .csv in his relative folder. The organization of the structure is like showed under.


```text
data/
├── dataset_name_1/
|   └── data.csv
|
|    
└── dataset_name_n/
    └── data.csv
```



#### [Artist](https://www.kaggle.com/pieca111/music-artists-popularity)
The dataset consists of over 1.4 Million musical artists present in MusicBrainz database with in adds the information retrieve from the API last fm .
The dataset could be found in the directory ```Data/last_fm/```.
We have a total of 1'466'083, only the 3% of this row doesn't contain NA. For this we've made a clean data to avoid the losing of too many data, with a mixing of the data from mb and last_fm.
Variables of dataset:
- **mbid**: musicbrainz id
- **artist_mb**: artist name according to musicbrainz
- **artist_lastfm**: artist name according to last_fm
- **country_mb**: artist country according to musicbrainz
- **country_lastfm** : artist country, based on last_fm tags
- **tags_mb**: artist tags on musicbrainz, separated by semicolon (;)
- **tags_lastfm**: artist tags on last_fm, separated by semicolon (;), sorted by frequency decreasing
- **listeners_lastfm**: number of listeners on last_fm
- **scrobbles_lastfm**: number of scrobbles on last_fm
- **ambiguous_artist**: TRUE if more than one artist shares the same last_fm page

The collection of the data is be done by using the site kaggle.com.
The dataset can help to answer to make a comparison between the artist of each country.

#### [Ranking Song](https://www.kaggle.com/edumucelli/spotifys-worldwide-daily-song-ranking/)

