# Question1

What features have TOP100 artists in Europe and China?



## Motivation

Frankly speaking, there are dozens of datasets and people intended to analyze the musical characteristic rather than artist' feature. Thus, it will be very insteresting to place more concerns on the artist themselves. Moreover, Europe is the traditionally heated representative in the worldwide music market, while China merely received little attenttion from outsides, making the comparision of them more attractive.



## Dataset Description
The dataset, downloaded from [Kaggle](https://www.kaggle.com/pieca111/music-artists-popularity), consists of over 1.4 million muscial artists presented in [MusicBrainz](https://musicbrainz.org) database -- their names, tags, and popularity(listeners or scrobbles), based on data scraped from [last.fm](https://www.last.fm).

![](https://i.imgur.com/QkD3MX8.png)

##### The following is the detail of columns.
- **mbid**: musicbrainz id.
- **artist_mb**: artist name according to musicbrainz.
- **artist_lastfm**: artist name according to last.fm.
- **country_mb**: artist country according to musicbrainz.
- **country_lastfm**: artist country based on last.fm tags.
- **tags_mb**: artist tags on musicbrainz, separated by semicolon(;).
- **tags_lastfm**: artist tags on last.fm, seprated by semicolon(;), sorted by frequency decreasing.
- **listeners_lastfm**: number of listeners on last.fm.
- **scrobbles_lastfm**: number of scrabbles on last.fm. Scrobbling is when Last.fm tracks the music users listen to and automatically adds it to users' s music profile.
- **ambiguous_artist**: TRUE if more than one artist shares the same last.fm page.



## Selection and Preprocess 
- **Variable Selection**: First, in term of ***artist***, ***country*** and ***tags***, they all have respectivley two columns from different sources including Musicbrainz and last.fm, which is not necessory for data analysis. Therefore, we set the data from last.fm as the reservation for further research.
- **Variable Drop**: Besides, the variable of ***ambiguous_artist*** is useless for our Question 1, so we will drop this variable. In the column of ***country***, some rows have one more value for country, which should be deleted at the same time.
- **Other preprocess**: Finally, like the ***NA*** value and duplicate rows, we have to delete them to keep the dataset clean.
- **Final Features Choose**: <font size="3"> [mbid,artist,country,tags, listeners_lastfm,scrobbles_lastfm]</font>

##### Instance View of clean dataset after preprocess metioned above

![](https://i.imgur.com/NFNQQXp.png)



## Solution For Question
Unfortunately, considering the limited resources focused on the artist, features that we have are only within name, tags and popularity according to listeners or scrabbles. So, the first thing we do is the filter of TOP100 artists by popularity, and then using word cloud, the intuitive graphic, to observe the most representive tags for them, ethier in Europe or China. 



## Creation Of Word Cloud 

As the code showed below, input parameters for function are data(in China or European) and popularity based on listeners_lastfm, which could create word cloud of counting frequency of assorted tags on Top100 artists in European or China, while Top100 is the ranking of the popularity.

![](https://i.imgur.com/mIWE8OD.png)

### Analysis Of TOP100 China Artist

<img src="https://i.imgur.com/KyOGdD3.png" style="zoom: 50%;" />

As the result we saw, apart from tags of country, some apparent tags for TOP100 artist in China are ***Mandarin*** and ***Taiwan***, indicating Hongkong and Taiwan are more welcomed and familiar to the world, comparing with the mainland of China. On the other hand, the preference of musical genre for Chinese artists are ***pop*** and ***rock***, and they are usually recognized as ***singer-songwriter***. Besides, ***female*** singers played relatively significant role in music scene. 

### Analysis Of TOP100 European Artist

<img src="https://i.imgur.com/a5w8LBU.png" style="zoom:50%;" />

By the contrast, ***Britain*** occupied the center of Europe, leading the trend of European music. With respect to the genre, ***alternative rock***, ***classicrock***, ***electronic***, ***pop*** and ***seenlive*** are the mainstream in Europe. Furthermore, the age of artists, such as the generation of ***90*** and ***00***, arouses wide concerns as the important tag for artists.

## Conclusion
In a nutshell, either in Chian or Europe, there is the region difference existed. Evidently, regarding genre of music, Chinese artist prefer pop and rock while European are inclined to electroninc and alternative/classic rock. Moreover, female Chinese artists are the representative given more concerns while young artists of European draw more attentions from the public.  
