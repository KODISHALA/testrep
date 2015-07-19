#######################################################################################
#    United States Public Library Survey Data - Statistical Analysis
#######################################################################################

# Load data into R studio
setwd("/Users/hadoop/Documents/Data Analytics/US Public Libraries/Datasets")


# we are interested in only the following columns of the data from various years 

ColNames_99T02 <-  c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB",	"BRANLIB","BKMOB","TOTSTAFF",	"TOTINCM","ELMATEXP",	"TOTEXPCO",
                     "TOTOPEXP",	"CAPITAL",	"BKVOL","AUDIO", "VIDEO",	"ELMATS",	"SUBSCRIP",	"HRS_OPEN",	"VISITS",	"REFERENC",	
                     "TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")


ColNames_03T09 <-  c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB",	"BRANLIB","BKMOB","TOTSTAFF",	"TOTINCM","PRMATEXP", "ELMATEXP",	"TOTEXPCO",
                     "TOTOPEXP",	"CAP_REV", "CAPITAL",	"BKVOL","EBOOK", "AUDIO", "VIDEO",	 "DATABASE",	"SUBSCRIP",	"HRS_OPEN",	"VISITS",	"REFERENC",	
                     "TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")

ColNames_10T12 <-  c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB",  "BRANLIB","BKMOB","TOTSTAFF",	"TOTINCM","PRMATEXP", "ELMATEXP",	"TOTEXPCO",
                     "TOTOPEXP",	"CAP_REV", "CAPITAL",	"BKVOL","EBOOK", "AUDIO_PH","AUDIO_DL" ,"VIDEO_PH",	"VIDEO_DL","DATABASE",	"SUBSCRIP",	"HRS_OPEN",	
                     "VISITS",	"REFERENC",	"TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")

ColNames_Final <- c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB",  "BRANLIB","BKMOB","TOTSTAFF",  "TOTINCM","PRMATEXP", "ELMATEXP",	"TOTEXPCO",
                    "TOTOPEXP",	"CAP_REV", "CAPITAL",	"BKVOL","EBOOK", "AUDIO" ,"VIDEO","DATABASE",	"SUBSCRIP",	"HRS_OPEN",	
                    "VISITS",	"REFERENC",	"TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")

###############################################################################################
# load each year data and cleanse it for analysis
###############################################################################################

# year 1999 data
raw_yr1999 <- read.csv("Pupldf99.csv",header = TRUE)
sel_yr1999 <- raw_yr1999[,ColNames_99T02]
str(sel_yr1999)

# following columns are not in the datasets from 1999 to 2002, so adding these and initializing the values to 0

sel_yr1999$PRMATEXP <- 0
sel_yr1999$CAP_REV  <- 0
sel_yr1999$EBOOK    <- 0
sel_yr1999$PRMATEXP <- as.integer(sel_yr1999$PRMATEXP)
sel_yr1999$CAP_REV <- as.integer(sel_yr1999$CAP_REV)
sel_yr1999$EBOOK  <- as.integer(sel_yr1999$EBOOK)

# now re order the columns in the data frame in required order

sel_yr1999 <- sel_yr1999[c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB","BRANLIB","BKMOB","TOTSTAFF",  "TOTINCM","PRMATEXP", "ELMATEXP","TOTEXPCO",
                           "TOTOPEXP","CAP_REV","CAPITAL","BKVOL","EBOOK", "AUDIO" ,"VIDEO","ELMATS",	"SUBSCRIP",	"HRS_OPEN",	
                           "VISITS",	"REFERENC",	"TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")]

# Rename following column names.. so column names will be same across years

colnames(sel_yr1999)[20] <- "DATABASE"

################
# year 2000 data
raw_yr2000 <- read.csv("Pupldf00.csv",header = TRUE)
sel_yr2000 <- raw_yr2000[,ColNames_99T02]
str(sel_yr2000)

# following columns are not in the datasets from 1999 to 2002, so adding these and initializing the values to 0

sel_yr2000$PRMATEXP <- 0
sel_yr2000$CAP_REV  <- 0
sel_yr2000$EBOOK    <- 0


