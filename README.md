# Data-Processes-Assignment
## Table of contents
- [Collaborators](#collaborators)
- [Domain of interest](#Domain-of-interest)
- [Datasets](#datasets)

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

In this project we are going to work with data from the field of music for the following reasons:
We all use different types of services to listen to music regularly including Spotify, SoundCloud, and iTunes.
What makes us more passionate about music that some of us are or have been musicians.
We think it is really interesting to work and explore data about music and have the opportunity to discover some of the hidden information about music, about the behavior of music providers, music makers and users of platforms.

### Three data-driven project example

In the following example, they are collecting data from Music streaming service platforms.
Later they use this in a machine-learning algorithm to predict the mood of the user based on his/her playlist of music.
<https://towardsdatascience.com/predicting-my-mood-using-my-spotify-data-2e898add122a>

In this project, they try to find common patterns among the most popular songs on Spotify,
They analyze the audio features of the tracks in Spotify's Top Songs of 2017 playlist.
https://www.kaggle.com/cihanoklap/top-songs-on-spotify-what-makes-them-popular

By analyzing the data of the top 100 artists on Spotify, the following project tries to group the artists into clusters and give a description of each cluster to discover more information about the most successful artists.
<https://towardsdatascience.com/what-data-science-can-tell-us-about-mainstream-music-e56b20e00a25>

### Data-driven questions

1. What features have TOP50 artists in Europe & China, some comparisons? We would like to generate a Map of nations (Europe) for the most common type of music (according to the features contained in the dataset).
2. What are the characteristics of a new viral song? Which features are the most important, what is its average lifespan? (We would like to focus on Italy first and then extend it to Europe).
3. Which countries are listening to their songs instead of foreign ones?
4. Analysis of the evolution of the musical tastes in each country (in EU)?
5. What are the main differences in features between different genres? How does the value of the "beat" feature change among songs from the same genre and how does it change among different genres?

## Datasets

The datasets we have found are saved as .csv in their respective folders and the structure will be the following.


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
The Dataset consists of 1.4 Million musical artists, the dataset is collected through MusicBrainz database and the API of Last fm. The dataset can be found in the directory Data/last_fm/ .
3% of the observation in this dataset contain NA values, therefore we have cleaned and prepared the data to make it easier to work with it.
This dataset is downloaded from Kaggle.com. The dataset could be useful to make an analysis of artists from different countries.

Variables of dataset:
- **mbid**| musicbrainz id
- **artist_mb** | artist name according to musicbrainz
- **artist_lastfm** | artist name according to last_fm
- **country_mb**: artist country according to musicbrainz
- **country_lastfm** | artist country, based on last_fm tags
- **tags_mb**: artist tags on musicbrainz, separated by semicolon (;)
- **tags_lastfm**: artist tags on last_fm, separated by semicolon (;), sorted by frequency decreasing
- **listeners_lastfm** | number of listeners on last_fm
- **scrobbles_lastfm** | number of scrobbles on last_fm
- **ambiguous_artist** | TRUE if more than one artist shares the same last_fm page

#### [Ranking Song](https://www.kaggle.com/edumucelli/spotifys-worldwide-daily-song-ranking/)
This dataset contains the daily ranking of the 200 most listened songs on Spotify in 53 countries from 2017 to 2018.
The dataset has more than 2 million observations providing information about 18598 different songs by 6629 different artists.
The data can be found in the following directory:
```text
Data/spotify_ranking/.
```
The dataset is downloaded from Kaggle, It is going to be used to find patterns and similarities among the top songs.

Variables of dataset:
| **Position Position** | on charts
| --------------------- |:---------:|
| **Track Name** | Title of song
| **Artist Name** | of musician or group
| **Streams Number**| of streams
| **URL**
| **Date**
| **Region** | Country code

#### [Music Features](https://www.kaggle.com/insiyeah/musicfeatures)

This dataset contains the features of different music genres and it has 100 songs for each genre.
It has 30 features and 1000 observations, we are going to use this dataset to differences in features 
We have downloaded the dataset from Kaggle.com.

Variables of the dataset:
- **filename**: Filename as given in Marsyas dataset.
- **tempo**: The speed at which a passage of music is played
- **beats**: Rythmic unit in music
- **chroma_stft**: Short-Time Fourier Transform
- **rmse**: Root Mean Square Error
- **spectral_centroid**: Indicates where the "center of mass" of the spectrum is located.
- **spectral_bandwidth**: It is the Wavelength interval in which a radiated spectral quantity is not less than half its maximum value
- **rolloff**: Roll-off is the steepness of a transmission function with frequency
- **zero_crossing_rate**: The rate at which the signal changes from positive to negative or back
- **mfccs**: Mel-frequency cepstral coefficients (MFCCs) are coefficients that collectively make up an MFC.
- **label**: Contains a string depicting the genre


#### [Radio Stations](https://rapidapi.com/maxime.maisonneuve/api/30-000-radio-stations-and-music-charts/details)
Deezer API and Rapid API offer a radio station API which can be used to access data about the music being played at the moment or was played recently (short term data).
We are going to use the dataset look for trendy music and analyze their feature to find out and answer the question of what are the characteristics of songs which go viral? 

Variables of the dataset:
- Radio search (**i**: Radio station unique id; **d**: Genre id; **n**: Radio name; **c**: Country 2-letter code; **g**: Genre name; **u**: Stream URL; **l**: Radio logo)
- Countries list (**code**: 2-letter code; **name**: Name)
- Now Playing (**artist_song**: artist name; **title_song**: song name; **radio_name**: radio name; **radio_id**: radio id; **radio_stream**: radio stream URL; **radio_logo**: radio logo; **date**: date GMT+1 Paris)
- Radio station Infos (**i**: Radio station unique id; **d**: Genre id; **n**: Radio name; **c**: Country 2-letter code; **g**: Genre name; **u**: Stream URL; **l**: Logo)
- Weekly Charts (**artist_song**: artist name; **title_song**: song name; **occurrences**: occurrences number)
- Monthly Charts (**artist_song**: artist name; **title_song**: song name; **occurrences**: occurrences number)
- Music genres list (**i**: Genre id; **c**: Name)
- Daily Charts (**artist_song**: artist name; **title_song**: song name; **occurrences**: occurrences number)

#### [Track Features](https://www.kaggle.com/geomack/spotifyclassification)
In this dataset each row represents a song. There are 16 columns. 13 of which are song attributes, one column for song name, one for artist, and a column called "target" which is the label for the song.
Here are the 13 track attributes: acousticness, danceability, duration_ms, energy, instrumentalness, key, liveness, loudness, mode, speechiness, tempo, time_signature, valence.
Information on what those traits mean can be found here: https://developer.spotify.com/web-api/get-audio-features/

- **acousticness**: A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic.
- **danceability**: Danceability describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is most danceable.
- **duration_ms**: duration of the song in ms.
- **energy**: Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity. Typically, energetic tracks feel fast, loud, and noisy. For example, death metal has high energy, while a Bach prelude scores low on the scale. Perceptual features contributing to this attribute include dynamic range, perceived loudness, timbre, onset rate, and general entropy.
- **instrumentalness**: Predicts whether a track contains no vocals. “Ooh” and “aah” sounds are treated as instrumental in this context. Rap or spoken word tracks are clearly “vocal”. The closer the instrumentalness value is to 1.0, the greater likelihood the track contains no vocal content. Values above 0.5 are intended to represent instrumental tracks, but confidence is higher as the value approaches 1.0.
- **liveness**:	Detects the presence of an audience in the recording. Higher liveness values represent an increased probability that the track was performed live. A value above 0.8 provides strong likelihood that the track is live.
- **loudness**: The overall loudness of a track in decibels (dB). Loudness values are averaged across the entire track and are useful for comparing relative loudness of tracks. Loudness is the quality of a sound that is the primary psychological correlate of physical strength (amplitude). Values typical range between -60 and 0 db.
- **mode**: Mode indicates the modality (major or minor) of a track, the type of scale from which its melodic content is derived. Major is represented by 1 and minor is 0.
- speechiness**: Speechiness detects the presence of spoken words in a track. The more exclusively speech-like the recording (e.g. talk show, audio book, poetry), the closer to 1.0 the attribute value. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks.
- **tempo**: The overall estimated tempo of a track in beats per minute (BPM). In musical terminology, tempo is the speed or pace of a given piece and derives directly from the average beat duration.
- **time_signature**:	An estimated overall time signature of a track. The time signature (meter) is a notational convention to specify how many beats are in each bar (or measure).
- **valence**: A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. sad, depressed, angry).
