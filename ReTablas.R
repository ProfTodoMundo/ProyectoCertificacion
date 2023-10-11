setwd("~/Documentos/MiGitHub/ProyectoCertificacion")
setwd("~/Desktop/MiGithub/ProyectoCertificacion")

# Datos de la tabla
data <- matrix(c(
  8263, 146, 2321, 4707, 1430, 0,
  4132, 326, 2328, 11398, 5101, 0,
  1235, 241, 1006, 5370, 12801, 0,
  2173, 697, 3130, 1191, 31416, 0,
  9193, 1476, 2647, 8157, 80933, 2794,
  10566, 1852, 11588, 7523, 64603, 1029,
  9718, 21549, 4843, 7076, 38846, 1844,
  8183, 22348, 3749, 6545, 36801, 2399,
  7756, 15305, 3881, 5612, 33917, 2020,
  7005, 12963, 4311, 5406, 31698, 2342,
  6653, 16435, 5044, 5656, 29265, 1368,
  7688, 24588, 5988, 8342, 35439, 1615,
  8749, 19903, 6007, 6911, 32264, 2750,
  9753, 20987, 4963, 7590, 31143, 217,
  8400, 23058, 4558, 7571, 29166, 2071,
  6383, 18276, 5165, 8166, 25932, 1011,
  7120, 17947, 6180, 8601, 25392, 825,
  4928, 14830, 4321, 8548, 21391, 1474,
  3727, 9678, 2962, 5775, 13907, 206
), nrow = 19, byrow = TRUE)

# Asignar nombres a las filas y columnas
rownames(data) <- c("01", "02", "03", "04", "05", "06", "07", 
                    "08", "09", "10", "11", "12", "13", "14", 
                    "15", "16", "17", "18", "19")
colnames(data) <- c("CH", "GAM", "DV", "IZT", "SLT", "PESCER")
print(data)
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
# Calcular porcentajes por generacion
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
suma <- matrix(0,19,1)
for(i in 1:19){
  for(j in 1:6){
    suma[i] <- suma[i] +data[i,j]
  }
}
PorcentajesGeneracion <- matrix(0,19,6)
for(i in 1:19){
  PorcentajesGeneracion[i,]<- round(data[i,]/suma[i]*100,2); print(sum(data[1,]/suma[1]))
}
print(PorcentajesGeneracion)
rownames(PorcentajesGeneracion) <- c("01", "02", "03", "04", "05", "06", "07", 
                    "08", "09", "10", "11", "12", "13", "14", 
                    "15", "16", "17", "18", "19")
colnames(PorcentajesGeneracion) <- c("CH", "GAM", "DV", "IZT", "SLT", "PESCER")
print(PorcentajesGeneracion)
DatosGeneracion <- cbind(suma, data); print(DatosGeneracion)
colnames(DatosGeneracion) <- c("Totales","CH", "GAM", "DV", "IZT", "SLT", "PESCER")
print(DatosGeneracion)
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
# Calcular porcentajes totales por generacion
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
DatosGeneracion[,1]
total <- sum(DatosGeneracion[,1])
PorcentajeDatosGeneracion <- (DatosGeneracion[,1]/total)*100
sum(PorcentajeDatosGeneracion)
DatosGeneracion <- cbind(DatosGeneracion,round(PorcentajeDatosGeneracion,2))
colnames(DatosGeneracion) <- c("Totales","CH", "GAM", "DV", "IZT", "SLT", 
                               "PESCER", "% Gen")
print(DatosGeneracion)
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
# Calcular porcentajes por Planteles
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
suma <- matrix(0,6,1)
for(i in 1:6){
  suma[i] <- sum(data[,i])
}
PorcentajesPlantel <- matrix(0,19,6)
for(i in 1:6){
  PorcentajesPlantel[,i] <- data[,i]/suma[i]*100; print(sum(PorcentajesPlantel[,i]))
}
PorcentajesPlantel <- round(PorcentajesPlantel,2)
rownames(PorcentajesPlantel) <- c("01", "02", "03", "04", "05", "06", "07", 
                           "08", "09", "10", "11", "12", "13", "14", 
                           "15", "16", "17", "18", "19")
colnames(PorcentajesPlantel) <- c("CH", "GAM", "DV", "IZT", "SLT", "PESCER")
print(PorcentajesPlantel)
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
# Calcular porcentajes totales por Planteles
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
DatosPlantel <- c()
DatosPlantel <- rbind(t(suma),data)
rownames(DatosPlantel) <- c("Ttl","01", "02", "03", "04", "05", "06", "07", 
                            "08", "09", "10", "11", "12", "13", "14", "15",
                            "16", "17", "18", "19")
