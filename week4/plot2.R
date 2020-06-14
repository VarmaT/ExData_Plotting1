tot.emissions.baltimore <- NEI %>%
  subset(fips == "24510") %>%
  group_by(year) %>%
  summarize(Total.Emissions.Baltimore = sum(Emissions, 
                                            na.rm = TRUE))

with(tot.emissions.baltimore, 
     plot(x = year, 
          y = Total.Emissions.Baltimore, 
          ylab = "Total Annual Emissions [Tons]", 
          xlab = "Year",
          main = "Total Annual Emissions in Baltimore by Year",
          cex = 2,
          pch = 2,
          col = "red",
          lwd = 3))
tot.emissions.baltimore.2008 <- tot.emissions.baltimore[tot.emissions.baltimore$year == 2008, 2]
tot.emissions.baltimore.1999 <- tot.emissions.baltimore[tot.emissions.baltimore$year == 1999, 2]

delta.emissions.baltimore <- tot.emissions.baltimore.2008 - tot.emissions.baltimore.1999
delta.emissions.baltimore
###Total emissions from PM2.5 in Balitmore have decreased from 1999 to 2008 by 1411.898 tons