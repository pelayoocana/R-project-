# Calcular media, moda, máximo y mínimo para la variable mpg en mtcarlibrary(ggplot2)
library(ggplot2)
# Gráfico de dispersión y líneas para mtcars
ggplot(mtcars, aes(x = qsec, y = mpg, group = 1)) +
  geom_line(aes(color = "line")) +
  geom_point(aes(color = "point")) +
  scale_color_manual(values = c("line" = "blue", "point" = "red")) +
  ggtitle("Relationship between qsec and mpg in mtcars") +
  ylab("Miles/(US) gallon") +
  xlab("1/4 mile time (s)") +
  theme_minimal()

