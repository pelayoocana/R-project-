data("mtcars")
hist(mtcars$hp)
hist(mtcars$hp,
     breaks = 50,
     col = 'skyblue',
     main = "Hist de Caballos por coches ",
     xlab = "Hp(caballos)",
     ylab="Nº Coches")

library(ggplot2)
ggplot(data = mtcars,
       mapping = aes(x=hp)) +
  geom_histogram(bins=9)

# A continuación vamos a replicar dicho gráfico, pero vamos a separarlo por colores. Hasta ahora ha sido mas o menos una prueba de como ir haciendo gráficos y sacando las primeras conclusiones o incluso ideas acerca de las base de datos (mtcars)
ggplot(data = mtcars,
       mapping = aes(x = hp,
                     fill = factor(vs))) +
 geom_histogram(bins=9,
                 position = 'identity',
                 alpha=0.5)
 labs(title = 'titulo',
      fill = vs motor,
      x = 'caballos',
      y ='conteos')

