library(ggplot2)
library(reshape2)
# Crea un dataframe con los datos
df <- data.frame(
  Categoria = c("ISET", "AyPC", "CPyAU", "CAyCC", "GENOMICAS", "CiSOC", "COMYCULT", "CREACION", "DERECHO", "FEHDI", "HISTYSOCCON", "SOFTWARE", "ISTU", "ISEI", "ISENER", "MODELACION", "NUTRICION", "PROMOCION", "PROTECCION"),
  Valor = c(74000, 92300, 248506, 3800, 6693, 44869, 239670, 65268, 59221, 43049, 38518, 29875, 32898, 44456, 9361, 7644, 21436, 154107, 7421)
)

# Utiliza melt para remodelar los datos en un formato "long"
df_melted <- melt(df, id.vars = "Categoria")
y_lim_max <- max(df_melted$value) + 15000
# Crea el gráfico de barras
p <- ggplot(data = df_melted, aes(x = Categoria, y = value, fill = Categoria)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(name = "Licenciaturas", values = c(
    "ISET" = "red", "AyPC" = "blue", "CPyAU" = "green", "CAyCC" = "brown", "GENOMICAS" = "magenta",
    "CiSOC" = "orange", "COMYCULT" = "pink", "CREACION" = "purple", "DERECHO" = "gray", "FEHDI" = "cyan",
    "HISTYSOCCON" = "black", "SOFTWARE" = "violet", "ISTU" = "darkblue", "ISEI" = "darkgreen", "ISENER" = "lightgreen", 
    "MODELACION" = "gold", "NUTRICION" = "dodgerblue", "PROMOCION" = "darkred", "PROTECCION" = "darkorange")
  ) +
  labs(x = "", y = "Certificaciones", title = "Licenciaturas") +
  theme_minimal() +
  theme(legend.position = "none") +
  geom_text(aes(label = format(value, big.mark = ",", scientific = FALSE)), 
            hjust=-0.15,vjust = -0.5, size = 2.5, angle = 0.15) +
  theme(axis.text.x = element_blank()) +
  coord_flip()+
  ylim(0, y_lim_max)  # Ajusta los límites del eje y
print(p)
ggsave("graficoCertificacionesLicenciaturas.pdf", plot = p,  
       width = 8, height = 6, units = "in",device = "pdf")
