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
  C = c(40221, 63532, 161383, 2865, 4429, 30339, 165426, 46718, 43184, 27880, 25704, 19503, 19246, 25305, 6545, 4922, 16725, 99276, 5178),
  NC = c(33779, 28768, 87123, 935, 2264, 14530, 74244, 18550, 16037, 15169, 12814, 10372, 13652, 19151, 2816, 2722, 4711, 54831, 2243)
)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
# Define una paleta de colores personalizada
colores <- c("ISET" = "red", "AyPC" = "blue", "CPyAU" = "green", "CAyCC" = "brown", 
             "GENOMICAS" = "magenta","CiSOC" = "orange", "COMYCULT" = "pink", 
             "CREACION" = "purple", "DERECHO" = "gray", "FEHDI" = "cyan",
             "HISTYSOCCON" = "black", "SOFTWARE" = "violet", "ISTU" = "darkblue",
             "ISEI" = "darkgreen", "ISENER" = "lightgreen","MODELACION" = "gold", 
             "NUTRICION" = "dodgerblue", "PROMOCION" = "darkred", "PROTECCION" = "darkorange")
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
# Crea la gráfica de barras para "C" con colores personalizados y etiquetas
p1 <- ggplot(data, aes(x = Categoria, y = C, fill = Categoria)) +
  geom_bar(stat = "identity") + geom_text(aes(label = comma(C)), vjust = -0.5, angle = 60, size = 3) +
  scale_fill_manual(values = colores) +  labs(title = "Favorables", x = "Licenciaturas", y = "Certificaciones") +
  theme_minimal() +  labs(fill = "") +  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Crea la gráfica de barras para "NC" con colores personalizados y etiquetas
p2 <- ggplot(data, aes(x = Categoria, y = NC, fill = Categoria)) +
  geom_bar(stat = "identity") +  geom_text(aes(label = comma(NC)), vjust = -0.5, angle = 60, size = 3) +
  scale_fill_manual(values = colores) +  labs(title = "No Favorables", x = "Licenciaturas", y = "Certificaciones") +
  theme_minimal() +  labs(fill = "")+  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Muestra las gráficas por separado
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
print(p1); print(p2); plot_list <- list(p1,p2); grid.arrange(grobs = plot_list, ncol = 2)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
#ggsave("graficoCertificacionesLic.pdf", plot = plot_list, device = "pdf")
pdf("graficoCertificacionesLic.pdf", width = 12.9,height = 7.36)
print(p1)
print(p2)
dev.off()
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<