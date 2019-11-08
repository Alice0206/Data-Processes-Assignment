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

We want to focus our project on the digital music field for three main reasons: first we are all users of music services such as Spotify, Itunes, Google Music and so on, second it grants many ways to explore it and eventually we share this passion also in our private life since many of us are musicians (or have been). We found really interesting have the opportunity to explore the data of this field and have the possibility to discover some fascinating information hide.

### Three data-driven project example

The first project found use the Spotify API in a really interesting way to predict the person's mood based on playlist composition, it shows good statistical skills but not too hard to handle, it could be an inspiration for our project.
<https://towardsdatascience.com/predicting-my-mood-using-my-spotify-data-2e898add122a>

This other project merges two different field: music and sport. This works by analyzing playlists that contain “Ajax” or “Ajax Amsterdam” in their name creates a subset of playlists (and songs) related to the club, then it could be possible to go further and analyze the mood of club supporters!
<https://towardsdatascience.com/discovering-football-anthems-through-data-analysis-3a9773499d77>

The last project analyzed is an investigation of the insight of the Top100 artist in the US, the main target of this project is to use the data to assign the best the music in a category. In this way, you can obtain information about what is the mainstream music nowdays.
<https://towardsdatascience.com/what-data-science-can-tell-us-about-mainstream-music-e56b20e00a25>

### Data-driven questions

1. What features have TOP50 artists in Europe & China, some comparisons? We would like to generate a Map of nations (Europe) for the most common type of music (according to the features contained in the dataset).
2. What characterizes best a new viral song? Which features is the most important, what is its average lifespan? (We would like to focus on Italy first and then extend it to Europe).
3. Which countries are listening to their own songs instead of foreign ones?
4. Analysis on the evolution of the musical tastes in each country (in EU)?

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
The dataset consists of over 1.4 Million musical artists present in the MusicBrainz database with in adds the information retrieved from the API last fm .
The dataset could be found in the directory ```Data/last_fm/```.
We have a total of 1'466'083, only the 3% of this row doesn't contain NA. For this we've made clean data to avoid the losing of too much data, with a mixing of the data from mb and last_fm.
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

The data are gathered by the site kaggle.com.
The dataset can help us compare the artists of each country.

#### [Ranking Song](https://www.kaggle.com/edumucelli/spotifys-worldwide-daily-song-ranking/)
This dataset contains the daily ranking of the 200 most listened songs in 53 countries from 2017 and 2018 by Spotify users. It contains more than 2 million rows, which comprises 6629 artists, 18598 songs for a total count of one hundred five billion streams count.
The data has been download in the directory
```text
Data/spotify_ranking/.
```
Variables of dataset:
- **Position Position**: on charts
- **Track Name**: Title of song
- **Artist Name**: of musician or group
- **Streams Number**: of streams
- **URL**
- **Date**
- **Region**: Country code

The collection of the data has been done by using the site [kaggle.com](kaggle.com)
This dataset can be used to analyze the evolution of the ranking in the respective country, and can be useful to understand better what is the usual feature of a song in the top rank.

#### [Music Features](https://www.kaggle.com/insiyeah/musicfeatures)

For the dataset I found, it explians the feasures of ten different genres and one genre contains 100 different tracks.  it contains 30 musical measurement features and 1000 observations. We can use PCA firstly to summerize the data and analyze the music feature differences by different genres. Besides, we can check the dataset with regression analysis and try to get a model out of it.

https://www.kaggle.com/chadwickcasper/music-eda

There is a project that has been done for the same dataset for music classification. They did 30 violin plots of every feature for each genre of music and analyzed the correlation of different features.

