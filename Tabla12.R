# Cargar la librería ggplot2
library(ggplot2)
# Crea un dataframe con los datos de la tabla
data <- data.frame(
  Año = c(01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22),
  Cantidad = c(26173, 2927, 5109, 10144, 12565, 28147, 41332, 56299, 99032, 71193, 72554, 3774, 69575, 74449, 78721, 80783, 81429, 82974, 86330, 44395, 122594, 38627)
)

# Cargar la librería ggplot2
library(ggplot2)

# Define el paso personalizado para el eje Y
paso_y <- 5000  # Personaliza el paso según tus necesidades

# Crear un gráfico de líneas
p <- ggplot(data, aes(x = Año, y = Cantidad)) +
  geom_line(color = "dodgerblue") +
  geom_point(color = "dodgerblue") +
  labs(
    title = "Número de certificaciones por año en toda la Universidad",
    x = "Año",
    y = "Cantidad de certificaciones"
  ) +
  scale_x_continuous(breaks = c(1:22),
                     labels = c("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22")) +
  scale_y_continuous(breaks = seq(0, max(data$Cantidad), by = paso_y)) +  # Personaliza el paso en el eje Y
  theme_minimal()

# Agregar etiquetas de valores
p <- p + geom_text(aes(label = format(Cantidad, big.mark = ",", scientific = FALSE)), vjust = -0.5, size = 2.5, angle = 60)

# Imprimir el gráfico
print(p)

ggsave("graficoCertificacionesUACManual.pdf", plot = p,width = 8, height = 6, units = "in", device = "pdf")