print(DatosPlantel)
total <- sum(DatosPlantel[1,])
DatosPlantel[1,]
PorcentajeDatosplantel <- (DatosPlantel[1,]/total)*100
sum(PorcentajeDatosGeneracion)
DatosPlantel <- rbind(DatosPlantel,round(PorcentajeDatosplantel,2))
rownames(DatosPlantel) <- c("Ttl","01", "02", "03", "04", "05", "06", "07", 
                            "08", "09", "10", "11", "12", "13", "14", "15",
                            "16", "17", "18", "19","% Plantel")
print(DatosPlantel)
print(DatosGeneracion)

# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
library(xtable)
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
# Crear objetos xtable para las tablas de porcentajes por generación y por planteles
xtable_generacion <- xtable(PorcentajesGeneracion, caption = "Porcentajes por Generación")
xtable_planteles <- xtable(PorcentajesPlantel, caption = "Porcentajes por Planteles")
xtable_datosgeneracion <- xtable(DatosGeneracion, caption = "Datos por Generación")
xtable_datosplanteles <- xtable(DatosPlantel, caption = "Datos por Planteles")

# Imprimir las tablas en formato LaTeX
print(xtable_generacion, caption.placement = "top", type = "latex")
print(xtable_planteles, caption.placement = "top", type = "latex")
print(xtable_datosplanteles, caption.placement = "top", type = "latex")
print(xtable_datosgeneracion, caption.placement = "top", type = "latex")
# - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - - 
# Guardar la tabla de porcentajes por generación en un archivo LaTeX
cat("\\documentclass{article}\n", file = "tabla_generacion.tex")
cat("\\usepackage{booktabs}\n", file = "tabla_generacion.tex", append = TRUE)
cat("\\begin{document}\n", file = "tabla_generacion.tex", append = TRUE)
print(xtable_generacion, caption.placement = "top", type = "latex", file = "tabla_generacion.tex", append = TRUE)
cat("\\end{document}\n", file = "tabla_generacion.tex", append = TRUE)


cat("\\documentclass{article}\n", file = "tabla_datosgeneracion.tex")
cat("\\usepackage{booktabs}\n", file = "tabla_datosgeneracion.tex", append = TRUE)
cat("\\begin{document}\n", file = "tabla_datosgeneracion.tex", append = TRUE)
print(xtable_datosgeneracion, caption.placement = "top", type = "latex", file = "tabla_datosgeneracion.tex", append = TRUE)
cat("\\end{document}\n", file = "tabla_datosgeneracion.tex", append = TRUE)


# Guardar la tabla de porcentajes por planteles en un archivo LaTeX
cat("\\documentclass{article}\n", file = "tabla_planteles.tex")
cat("\\usepackage{booktabs}\n", file = "tabla_planteles.tex", append = TRUE)
cat("\\begin{document}\n", file = "tabla_planteles.tex", append = TRUE)
print(xtable_planteles, caption.placement = "top", type = "latex", file = "tabla_planteles.tex", append = TRUE)
cat("\\end{document}\n", file = "tabla_planteles.tex", append = TRUE)



# Guardar la tabla de porcentajes por planteles en un archivo LaTeX
cat("\\documentclass{article}\n", file = "tabla_datosplanteles.tex")
cat("\\usepackage{booktabs}\n", file = "tabla_datosplanteles.tex", append = TRUE)
cat("\\begin{document}\n", file = "tabla_datosplanteles.tex", append = TRUE)
print(xtable_datosplanteles, caption.placement = "top", type = "latex", file = "tabla_datosplanteles.tex", append = TRUE)
cat("\\end{document}\n", file = "tabla_datosplanteles.tex", append = TRUE)



#  - - - - - - - - - - - - 
#  
library(ggplot2)
library(scales)  # Cargar el paquete "scales"

