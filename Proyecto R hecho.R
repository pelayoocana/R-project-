library(ggplot2)
library(dplyr)



# Plot
mtcars %>%
  tail(10) %>%
  ggplot( aes(x=qsec, y=mpg)) +
  geom_line() +
  geom_point()
