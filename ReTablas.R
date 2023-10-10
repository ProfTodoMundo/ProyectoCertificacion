setwd("~/Documentos/MiGitHub/ProyectoCertificacion")

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
