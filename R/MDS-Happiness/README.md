# MDS: World Happiness Report
***View in my [RPubs](https://rpubs.com/tim_toothed/1122909) page***

## tldr
Moderately complex, moderately short show-off project on Multi-Dimensional Scaling in R.

## Summary

![image](https://github.com/tim-toothed/Portfolio_Projects/assets/148921597/0fb754ac-435b-48d8-a2f7-0ed875434749)


About Dataset & Aim
DS: https://www.kaggle.com/datasets/mathurinache/world-happiness-report?select=2022.csv

World Happiness Report contains a lot of factors despite the overall happiness score, and that is why MDS could be useful to find simmilarities and dissimilarites between countries in terms of quality of life.

The Happiness Score is explained by the following factors:
GDP per capita
Healthy Life Expectancy
Social support
Freedom to make life choices
Generosity
Corruption Perception

I also include the region where the country is located to find if there is a similarity of quality of life by region. I exclude rank and happiness score, since it is cumulative variables, and the aim of this analysis is to show how MDS could be useful in terms of defining similarities in Happiness factors of the countries.

### Results:

- The countries seem to cluster based on their region. We can also observe that countries that are geographically close to each other, such as Russia and Bulgaria, are located close to each other in the plot. Only countries of Middle East do not have a particular clusterized location in the map. Countries of Africa and South Asia are quite similar by D2, however they are very different by D1. Such results show the complexity of aspects of quality of life.

- When viewing various news articles that mention the list of countries according to the Happiness index, one may get the impression that these countries are similar. Congo (99) and Ukraine (98) follow each other in accordance with the rank in the World Happiness Report table - however, with the help of MDS it is possible to understand that these are very different countries in terms of quality of life, and Congo is much more similar in the Gambia, which is in 93rd place.

- Sometimes people who want to migrate choose countries according to the World Happiness Report, but the place in the list does not reflect the full picture. For example, so many people choose countries that are close to the first place. But according to this map, you can see that, for example, Finland (1) is more similar in quality of life to Israel (9) than to Switzerland (4) or Luxembourg (6)

## Background
I had a lot of DA projects as a bachelor...
