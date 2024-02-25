library(tidyverse)
library(lubridate)

logFile <- file.choose()

b <- read.csv(logFile, header=F)
g <- b[,c(1,3)]
b <- b[,c(1,2)]

names(b) <- names(g) <- c("dt", "temp")

b$dt <- ymd_hms(b$dt)
g$dt <- ymd_hms(g$dt)

p <- ggplot(b, aes(x=dt, y=temp)) +
  geom_line(colour="brown") +
  geom_line(data=g, colour="darkgreen") +
  labs(x="Time", y= expression("Temperature " ( degree*C))) +
  theme_minimal()

p

#ggsave("temp_log_plot_both_sensors.png")


