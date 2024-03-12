# load packages
library(tidyverse)
library(RSelenium)
library(netstat)

binman::list_versions('chromedriver')

# start the server
rs_driver_object <- rsDriver(browser = 'chrome',
                             chromever = '106.0.5249.21',
                             verbose = FALSE,
                             port = free_port())



## create a client object
remDr <- rs_driver_object$client

## open a browser
remDr$open()
remDr$maxWindowSize()

# Adblock
remDr$navigate("https://chrome.google.com/webstore/detail/adblock-%E2%80%94-best-ad-blocker/gighmmpiobklfepjocnamgkkbiglidom")
Sys.sleep(1)
remDr$findElement(using = 'xpath', '//div[@class="g-c-R  webstore-test-button-label"]')$clickElement()


# Page 1 - Top Charts
## navigate to website
remDr$navigate("https://www.beatstars.com/top-charts")
Sys.sleep(4)

## Press the button to change chart format
remDr$findElement(using = 'xpath', '//i[@class="vb-icon-bars-m-regular"]')$clickElement()
Sys.sleep(4)

## Scroll down to load the page 
for (i in 1:30) {
  remDr$executeScript("window.scrollTo(0, document.body.scrollHeight);")
  Sys.sleep(3)
}

## Extract place numbers
places1 = remDr$findElements(using = 'xpath', '//div[@class="card-figure-counter"]')
place <- lapply(places1, function (x) x$getElementText())  %>% unlist()

## Extract beat titles and beatmaker names
titles = remDr$findElements(using = 'xpath', '//a[@class="name ng-star-inserted"]')
titles1 <- lapply(titles, function (x) x$getElementText())  %>% 
  unlist()
beat_title = titles1[seq(1, length(titles1), 2)]
author_name = titles1[seq(2, length(titles1), 2)]

## Extract beat hrefs and beatmaker hrefs
beat_href1 <- lapply(titles, function (x) x$getElementAttribute("href"))  %>% unlist()
beat_href = beat_href1[seq(1, length(beat_href1), 2)]
author_href = beat_href1[seq(2, length(beat_href1), 2)]


## Create dfs
df_beats = data.frame(place, beat_title, author_name, beat_href)
df_producers = data.frame(unique(author_name), unique(author_href))

df_beats = df_beats %>% mutate(beat_like=NA, beat_repost=NA,
                               beat_date=NA, beat_bpm=NA, beat_key=NA, beat_plays=NA,
                               license1_type=NA, license1_price=NA,
                               license2_type=NA, license2_price=NA,
                               license3_type=NA, license3_price=NA,
                               license4_type=NA, license4_price=NA,
                               license5_type=NA, license5_price=NA,
                               license6_type=NA, license6_price=NA)
df_producers = df_producers %>% mutate(author_followers=NA, author_plays=NA, author_n_tracks=NA)

# Beat Page

