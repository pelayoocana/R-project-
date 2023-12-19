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
    
    
    
    

    
    
    
    