# Datos de la tabla
data <- data.frame(
  X = 1:19,
  CH = c(48.99, 17.75, 5.98, 5.63, 8.74, 10.87, 11.59, 10.23, 11.32, 10.99, 10.33, 9.19, 11.42, 13.06, 11.23, 9.83, 10.78, 8.88, 10.28),
  GAM = c(0.87, 1.40, 1.17, 1.81, 1.40, 1.91, 25.69, 27.93, 22.35, 20.34, 25.51, 29.39, 25.99, 28.11, 30.82, 28.15, 27.17, 26.72, 26.69),
  DV = c(13.76, 10.00, 4.87, 8.11, 2.52, 11.93, 5.77, 4.68, 5.67, 6.77, 7.83, 7.16, 7.84, 6.65, 6.09, 7.95, 9.35, 7.79, 8.17),
  IZT = c(27.91, 48.95, 26.00, 3.08, 7.75, 7.74, 8.44, 8.18, 8.19, 8.48, 8.78, 9.97, 9.02, 10.17, 10.12, 12.58, 13.02, 15.40, 15.93),
  SLT = c(8.48, 21.91, 61.98, 81.37, 76.93, 66.49, 46.31, 45.99, 49.52, 49.74, 45.43, 42.36, 42.13, 41.72, 38.98, 39.94, 38.43, 38.55, 38.36),
  PESCER = c(0.00, 0.00, 0.00, 0.00, 2.66, 1.06, 2.20, 3.00, 2.95, 3.68, 2.12, 1.93, 3.59, 0.29, 2.77, 1.56, 1.25, 2.66, 0.57)
)

# Crear una gráfica base
p <- ggplot(data, aes(X))

# Agregar líneas y puntos para cada columna
p <- p +
  geom_line(aes(y = CH), color = "red") +
  geom_point(aes(y = CH), color = "red") +
  geom_line(aes(y = GAM), color = "blue") +
  geom_point(aes(y = GAM), color = "blue") +
  geom_line(aes(y = DV), color = "green") +
  geom_point(aes(y = DV), color = "green") +
  geom_line(aes(y = IZT), color = "brown") +
  geom_point(aes(y = IZT), color = "brown") +
  geom_line(aes(y = SLT), color = "magenta") +
  geom_point(aes(y = SLT), color = "magenta") +
  geom_line(aes(y = PESCER), color = "orange") +
  geom_point(aes(y = PESCER), color = "orange")

# Añadir etiquetas de color en el lado superior derecho
p <- p + annotate("text", x = 19.5, y = 100, label = "CH", color = "red") +
  annotate("text", x = 19.5, y = 95, label = "GAM", color = "blue") +
  annotate("text", x = 19.5, y = 90, label = "DV", color = "green") +
  annotate("text", x = 19.5, y = 85, label = "IZT", color = "brown") +
  annotate("text", x = 19.5, y = 80, label = "SLT", color = "magenta") +
  annotate("text", x = 19.5, y = 75, label = "PESCER", color = "orange")

# Añadir líneas de color que conectan las etiquetas con las series correspondientes
p <- p +
  geom_segment(aes(x = 18.3, xend = 18.7, y = 100, yend = 100), color = "red") +
  geom_segment(aes(x = 18.3, xend = 18.7, y = 95, yend = 95), color = "blue") +
  geom_segment(aes(x = 18.3, xend = 18.7, y = 90, yend = 90), color = "green") +
  geom_segment(aes(x = 18.3, xend = 18.7, y = 85, yend = 85), color = "brown") +
  geom_segment(aes(x = 18.3, xend = 18.7, y = 80, yend = 80), color = "magenta") +
  geom_segment(aes(x = 18.3, xend = 18.7, y = 75, yend = 75), color = "orange")

# Ajustar el escalado del eje X
p <- p + scale_x_continuous(breaks = data$X)

# Configurar etiquetas y tema
p <- p +
  labs(title = "Porcentaje de certificaciones en planteles por generación",
       x = "Generaciones",
       y = "Porcentajes de certificación") +
  theme_minimal()

# Imprimir la gráfica
print(p)

# Guardar el gráfico en formato PDF
ggsave("graficoPorcentajesPlantel.pdf", plot = p, device = "pdf")
#  - - - - - - - - - - 
#  
library(ggplot2)
library(scales)  # Cargar el paquete "scales"