for (i in seq(from = 294, to = nrow(df_beats), by = 1)){
  
  ## Go to the beat page
  remDr$navigate(paste(df_beats[i,4]))
  Sys.sleep(4)
  
  ## N of likes & reposts on a beat
  beat_like_repost1 = remDr$findElements(using = 'xpath', '//span[@class="total-interactions-available ng-star-inserted clickable"]')
  beat_like_repost <- lapply(beat_like_repost1, function (x) x$getElementText()) %>% unlist()
  if (is.null(beat_like_repost)==F){
    df_beats[i,5] = beat_like_repost[1:1]
    df_beats[i,6] = ifelse(is.na(beat_like_repost[2:2])==T, '0', beat_like_repost[2:2])    
  } else {
    df_beats[i,5] = '0'
    df_beats[i,6] = '0'
  }
  
  ## Release Date, BPM, Key, N of Plays
  beat_date_bpm_key_plays1 = remDr$findElements(using = 'xpath', '//span[@class="value ng-star-inserted"]')
  beat_date_bpm_key_plays = lapply(beat_date_bpm_key_plays1, function (x) x$getElementText())
  df_beats[i,7] = beat_date_bpm_key_plays[[1]] #date
  df_beats[i,8] = beat_date_bpm_key_plays[[2]] #bpm
  if (length(beat_date_bpm_key_plays)>3){
    df_beats[i,9] = beat_date_bpm_key_plays[[3]] #key
    df_beats[i,10] = beat_date_bpm_key_plays[[4]] #plays
  } else {
    df_beats[i,10] = beat_date_bpm_key_plays[[3]] #plays
  }
  Sys.sleep(2)
  
  ## Prices
  price1 = remDr$findElements(using = 'xpath', '//span[@class="license-price"]')
  price = lapply(price1, function (x) x$getElementText())
  
  if (length(price)==6){
    df_beats[i,12] = price[[1]]
    df_beats[i,14] = price[[2]]
    df_beats[i,16] = price[[3]]
    df_beats[i,18] = price[[4]]
    df_beats[i,20] = price[[5]]
    df_beats[i,22] = price[[6]]
  }

  if (length(price)==5){
    df_beats[i,12] = price[[1]]
    df_beats[i,14] = price[[2]]
    df_beats[i,16] = price[[3]]
    df_beats[i,18] = price[[4]]
    df_beats[i,20] = price[[5]]
  }

  if (length(price)==4){
    df_beats[i,12] = price[[1]]
    df_beats[i,14] = price[[2]]
    df_beats[i,16] = price[[3]]
    df_beats[i,18] = price[[4]]
  }
  
  if (length(price)==3){
    df_beats[i,12] = price[[1]]
    df_beats[i,14] = price[[2]]
    df_beats[i,16] = price[[3]]
  }

  if (length(price)==2){
    df_beats[i,12] = price[[1]]
    df_beats[i,14] = price[[2]]
  }

  if (length(price)==1){
    df_beats[i,12] = price[[1]]
  }
  
  ## Types of Licenses
  type1 = remDr$findElements(using = 'xpath', '//span[@class="license-type"]')
  type = lapply(type1, function (x) x$getElementText())
  
  if (length(price)==6){
    df_beats[i,11] = type[[1]]
    df_beats[i,13] = type[[2]]
    df_beats[i,15] = type[[3]]
    df_beats[i,17] = type[[4]]
    df_beats[i,19] = type[[5]]
    df_beats[i,21] = type[[6]]
  }
  
  if (length(price)==5){
    df_beats[i,11] = type[[1]]
    df_beats[i,13] = type[[2]]
    df_beats[i,15] = type[[3]]
    df_beats[i,17] = type[[4]]
    df_beats[i,19] = type[[5]]
  }
  
  if (length(price)==4){
    df_beats[i,11] = type[[1]]
    df_beats[i,13] = type[[2]]
    df_beats[i,15] = type[[3]]
    df_beats[i,17] = type[[4]]
  }
  
  if (length(price)==3){
    df_beats[i,11] = type[[1]]
    df_beats[i,13] = type[[2]]
    df_beats[i,15] = type[[3]]
  }
  
  if (length(price)==2){
    df_beats[i,11] = type[[1]]
    df_beats[i,13] = type[[2]]
  }
  
  if (length(price)==1){
    df_beats[i,11] = type[[1]]
  }
}
  

# Producer Page 

for (i in seq(from = 110, to = nrow(df_producers), by = 1)){  
  ## Go to the author page
  remDr$navigate(paste(df_producers[i,2]))
  Sys.sleep(4)
  
  ## Followers, Plays, Tracks
  fpt1 = remDr$findElements(using = 'xpath', '//span[@class="value ng-star-inserted"]')
  fpt = lapply(fpt1, function (x) x$getElementText()) %>% unlist()
  df_producers[i,3] = fpt[1:1]
  df_producers[i,4] = fpt[2:2]
  df_producers[i,5] = fpt[3:3]
}

# Download the datasets
write.csv(df_beats,"df_beats.csv", row.names = FALSE)
write.csv(df_producers,"df_producers.csv", row.names = FALSE)


# terminate the selenium server
system("taskkill /im java.exe /f")
