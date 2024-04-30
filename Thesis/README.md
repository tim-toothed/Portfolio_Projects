Clean Dataset: [Kaggle](https://www.kaggle.com/datasets/timursharifullindata/russian-rap-2017-2022-dataset)   
Thesis Full Text: [HSE Website](https://spb.hse.ru/en/ba/soc/students/diplomas/835759635)

# Thesis Files
I worked on this Thesis for a long time and the sample, hypotheses, method of anylysis were changed many times. So, in the main directory `Thesis` you'll see only clear files of Data Analysis.

### Data Analysis
| Name | Description
| --- | --- |
| [new_Hypothesis_1_Number_of_Previous_Hits.Rmd](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/new_Hypothesis_1_Number_of_Previous_Hits.Rmd) | Preliminary GAM Analysis of H1.<br>The success of a given song is positively<br>associated with the number of successful songs<br>previously released by the artist, such that a<br> higher number of previous successful songs in<br> the artist's discography will increase the<br> likelihood of the given song achieving<br> success (becoming a hit).
| [new_Hypothesis_2_Guest_Artists.Rmd](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/new_Hypothesis_2_Guest_Artists.Rmd) | Preliminary GAM Analysis of H2.<br> The likelihood of the song achieving success<br> (becoming a hit) will increase if the song is labeled<br> as a collaboration with the artist that has a<br> higher number of hits in their career than the <br>main artist of the song. |
| [new_Hypothesis_3_Audio_Similarity.Rmd](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/new_Hypothesis_3_Audio_Similarity.Rmd) | Preliminary GAM Analysis of H3.<br> The relationship between the sound originality<br> and the likelihood of the song achieving success<br> (becoming a hit) is inverted U-shaped.<br> As the degree of sound originality of the song<br> increases, the likelihood of the song becoming<br> a hit will increase up to a certain point. However, <br>if the degree of sound originality exceeds a certain<br> point, this will lead to a decrease in likelihood of <br>the song becoming a hit.|
| [Final_Full_GAM2.Rmd](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/Final_Full_GAM2.Rmd) | Final GAM Analysis for the research. |

## Working Files
But there is one more folder which is called `WORKING_FILES`. I want to highlight several files from it since they are clean and cool.

### My favourites Data Collection files.

| Name | Description
| --- | --- |
[01 Data Collection.Rmd](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/WORKING_FILES/01%20Data%20Collection.Rmd) | Actually, this Web-Scraping session was absolutely useless in<br>the end, but this code file shows how I work with Selenium,<br>Web-scraping, Data Cleaning,.
[03 Screenshots from spotify.ipynb](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/WORKING_FILES/03%20Screenshots%20from%20spotify.ipynb) | VERY crutched solution to get number of plays.<br> Initially, I wanted to get number of streams per song,<br> but unfortunately such info cannot be accessed with<br> API. Number of plays can be seen only in desktop<br> version of Spotify, so I created a keyboard script<br>to make screenshots and used image-to-text package<br>to put numbers into dataset. 
[Audio Feature Extraction 2.ipynb](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/WORKING_FILES/Audio%20Feature%20Extraction%202.ipynb)| Technical Audio Features extraction (from mp3 to numerical)
[15 PCA.Rmd](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/WORKING_FILES/15%20PCA.Rmd)| How the extracted librosa Audio Features were<br>dimensionally reduced and interpreted
[16_1 Similarity_Hits.Rmd](https://github.com/tim-toothed/Portfolio_Projects/blob/main/Thesis/WORKING_FILES/16_1%20Similarity_Hits.Rmd) | Main Function to transform extracted PCAed Audio Features to<br> Audio Originality Variables by median distance between<br> the song and hits over past years

For all other files in the folder - ***Abandon all hope, ye who enter here*** because these files may be messy, false, non-working at all, and so on. But I think, this is inevitable if you are really *researching*.


## Dataset
[Final dataset is published on Kaggle](https://www.kaggle.com/datasets/timursharifullindata/russian-rap-2017-2022-dataset) (Bronze Medal)
