
# Group by year and summarize total emissions across the board
tot.emissions.year <- NEI %>% group_by(year) %>%summarize(Total.Emissions = sum(Emissions, na.rm = TRUE))

tot.emissions.year

with(tot.emissions.year, # plot data 
     plot(x = year, 
          y = Total.Emissions, 
          ylab = "Total Annual Emissions [Tons]", 
          xlab = "Year",
          main = "Total Annual Emissions in the US by Year",
          cex = 2,
          pch = 2,
          col = "red",
          lwd = 3))
tot.emissions.2008 <- tot.emissions.year[tot.emissions.year$year == 2008, 2]
tot.emissions.1999 <- tot.emissions.year[tot.emissions.year$year == 1999, 2]

delta.tot.emissions <- tot.emissions.2008 - tot.emissions.1999
delta.tot.emissions

#####Total emissions from PM2.5 have decreased in the US from 1999 to 2008