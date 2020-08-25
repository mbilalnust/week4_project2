## read in emissions data and classification code
emissions <- readRDS("C:/Users/tops/Desktop/coursera project/exdata_data_NEI_data/summarySCC_PM25.rds")
code <- readRDS("C:/Users/tops/Desktop/coursera project/exdata_data_NEI_data/Source_Classification_Code.rds")

## add up the total emissions for each year
agg_by_year <- aggregate(emissions$Emissions, by=list(year=emissions$year), FUN=sum)

## create the plot
png(filename = "plot1.png")
plot(agg_by_year$year, agg_by_year$x, type = "l", 
     main = "Total Emissions of PM2.5 in Baltimore City",
     ylab = "Total emissions of PM2.5 (tons)",
     xlab = "Year")
dev.off()
