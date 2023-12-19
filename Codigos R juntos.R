library(GGally)


# From the help page:
mpg_head<- head(mpg)
print(mpg_head)
mpg_tail<- tail(mpg)
print(mpg_tail)
data(mpg_head)
ggpairs(mpg_head, columns =4:6 , ggplot2::aes(colour='class')) 



library(ggplot2)

# Ordenar los datos por mpg
mtcars_sorted <- mtcars[order(mtcars$mpg), ]

# Gráfico de líneas progresivas (hp vs qsec)
ggplot(mtcars_sorted, aes(x = hp, y = qsec)) +
  geom_path() +
  labs(x = "Horsepower", y = "Quarter Mile Time", title = "Progressive Line Plot: Horsepower vs Quarter Mile Time")


library(dplyr)
library(ggplot2)

# Obtener los porcentajes de coches por número de cilindros
cyl_counts <- mtcars %>%
  count(cyl) %>%
  mutate(percentage = prop.table(n) * 100)

# Gráfico de barras apiladas
ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar(aes(y = ..prop.., group = 1)) +
  geom_text(data = cyl_counts, aes(label = paste0(round(percentage, 1), "%"), y = percentage / 100), vjust = -0.5) +
  labs(x = "Cylinders", y = "Percentage of Cars", title = "Percentage of Cars by Number of Cylinders") +
  scale_y_continuous(labels = scales::percent) +
  theme_minimal()

library(ggplot2)
library(hrbrthemes)
library(dplyr)
library(tidyr)
library(viridis)

# The diamonds dataset is natively available with R.

# Without transparency (left)
p1 <- ggplot(data=mtcars, aes(x=mpg, group=carb, fill=gear)) +
  geom_density(adjust=1.5) +
  theme_ipsum()
#p1

library(ggplot2)

# Crear el gráfico de barras
ggplot(mtcars, aes(factor(cyl), hp, fill = factor(cyl))) +
  geom_bar(stat = "summary", fun = "mean") +
  labs(x = "Cylinders", y = "Average MPG", title = "Average MPG by Number of Cylinders") +
  scale_fill_discrete(name = "Cylinders") +
  theme_minimal()


#En este gráfico podemos apreciar na división por barras atendiendo al número de cilindro.
# Podemso observar que siguen una relación directa con los caballos de potencia (HP). 

library(ggplot2)
ggplot( mtcars , aes ( x = mpg , y = qsec )) +
  geom_point () +
  labs ( title = " Scatter Plot ", x = "MPG", y = " Qsec")

library(GGally)



# Check correlation between variables
#cor(data) 

# Nice visualization of correlations
ggcorr(mpg, method = c("cyl", "qsec")) 

library(GGally)



# Check correlation between variables
#cor(data) 

# Nice visualization of correlations
ggcorr(mtcars, method = c("everything", "pearson")) 

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

library(GGally)
mpg_coches <- data.frame(mpg = mtcars$mpg)
vs_coches <- data.frame(vs = mtcars$vs)
# Seleccionar columnas específicas para un nuevo dataset
nuevo_coches <- mtcars[, c("mpg", "vs")]
nuevo_coches2 <- mtcars[, c("carb", "mpg")]

ggpairs(nuevo_coches2, title = "Correlogram with 'mpg' from mtcars dataset")

ggpairs(head, title = "Correlogram with 'mpg' from mtcars dataset")

# Quick display of two cabapilities of GGally, to assess the distribution and correlation of variables 
library(GGally)

# Check correlations (as scatterplots), distribution and print corrleation coefficient 
ggpairs(mtcars, title="correlogram with ggpairs()") 

library(GGally)

# Check correlations (as scatterplots), distribution and print corrleation coefficient 
ggpairs(head, title="correlogram with ggpairs()") 

ggplot(dat = mtcars, aes(x=gear, y=hp, fill= factor(vs))) +
  geom_bar(stat="identity", alpha=.5, width=.4) +
  scale_fill_grey(start=0, end=0.8) +  # start and end define the range of grays
  theme_bw()

# Gear, son las marchas/caja de cambios. Entonces, podemos deducir que los coches con mayor numero de cambios o
# Crab, se refiere a los carburadores

ggplot(dat = mtcars, aes(x=gear, y=hp, fill= factor(vs)) +
         geom_bar(stat="identity", alpha=0.5 , width=.4) +
         scale_fill_grey(start=0, end=0.8) +  # start and end define the range of grays
         theme_bw()
       
       vs_coches %>%
         filter(text %in% c("", "About Even", "Probable", "Almost Certainly")) %>%
         ggplot( aes(x=value, color=text, fill=text)) +
         geom_density(alpha=0.6) +
         scale_fill_viridis(discrete=TRUE) +
         scale_color_viridis(discrete=TRUE) +
         geom_text( data=annot, aes(x=x, y=y, label=text, color=text), hjust=0, size=4.5) +
         theme_ipsum() +
         theme(
           legend.position="none"
         ) +
         ylab("") +
         xlab("Assigned Probability (%)")
       library(ggplot2)
       
       
# Most basic violin chart
p <- ggplot(mtcars_sorted, aes(x=mpg, y=gear)) +
      print(p)



library(ggplot2)
library(ggpattern)

ggplot(data=mtcars, aes(x= mpg, y = qsec)) +
  geom_col_pattern(
    aes(pattern="stripes",
        pattern_angle= 45,
        pattern_spacing = 0.05
    ), 
    fill            = 'white',
    colour          = 'black', 
    pattern_density = 0.5, 
    pattern_fill    = 'red',
    pattern_colour  = 'black',
    width = 16
  )


#Demostración de algunas de las posibilidades que nos presenta R a la hora de la representación en histogramas     



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












