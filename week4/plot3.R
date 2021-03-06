tot.emissions.type <- NEI %>% 
  subset(fips == "24510") %>%
  group_by(year, type) %>%
  summarize(Total.Emissions.Type = sum(Emissions, na.rm = TRUE))

emissions.type <- ggplot(data = tot.emissions.type, aes(year, Total.Emissions.Type))

emissions.type <- emissions.type + 
  geom_point(color = "red", 
             size = 4, 
             alpha = 1/3) + 
  facet_grid(. ~ type) +
  xlab("Year") +
  ylab("Total Emissions [Tons]") +
  ggtitle("Total Annual Emissions in Baltimore by Year")

emissions.type
####All source types appear to have decreased from 1999 to 2008 in Baltimore, with the exception of of the "point" type source.
