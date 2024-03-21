#Alumna: ALEJANDRA GUZMÁN DIMAS
#HEATMAPS EN R

#Dé qué trata la base de datos
?mtcars

#Ocupar data de R
mtcars

#Ver solo primeros 6 datos
head(mtcars)

#¿Qué tipo de data es "mtcars"?
class(mtcars)

#Transformar data frame en matriz
mtcars_matrix=data.matrix(mtcars)

#Ver solo primeros datos
head(mtcars_matrix)

#¿Qué tipo de data es "mtcars_matrix"
class(mtcars_matrix)

#PRIMER MAPA DE CALOR
heatmap(mtcars_matrix)

#Profundizar en los argumentos del paquete heatmap
?heatmap

#UN NUEVO MAPA DE CALOR (lo que nos interesa escalarestáen las columnas no en las filas)
heatmap(mtcars_matrix, scale="colum")

#Hacer nuestra propia paleta de colores
colores_blue=colorRampPalette(c("lightblue","cornflowerblue","navyblue"))(256)

#Volver a crear el mapa de calor (ahora con paleta de color)
heatmap(mtcars_matrix, scale="colum", col=colores_blue)

#Eliminar el dendrograma horizontal
heatmap(mtcars_matrix, scale="colum", col=colores_blue,
        Colv = NA,
        margins=c(5,10),
        xlab="Especificación de características", ylab="Modelos de autos",
        main="Mapa de calor")

#Obtener nombre de las columnas de la matriz
colnames(mtcars_matrix)

#Cambiar color de mapa de calor
library(viridis)
viridis_pal()

heatmap(mtcars_matrix, scale="colum", 
        col=viridis_pal(option = "viridis")(6),
        Colv = NA,
        margins=c(5,10),
        xlab="Especificación de características", ylab="Modelos de autos",
        main="Mapa de calor")


heatmap(mtcars_matrix, scale="colum", 
        col=viridis_pal(option = "magma")(6),
        Colv = NA,
        margins=c(5,10),
        xlab="Especificación de características", ylab="Modelos de autos",
        main="Mapa de calor")

heatmap(mtcars_matrix, scale="colum", 
        col=rainbow(6),
        Colv = NA,
        margins=c(5,10),
        xlab="Especificación de características", ylab="Modelos de autos",
        main="Mapa de calor")
image(1:6, 1, as.matrix(1:6), col=rainbow(6),xlab = "Leyenda", ylab = "", xaxt="n", bty="n")

