## Bodo Winter
## July 17, 2017
## Selecting random videos from the main file for IRR with Marcus & Greg:

##------------------------------------------------------------------
## Preprocessing:
##------------------------------------------------------------------

## Libraries:

library(tidyverse)

## Set working directory and load file:

setwd('/Users/winterb/Research/mathematical_cognition/greg_brandnew_coding/analysis/old_files/')
xdata <- read_csv('tiny_huge_cleaned_27_05_16.csv')

## Get those that have hands visible:

xdata <- filter(xdata, HandsVisible == 'yes')

## Select random subset of 20 videos:

set.seed(42)
xdata <- xdata[sample(1:nrow(xdata), 20), ]

## Get rid of everything that's not needed:

xdata <- select(xdata, No:PhraseYes)

## Rename:

xdata <- rename(xdata,
	ID = No, Archive_ID = ID, SpeakerName = Name,
	HasPhrase = PhraseYes)

## Add new columns:

xdata$SpeakerVisible <- 'yes'
xdata$HandsVisible <- NA
xdata$HandsFree <- NA
xdata$HandsMoving <- NA
xdata$WhichHand <- NA
xdata$HandConfig <- NA
xdata$PinchType <- NA
xdata$PinkieCurl <- NA
xdata$PalmOrientation <- NA
xdata$MovementVertical <- NA
xdata$MovementHorizontal <- NA
xdata$MovementSagittal <- NA
xdata$QuantityType <- NA
xdata$QuantityValue <- NA
xdata$VerbatimReferent <- NA
xdata$QuantityContrast <- NA
xdata$Comments <- NA
xdata$Negated <- 'no'

## Change order:

xdata <- select(xdata,
	ID, URL, Archive_ID, Title, Phrase, Negated,
	SpeakerName, HasPhrase, SpeakerVisible:Comments)

## Write to file:

setwd('/Users/winterb/Research/mathematical_cognition/greg_brandnew_coding/analysis/')
write_csv(xdata, 'IRR_coding.csv')


