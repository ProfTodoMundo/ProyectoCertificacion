# Crea un dataframe con los datos
data <- data.frame(
  Licenciatura = c("ISET", "AyPC", "CPyAU", "CAyCC", "GENOMICAS", "CiSOC", "COMYCULT", "CREACION", "DERECHO", "FEHDI", "HISTYSOCCON", "SOFTWARE", "ISTU", "ISEI", "ISENER", "MODELACION", "NUTRICION", "PROMOCION", "PROTECCION"),
  C = c(40221, 63532, 161383, 2865, 4429, 30339, 165426, 46718, 43184, 27880, 25704, 19503, 19246, 25305, 6545, 4922, 16725, 99276, 5178),
  NC = c(33779, 28768, 87123, 935, 2264, 14530, 74244, 18550, 16037, 15169, 12814, 10372, 13652, 19151, 2816, 2722, 4711, 54831, 2243)
)

# Cargar la librería ggplot2
library(ggplot2)
library(reshape2)

# Crear un gráfico de barras para C
# Crear un gráfico de barras para C
# Crear un gráfico de barras para C
colores <- c(
  "ISET" = "red", "AyPC" = "blue", "CPyAU" = "green", "CAyCC" = "brown", "GENOMICAS" = "magenta",
  "CiSOC" = "orange", "COMYCULT" = "pink", "CREACION" = "purple", "DERECHO" = "gray", "FEHDI" = "cyan",
  "HISTYSOCCON" = "black", "SOFTWARE" = "violet", "ISTU" = "darkblue", "ISEI" = "darkgreen", "ISENER" = "lightgreen",
  "MODELACION" = "gold", "NUTRICION" = "dodgerblue", "PROMOCION" = "darkred", "PROTECCION" = "darkorange"
)

# Crear un gráfico de barras para C
p_C <- ggplot(data, aes(x = Licenciatura, y = C, fill = Licenciatura)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Certificaciones (C) por Licenciatura",
    x = "Licenciatura",
    y = "Cantidad de Certificaciones (C)"
  ) +
  scale_fill_manual(values = colores) +  # Asignar colores según el diccionario colores
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), legend.position = "none")  # Inclinar las etiquetas en un ángulo de 45 grados

# Agregar etiquetas de valores para C
p_C <- p_C + geom_text(aes(label = ifelse(C > 1000, format(C, big.mark = ","), as.character(C))),
                       vjust = -0.5, size = 2, angle = 60)

# Crear un gráfico de barras para NC
p_NC <- ggplot(data, aes(x = Licenciatura, y = NC, fill = Licenciatura)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Certificaciones (NC) por Licenciatura",
    x = "Licenciatura",
    y = "Cantidad de Certificaciones (NC)"
  ) +
  scale_fill_manual(values = colores) +  # Asignar colores según el diccionario colores
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), legend.position = "none")  # Inclinar las etiquetas en un ángulo de 45 grados

# Agregar etiquetas de valores para NC
p_NC <- p_NC + geom_text(aes(label = ifelse(NC > 1000, format(NC, big.mark = ","), as.character(NC))),
                         vjust = -0.5, size = 2, angle = 60)

# Imprimir los gráficos
print(p_C)
print(p_NC)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
data <- data.frame(
  Licenciatura = c("ISET", "AyPC", "CPyAU", "CAyCC", "GENOMICAS", "CiSOC", "COMYCULT", "CREACION", "DERECHO", "FEHDI", "HISTYSOCCON", "SOFTWARE", "ISTU", "ISEI", "ISENER", "MODELACION", "NUTRICION", "PROMOCION", "PROTECCION"),
  C = c(40221, 63532, 161383, 2865, 4429, 30339, 165426, 46718, 43184, 27880, 25704, 19503, 19246, 25305, 6545, 4922, 16725, 99276, 5178),
  NC = c(33779, 28768, 87123, 935, 2264, 14530, 74244, 18550, 16037, 15169, 12814, 10372, 13652, 19151, 2816, 2722, 4711, 54831, 2243)
)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
View(data)
TTls <- data[,2]+data[,3]
data <- cbind(data,TTls);
Prop <- data[,2]/data[,4]
data <- cbind(data,Prop)
Prop2 <- data[,2]/data[,3]
data <- cbind(data,Prop2)

