#############################
# Ryan Quan
# QMSSVIZ
# Homework 3
# 2014-10-23
#
# The following code creates a ggplot to
# compare a survey response from two different
# waves of the World Values Survey.
#############################

library(ggplot2)
library(dplyr)
library(reshape2)
library(scales)
library(RColorBrewer)
setwd("~/mailman/qmssviz/hw3/_posts/")

########################
# FUNCTIONS
########################
selectVars <- function(df, code, name) {
    #     select variables to include in the subsetted
    #     data frame. must supply variable code and desired
    #     column name.
    if (length(code) != length(name)) {
        stop("Length of code and name vectors do not match.")
    }
    ## pre-allocate size of list
    varList <- vector("list", length(code))
    varList <- df[code]
    ## create data.frame from list
    dfNames <- data.frame(varList)
    names(dfNames) <- name
    return(dfNames)
}

factorizeVars <- function(df) {
    #     convert all variables into factors
    data.frame(apply(df, 2, as.factor))
}

labelValues <- function(var, df, sep = ":") {
    #     read in codebook from the current directory
    #     for a given factor variable and label the values.
    #     if no codebook found, then no labeling is done.
    filename <- paste(var, ".txt", sep = "")
    
    if(file.exists(filename)) {
        dfLabels <- read.delim(filename, header = FALSE, sep = sep)
        labeledVar <- factor(df[, var],
                             levels = dfLabels$V1,
                             labels = dfLabels$V2)
        labeledVar
    } else {
        cat(sprintf("%s does not exist in the current directory. \n", filename))
        cat(sprintf("No labeling done for %s.", var))
        df[, var]
    }
}

labelDataFrame <- function(df, sep = ":") {
    #     read in codebooks from the current directory and
    #     use them to label values in the supplied data.frame
    listLabeled <- sapply(colnames(df), function(var) {
        labelValues(var, df, sep = sep)
    })
    dfLabeled <- data.frame(listLabeled)
    return(dfLabeled)
}

reorderResponses <- function(df, var, newLevels) {
    #     reorder factor levels of response variable
    df[, var] <- factor(df[, var],levels = newLevels)
    return(df)
}

handleMissingValues <- function(df, missingLabels) {
    #     remove missing responses from the dataset
    df <- filter(df, !(meaning %in% missingLabels))
    return(df)
}

subsetByCountriesInBothWaves <- function(df, wave1, wave2) {
    #     only include the countries that have responses in both waves
    firstWave <- df %>% filter(wave == wave1)
    secondWave <- df %>% filter(wave == wave2)
    
    firstWave <- firstWave[which(firstWave$country %in% secondWave$country), ]
    secondWave <- secondWave[which(secondWave$country %in% firstWave$country), ]
    
    df <- rbind(firstWave, secondWave)
    return(df)
}

reorderCountriesByProportion <- function(df, refWave) {
    #     reorders the levels of the country factor variable by
    #     the proportion of responses from the reference wave
    countryIndex <- df %>%
        group_by(meaning) %>%
        filter(wave == refWave) %>%
        filter(meaning == "Often") %>%
        arrange(desc(proportion))
    
    countryIndex <- data.frame(countryIndex)
    df$country <- factor(df$country, levels = countryIndex$country)
    return(df)
}

########################
# BEGIN SCRIPT
########################

## read in the .rdata file
dfSurvey <- load("~/Downloads/WVS_Longitudinal.rdata")
dfSurvey <- `WVS_Longitudinal_1981-2014_spss_v_2014_06_17_(beta)`

dfSurvey %>%
    ## pre-processing
    selectVars(code = c("S002", "S003", "S020", "F001"),
               name = c("wave", "country", "year", "meaning")) %>%
    factorizeVars() %>%
    labelDataFrame() %>%
    reorderResponses(var = "meaning", newLevels = newLevels) %>%
    handleMissingValues(missingLabels = missingLabels) %>%
    ## get proportion of responses for each country by wave
    group_by(wave, country, meaning) %>%
    summarise(count = n()) %>%
    mutate(proportion = count/sum(count)) %>%
    arrange(meaning, desc(proportion)) %>%
    ## prep data for plotting
    subsetByCountriesInBothWaves(wave1 = "2005-2009",
                                 wave2 = "2010-2014") %>%
    reorderCountriesByProportion(refWave = "2005-2009") %>%
    
    ## generate the horizontal stacked bar plot
    ggplot(aes(country, proportion, fill = meaning)) +
    geom_bar(stat = "identity", alpha = 7/8) + facet_grid(~wave) +
    ggtitle("How frequently do you think about meaning and purpose in life?") +
    xlab("Country") + ylab("Proportion of Survey Responses") +
    ## display proportion as percent
    scale_y_continuous(label = percent) +
    scale_fill_manual(values = rev(brewer.pal(n = 5, "RdYlBu"))) +
    coord_flip() + 
    ## minimalist theme
    theme_bw() +
    theme(legend.position = "bottom",
          legend.title = element_blank(),
          ## make reference lines darker
          panel.grid.major.x = element_line(color = "black"),
          panel.grid.major.y = element_blank(),
          panel.border = element_blank(),
          strip.background = element_blank(),
          axis.ticks = element_blank())

########################
# END SCRIPT
########################