# Datos de la tabla de Porcentajes por Planteles
data_planteles <- data.frame(
  X = 1:19,
  CH = c(6.28, 3.14, 0.94, 1.65, 6.98, 8.03, 7.38, 6.22, 5.89, 5.32, 5.05, 5.84, 6.65, 7.41, 6.38, 4.85, 5.41, 3.74, 2.83),
  GAM = c(0.06, 0.13, 0.10, 0.29, 0.61, 0.76, 8.88, 9.21, 6.31, 5.34, 6.77, 10.13, 8.20, 8.65, 9.50, 7.53, 7.40, 6.11, 3.99),
  DV = c(2.73, 2.74, 1.18, 3.68, 3.11, 13.63, 5.70, 4.41, 4.57, 5.07, 5.93, 7.05, 7.07, 5.84, 5.36, 6.08, 7.27, 5.08, 3.49),
  IZT = c(3.62, 8.76, 4.13, 0.92, 6.27, 5.78, 5.44, 5.03, 4.31, 4.15, 4.35, 6.41, 5.31, 5.83, 5.82, 6.27, 6.61, 6.57, 4.44),
  SLT = c(0.25, 0.88, 2.20, 5.40, 13.92, 11.11, 6.68, 6.33, 5.83, 5.45, 5.03, 6.09, 5.55, 5.36, 5.02, 4.46, 4.37, 3.68, 2.39),
  PESCER = c(0.00, 0.00, 0.00, 0.00, 11.66, 4.29, 7.69, 10.01, 8.43, 9.77, 5.71, 6.74, 11.48, 0.91, 8.64, 4.22, 3.44, 6.15, 0.86)
)

# Crear una gráfica base para Porcentajes por Planteles
p_planteles <- ggplot(data_planteles, aes(X))

# Agregar líneas y puntos para cada columna en Porcentajes por Planteles
p_planteles <- p_planteles +
  geom_line(aes(y = CH), color = "red") +
  geom_point(aes(y = CH), color = "red") +
  geom_line(aes(y = GAM), color = "blue") +
  geom_point(aes(y = GAM), color = "blue") +
  geom_line(aes(y = DV), color = "green") +
  geom_point(aes(y = DV), color = "green") +
  geom_line(aes(y = IZT), color = "brown") +
  geom_point(aes(y = IZT), color = "brown") +
  geom_line(aes(y = SLT), color = "magenta") +
  geom_point(aes(y = SLT), color = "magenta") +
  geom_line(aes(y = PESCER), color = "orange") +
  geom_point(aes(y = PESCER), color = "orange")

# Añadir etiquetas de color en el lado superior derecho para Porcentajes por Planteles
p_planteles <- p_planteles + annotate("text", x = 19.5, y = 100, label = "CH", color = "red") +
  annotate("text", x = 19.5, y = 95, label = "GAM", color = "blue") +
  annotate("text", x = 19.5, y = 90, label = "DV", color = "green") +
  annotate("text", x = 19.5, y = 85, label = "IZT", color = "brown") +
  annotate("text", x = 19.5, y = 80, label = "SLT", color = "magenta") +
  annotate("text", x = 19.5, y = 75, label = "PESCER", color = "orange")

# Añadir líneas de color que conectan las etiquetas con las series correspondientes para Porcentajes por Planteles
p_planteles <- p_planteles +
  geom_segment(aes(x = 19.3, xend = 19.7, y = 100, yend = 100), color = "red") +
  geom_segment(aes(x = 19.3, xend = 19.7, y = 95, yend = 95), color = "blue") +
  geom_segment(aes(x = 19.3, xend = 19.7, y = 90, yend = 90), color = "green") +
  geom_segment(aes(x = 19.3, xend = 19.7, y = 85, yend = 85), color = "brown") +
  geom_segment(aes(x = 19.3, xend = 19.7, y = 80, yend = 80), color = "magenta") +
  geom_segment(aes(x = 19.3, xend = 19.7, y = 75, yend = 75), color = "orange")

# Ajustar el escalado del eje X para Porcentajes por Planteles
p_planteles <- p_planteles + scale_x_continuous(breaks = data_planteles$X)

# Configurar etiquetas y tema para Porcentajes por Planteles
p_planteles <- p_planteles +
  labs(title = "Porcentaje de certificaciones en planteles por generación",
       x = "Generaciones",
       y = "Porcentajes de certificación") +
  theme_minimal()

# Imprimir la gráfica para Porcentajes por Planteles
#print(p_planteles)
# Ajustar el escalado del eje Y para Porcentajes por Planteles
p_planteles <- p_planteles +
  scale_x_continuous(breaks = data_planteles$X) +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by = 1.5))

# Configurar etiquetas y tema para Porcentajes por Planteles
p_planteles <- p_planteles +
  labs(title = "Porcentaje de certificaciones en planteles por generación",
       x = "Generaciones",
       y = "Porcentajes de certificación") +
  theme_minimal()

# Imprimir la gráfica para Porcentajes por Planteles
print(p_planteles)
      


# - - - - - - - - - - -
# 

                                     