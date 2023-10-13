# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
setwd("~/Documentos/MiGitHub/ProyectoCertificacion")
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
library(ggplot2)
library(scales)
library(gridExtra)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
# Los datos de la tabla
data <- data.frame(
  Categoria = c("ISET", "AyPC", "CPyAU", "CAyCC", "GENOMICAS", "CiSOC", "COMYCULT", "CREACION", "DERECHO", "FEHDI", "HISTYSOCCON", "SOFTWARE", "ISTU", "ISEI", "ISENER", "MODELACION", "NUTRICION", "PROMOCION", "PROTECCION"),
  V1 = c(74000, 92300, 248506, 3800, 6693, 44869, 239670, 65268, 59221, 43049, 38518, 29875, 32898, 44456, 9361, 7644, 21436, 154107, 7421)
)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
# Define una paleta de colores personalizada
colores <- c("ISET" = "red", "AyPC" = "blue", "CPyAU" = "green", 
             "CAyCC" = "brown", "GENOMICAS" = "magenta","CiSOC" = "orange",
             "COMYCULT" = "pink", "CREACION" = "purple", "DERECHO" = "gray",
             "FEHDI" = "cyan","HISTYSOCCON" = "black", "SOFTWARE" = "violet", 
             "ISTU" = "darkblue","ISEI" = "darkgreen", "ISENER" = "lightgreen",
             "MODELACION" = "gold", "NUTRICION" = "dodgerblue", 
             "PROMOCION" = "darkred", "PROTECCION" = "darkorange")
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
# Crea el gráfico de barras con etiquetas personalizadas
p <- ggplot(data, aes(x = reorder(Categoria, V1), y = V1, fill = Categoria)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = comma(V1)), vjust = -0.5, angle = 60, size = 3) +
  scale_fill_manual(values = colores) +
  labs(title = "Licenciaturas", x = "", y = "Certificaciones") +
  theme_minimal() +  labs(fill = "")+
  theme(axis.text.x = element_text(angle = 60, hjust = 1))
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
print(p)
ggsave("graficoCertificacionesLicGral.pdf", plot = p, width = 12.9, height = 7.36)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<