# Calcular media, moda, m�ximo y m�nimo para la variable mpg en mtcarlibrary(ggplot2)
library(ggplot2)
# Gr�fico de dispersi�n y l�neas para mtcars
ggplot(mtcars, aes(x = qsec, y = mpg, group = 1)) +
  geom_line(aes(color = "line")) +
  geom_point(aes(color = "point")) +
  scale_color_manual(values = c("line" = "blue", "point" = "red")) +
  ggtitle("Relationship between qsec and mpg in mtcars") +
  ylab("Miles/(US) gallon") +
  xlab("1/4 mile time (s)") +
  theme_minimal()

