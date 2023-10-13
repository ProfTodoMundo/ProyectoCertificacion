library(ggplot2)
library(scales)
#  - - - - - - - - - - - - - - - - - - 
# Crear un dataframe con los datos
data <- data.frame(
  Plantel = c("CH", "GAM", "DV", "IZT", "SLT", "PESCER"),
  Cantidad = c(134038, 250641, 86983, 134405, 593060, 23965)
)

# Definir una paleta de colores
colores <- c("red", "green", "blue", "brown", "orange", "magenta")

# Crear un gráfico de barras con colores personalizados
p <- ggplot(data, aes(x = Plantel, y = Cantidad, fill = Plantel)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Probabilidad de certificar en el primer intento",
    x = "Plantel",
    y = "Cantidad"
  ) +
  scale_fill_manual(values = colores) +  # Especificar la paleta de colores
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +  # Rotar etiquetas del eje X
  scale_y_continuous(labels = scales::comma) +  # Mostrar etiquetas con comas
  geom_text(aes(label = comma(Cantidad)), vjust = -0.5, size = 4)  # Agregar etiquetas de valores sobre las barras

# Imprimir el gráfico
print(p)

ggsave("graficoCertificacionesPlanteles.pdf", plot = p, device = "pdf")

# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 