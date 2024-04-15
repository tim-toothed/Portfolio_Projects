# My DS/DA Portfolio
## Timur Sharifullin

Welcome to my data scientist/data analyst portfolio! This repository contains a collection of projects, mostly in **R** (***do not pay attention to "HTML" in the languages ​​used - these are all reports from Rmd files***) and also **Python**. I prefer to use R for descriptives and statistical analysis, and Python for ML, data collection (Web-scraping, Parsing) and AI-related work (in this case it is not really a choice tbh...). 

You can find all of the important information about me in my [CV](https://drive.google.com/file/d/11XiCNp62MQCrbYL68lCBQmrZm67Rt0IC/view?usp=sharing), so here I would jump straight into projects.

## Projects

| Name (Github Link) | Language | Tags | Better View Link |
| --- | --- | --- | --- |
| [AI-Transcription for Interview](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/Python/AI_Transcription)| Python | `AI`, `Diorization`,<br> `Colab Tool`, `Transcription`| [Colab](https://colab.research.google.com/drive/1crLzZJYKfN39SdnNhH4OWAP53NDRgDYH?usp=sharing) |
| [Cohort Analysis for Charity](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/R/Cohort_Analysis) | R | `Cohort Analysis`, `Real Data`,<br> `Hackathon`, `Big Project` | [RPubs](http://rpubs.com/tim_toothed/1121354) |
| [Advanced GLM Analysis:<br>Bank Churn](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/R/Binary_Logistic_Regression-Churn_Prediction) | R | `Logistic Regression`, `ROC`,<br>`Nested Models`, <br>`Advanced Analysis` | [RPubs](https://rpubs.com/tim_toothed/1121357) | 
| [Subjective Well-Being<br>of Czechs](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/R/Well-Being_of_Chezchs) | R | `Big Project`,`Chi-squared`,<br>`T-Test`, `ANOVA`, `Linear`<br>`Regression`, `Hierarchical Reg`,<br>`Interaction Effects`, `Group`,<br>`Big Project`| [RPubs](https://rpubs.com/tim_toothed/1122909) |
| [Song Classification](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/Python/Song_Classification) | Python | `ML`, `Decision Tree`, <br>`Logistic Regression`, `PCA`,<br>`Real Data`,`pandas`,`sklearn`,<br>`matplotlib` | - |
| [Network analysis: Comix<br>Recommendations](https://github.com/tim-toothed/Portfolio_Projects/tree/19db06a15f1e012bf43b879483c60af82e95c044/R/Comix_Rec) | R | `Network Analysis`,`Similarity`,<br>`Recommendation`,`ggraph` | [RPubs](https://rpubs.com/tim_toothed/1122885) |
| [Analysis of Top Selling<br>Beats on Beatstars](https://github.com/tim-toothed/Portfolio_Projects/tree/19db06a15f1e012bf43b879483c60af82e95c044/R/Beatstars_Success) | R | `Linear Regression`,`Real Data`,<br>`Data Collection`,`Web-Scraping`,<br>`Selenium`,`Descriptive Analysis` | [RPubs](https://rpubs.com/tim_toothed/1121360) |
| [MDS: Region Hapiness<br>Homogenity](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/R/MDS-Happiness) | R | `Multidimensional scaling`, <br>`plotly`, `Short Project` | [RPubs](https://rpubs.com/tim_toothed/mds_happiness) |
| [How to choose Beer<br>with MDS](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/R/MDS-Beer) | R | `Multidimensional scaling`,<br> `Short Project`, `FUN` | [RPubs](https://rpubs.com/tim_toothed/1121367) |
| [EFA: What influences love at first sight?](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/R/EFA_Speed_Dating) | R | `Explanatory Factor Analysis`,<br>`Advanced Analysis` | [RPubs](https://rpubs.com/tim_toothed/1123186) |
| [CA: Student’s<br>Math Scores](https://github.com/tim-toothed/Portfolio_Projects/tree/b08b076cc87508f48e0e0ff10028139cb69bdf77/R/CA-Students_Math_Score) | R | `Correspondence Analysis`,<br> `Short Project`| [RPubps](https://rpubs.com/tim_toothed/1122900) |

## Bachelor Thesis

Separately, I would highlight my research on factors of popularity in Russian Rap. My Thesis topic in Bachelors was **"Sound Сharacteristics or Artist reputation: What Factors Influence the Popularity of a Hip- Hop Track on the Russian-speaking Market?"**.

**What was done?**  
1. Data Sampling and Data Collection of 12.743 songs through Web- Scraping (Python, Selenium) and Parsing (Python, Spotify API)
2. Creation of analytical music metrics using PCA and median Euclidian distance between
observations (R);
3. Non-linear Logistic Regression analysis through GAM (R)

**NERDY NOTES**
1. *Actually, 5 years of charts of three streaming services were scraped to get the initial data and then with the help of Spotify API the discographies were downloaded.*   
2. *So, during the project I also dive deep into the world of Music Information Retrieval, because I wanted to understand, whether the sound is important at all. So, audio features were extracted through actual audio-preview files of the songs with librosa in Python and then I reduced dimensionality through PCA. And only then I generate the distance to make not the sound factors, but sound 'originality' factors.*  
3. *GAM was used due to the initial hypothesis of inverted u-shape relationship between sound originality/similarity and popularity of the song* 

By going to the appropriate tab in my portfolio you can find a guide to the files that were created during the research process (however it is a little bit messy, especially in the data collection part).

Code files: [Github Folder](https://github.com/tim-toothed/Portfolio_Projects/tree/0dc03b9e207243219547716e6e19ebb9cd4aff41/Thesis)   
Clean Dataset: [Kaggle](https://www.kaggle.com/datasets/timursharifullindata/russian-rap-2017-2022-dataset)   
Thesis Full Text: [HSE Website](https://spb.hse.ru/en/ba/soc/students/diplomas/835759635)