sel_yr2000$PRMATEXP <- as.integer(sel_yr2000$PRMATEXP)
sel_yr2000$CAP_REV <- as.integer(sel_yr2000$CAP_REV)
sel_yr2000$EBOOK  <- as.integer(sel_yr2000$EBOOK)



# now re order the columns in the data frame in required order

sel_yr2000 <- sel_yr2000[c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB","BRANLIB","BKMOB","TOTSTAFF",  "TOTINCM","PRMATEXP", "ELMATEXP","TOTEXPCO",
                           "TOTOPEXP","CAP_REV","CAPITAL","BKVOL","EBOOK", "AUDIO" ,"VIDEO","ELMATS",  "SUBSCRIP",	"HRS_OPEN",	
                           "VISITS",	"REFERENC",	"TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")]

# Rename following column names.. so column names will be same across years

colnames(sel_yr2000)[20] <- "DATABASE"



########################
# year 2001 data
raw_yr2001 <- read.csv("Pupld01b.csv",header = TRUE)
sel_yr2001 <- raw_yr2001[,ColNames_99T02]
str(sel_yr2001)


sel_yr2001$PRMATEXP <- 0
sel_yr2001$CAP_REV  <- 0
sel_yr2001$EBOOK    <- 0

sel_yr2001$PRMATEXP <- as.integer(sel_yr2001$PRMATEXP)
sel_yr2001$CAP_REV <- as.integer(sel_yr2001$CAP_REV)
sel_yr2001$EBOOK  <- as.integer(sel_yr2001$EBOOK)


# now re order the columns in the data frame in required order
sel_yr2001 <- sel_yr2001[c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB","BRANLIB","BKMOB","TOTSTAFF",  "TOTINCM","PRMATEXP", "ELMATEXP","TOTEXPCO",
                           "TOTOPEXP","CAP_REV","CAPITAL","BKVOL","EBOOK", "AUDIO" ,"VIDEO","ELMATS",  "SUBSCRIP",  "HRS_OPEN",	
                           "VISITS",	"REFERENC",	"TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")]

# Rename following column names.. so column names will be same across years

colnames(sel_yr2001)[20] <- "DATABASE"


###########################
# year 2002 data
raw_yr2002 <- read.csv("Pupld02b.csv",header = TRUE)
sel_yr2002 <- raw_yr2002[,ColNames_99T02]
str(sel_yr2002)


sel_yr2002$PRMATEXP <- 0
sel_yr2002$CAP_REV  <- 0
sel_yr2002$EBOOK    <- 0
sel_yr2002$PRMATEXP <- as.integer(sel_yr2002$PRMATEXP)
sel_yr2002$CAP_REV <- as.integer(sel_yr2002$CAP_REV)
sel_yr2002$EBOOK  <- as.integer(sel_yr2002$EBOOK)


# now re order the columns in the data frame in required order
sel_yr2002 <- sel_yr2002[c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB","BRANLIB","BKMOB","TOTSTAFF",  "TOTINCM","PRMATEXP", "ELMATEXP","TOTEXPCO",
                           "TOTOPEXP","CAP_REV","CAPITAL","BKVOL","EBOOK", "AUDIO" ,"VIDEO","ELMATS",  "SUBSCRIP",  "HRS_OPEN",  
                           "VISITS",	"REFERENC",	"TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")]


# Rename following column names.. so column names will be same across years

colnames(sel_yr2002)[20] <- "DATABASE"

#################################
# year 2003 data
raw_yr2003 <- read.csv("Pupld03a.csv",header = TRUE)
sel_yr2003 <- raw_yr2003[,ColNames_03T09]
str(sel_yr2003)

# year 2004 data
raw_yr2004 <- read.csv("Pupld04a.csv",header = TRUE)
sel_yr2004 = raw_yr2004[,ColNames_03T09]
str(sel_yr2004)

# year 2005 data
raw_yr2005 <- read.csv("Pupld05a.csv",header = TRUE)
sel_yr2005 <- raw_yr2005[,ColNames_03T09]
str(sel_yr2005)

# year 2006 data
raw_yr2006 <- read.csv("Pupld06a.csv",header = TRUE)
sel_yr2006 <- raw_yr2006[,ColNames_03T09]
str(sel_yr2006)

# year 2007 data
raw_yr2007 <- read.csv("Pupld07.csv",header = TRUE)
sel_yr2007 <- raw_yr2007[,ColNames_03T09]
str(sel_yr2007)

