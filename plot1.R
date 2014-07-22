###
# setwd("C:/Users/Dominic/ExploreAnalyzeData_Assignment-2")
# workingDir <- getwd()
# Source data-files have been un-zipped and placed in the root-directory
###

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Have total PM2.5_emissions decreased in the United States 
# from 1999 to 2008?
total.emissions <- aggregate(Emissions ~ year, NEI, sum)

png('plot1.png')
barplot(height=total.emissions$Emissions, names.arg=total.emissions$year,
        xlab="years", ylab=expression('total PM'[2]*' emission'),
        main=expression('Total PM'[2]*' emissions at various years'))
dev.off()