Variables of the dataset:
- **filename**: Filename as given in marsyas dataset.
- **tempo**: The speed at which a passage of music is played
- **beats**: Rythmic unit in music
- **chroma_stft**: Short Time Fourier Transform
- **rmse**: Root Mean Square Error
- **spectral_centroid**: Indicates where the "center of mass" of the spectrum is located.
- **spectral_bandwidth**: It is the Wavelength interval in which a radiated spectral quantity is not less than half its maximum value
- **rolloff**: Roll-off is the steepness of a transmission function with frequency
- **zero_crossing_rate**: The rate at which the signal changes from positive to negative or back
- **mfccs**: Mel-frequency cepstral coefficients (MFCCs) are coefficients that collectively make up an MFC.
- **label**: Contains a string depicting the genre

Is there much difference in features between different genre of musics?
Is the beats value correlated to the genre of music?
Which genre of music refers to good quality of sound?

#### [Radio Stations](https://rapidapi.com/maxime.maisonneuve/api/30-000-radio-stations-and-music-charts/details)
Deezer API (and RapidAPI 30,000 radio stations and music charts) offers also a Radio Station API to access live playing music or short-time data (last week), with this information it could be possible to better analyze which songs go viral and when we could also try to merge song title with analytics from other databases to extract which features characterize viral songs.
Variables of the dataset:
- Radio search (**i**: Radio station unique id; **d**: Genre id; **n**: Radio name; **c**: Country 2-letter code; **g**: Genre name; **u**: Stream URL; **l**: Radio logo)
- Countries list (**code**: 2-letter code; **name**: Name)
- Now Playing (**artist_song**: artist name; **title_song**: song name; **radio_name**: radio name; **radio_id**: radio id; **radio_stream**: radio stream URL; **radio_logo**: radio logo; **date**: date GMT+1 Paris)
- Radio station Infos (**i**: Radio station unique id; **d**: Genre id; **n**: Radio name; **c**: Country 2-letter code; **g**: Genre name; **u**: Stream URL; **l**: Logo)
- Weekly Charts (**artist_song**: artist name; **title_song**: song name; **occurrences**: occurrences number)
- Monthly Charts (**artist_song**: artist name; **title_song**: song name; **occurrences**: occurrences number)
- Music genres list (**i**: Genre id; **c**: Name)
- Daily Charts (**artist_song**: artist name; **title_song**: song name; **occurrences**: occurrences number)

#### [Track Features](https://developer.spotify.com/documentation/web-api/reference/tracks/get-several-audio-features/)
This API help us to assign external features to tracks such as:
- **acousticness**: A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic.
- **danceability**: Danceability describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is most danceable.
- **energy**: Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity. Typically, energetic tracks feel fast, loud, and noisy. For example, death metal has high energy, while a Bach prelude scores low on the scale. Perceptual features contributing to this attribute include dynamic range, perceived loudness, timbre, onset rate, and general entropy.
- **instrumentalness**: Predicts whether a track contains no vocals. “Ooh” and “aah” sounds are treated as instrumental in this context. Rap or spoken word tracks are clearly “vocal”. The closer the instrumentalness value is to 1.0, the greater likelihood the track contains no vocal content. Values above 0.5 are intended to represent instrumental tracks, but confidence is higher as the value approaches 1.0.
- **liveness**:	Detects the presence of an audience in the recording. Higher liveness values represent an increased probability that the track was performed live. A value above 0.8 provides strong likelihood that the track is live.
- **loudness**: The overall loudness of a track in decibels (dB). Loudness values are averaged across the entire track and are useful for comparing relative loudness of tracks. Loudness is the quality of a sound that is the primary psychological correlate of physical strength (amplitude). Values typical range between -60 and 0 db.
- **mode**: Mode indicates the modality (major or minor) of a track, the type of scale from which its melodic content is derived. Major is represented by 1 and minor is 0.
- speechiness**: Speechiness detects the presence of spoken words in a track. The more exclusively speech-like the recording (e.g. talk show, audio book, poetry), the closer to 1.0 the attribute value. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks.
- **tempo**: The overall estimated tempo of a track in beats per minute (BPM). In musical terminology, tempo is the speed or pace of a given piece and derives directly from the average beat duration.
- **valence**: A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. sad, depressed, angry).