# year 2008 data
raw_yr2008 <- read.csv("Pupld08a.csv",header = TRUE)
sel_yr2008 <- raw_yr2008[,ColNames_03T09]
str(sel_yr2008)

# year 2009 data
raw_yr2009 <- read.csv("Pupld09a.csv",header = TRUE)
sel_yr2009 <- raw_yr2009[,ColNames_03T09]
str(sel_yr2009)

# year 2010 data
raw_yr2010 <- read.csv("Pupld10a.csv",header = TRUE)
sel_yr2010 <- raw_yr2010[,ColNames_10T12]
str(sel_yr2010)

# merge following columns into one column, in oder to keep these in sync with previous years
sel_yr2010$AUDIO <- sel_yr2010$AUDIO_PH + sel_yr2010$AUDIO_DL
sel_yr2010$VIDEO <- sel_yr2010$VIDEO_PH + sel_yr2010$VIDEO_DL


# now re order the columns in the data frame in required order
sel_yr2010 <- sel_yr2010[c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB","BRANLIB","BKMOB","TOTSTAFF",  "TOTINCM","PRMATEXP", "ELMATEXP","TOTEXPCO",
                           "TOTOPEXP","CAP_REV","CAPITAL","BKVOL","EBOOK", "AUDIO" ,"VIDEO","DATABASE",  "SUBSCRIP",  "HRS_OPEN",  
                           "VISITS",  "REFERENC",	"TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")]


# year 2011 data
raw_yr2011 <- read.csv("Pupld11b.csv",header = TRUE)
sel_yr2011 <- raw_yr2011[,ColNames_10T12]
str(sel_yr2011)

# merge following columns into one column, in oder to keep these in sync with previous years
sel_yr2011$AUDIO <- sel_yr2011$AUDIO_PH + sel_yr2011$AUDIO_DL
sel_yr2011$VIDEO <- sel_yr2011$VIDEO_PH + sel_yr2011$VIDEO_DL

# now re order the columns in the data frame in required order
sel_yr2011 <- sel_yr2011[c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB","BRANLIB","BKMOB","TOTSTAFF",  "TOTINCM","PRMATEXP", "ELMATEXP","TOTEXPCO",
                           "TOTOPEXP","CAP_REV","CAPITAL","BKVOL","EBOOK", "AUDIO" ,"VIDEO","DATABASE",  "SUBSCRIP",  "HRS_OPEN",  
                           "VISITS",  "REFERENC",  "TOTCIR",	"KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")]

# year 2012 data
raw_yr2012 <- read.csv("Pupld12a.csv",header = TRUE)
sel_yr2012 <- raw_yr2012[,ColNames_10T12]
str(sel_yr2012)

# merge following columns into one column, in oder to keep these in sync with previous years
sel_yr2012$AUDIO <- sel_yr2012$AUDIO_PH + sel_yr2012$AUDIO_DL
sel_yr2012$VIDEO <- sel_yr2012$VIDEO_PH + sel_yr2012$VIDEO_DL

# now re order the columns in the data frame in required order
sel_yr2012 <- sel_yr2012[c("STABR","FSCSKEY","GEOCODE",  "POPU_UND","CENTLIB","BRANLIB","BKMOB","TOTSTAFF",  "TOTINCM","PRMATEXP", "ELMATEXP","TOTEXPCO",
                           "TOTOPEXP","CAP_REV","CAPITAL","BKVOL","EBOOK", "AUDIO" ,"VIDEO","DATABASE",  "SUBSCRIP",  "HRS_OPEN",  
                           "VISITS",  "REFERENC",  "TOTCIR",  "KIDCIRCL",	"LOANTO",	"LOANFM",	"KIDATTEN",	"GPTERMS",	"YR_SUB")]


####################################
# Now megre all years data into single data frame for the analysis
####################################

Input_Data <- rbind(sel_yr1999, sel_yr2000, sel_yr2001, sel_yr2002, sel_yr2003, sel_yr2004, sel_yr2005, sel_yr2006,
                    sel_yr2007, sel_yr2008, sel_yr2009, sel_yr2010, sel_yr2011, sel_yr2012)

str(Input_Data)