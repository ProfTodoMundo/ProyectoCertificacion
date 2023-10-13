# Cargar la biblioteca ggplot2
library(ggplot2)
library(scales)
# Crear un dataframe con los datos
data <- data.frame(
  Mes = 1:19, # Los meses del 01 al 19z
  CH = c(8263, 4132, 1235, 2173, 9193, 10566, 9718, 8183, 7756, 7005, 6653, 7688, 8749, 9753, 8400, 6383, 7120, 4928, 3727),
  GAM = c(146, 326, 241, 697, 1476, 1852, 21549, 22348, 15305, 12963, 16435, 24588, 19903, 20987, 23058, 18276, 17947, 14830, 9678),
  DV = c(2321, 2328, 1006, 3130, 2647, 11588, 4843, 3749, 3881, 4311, 5044, 5988, 6007, 4963, 4558, 5165, 6180, 4321, 2962),
  IZT = c(4707, 11398, 5370, 1191, 8157, 7523, 7076, 6545, 5612, 5406, 5656, 8342, 6911, 7590, 7571, 8166, 8601, 8548, 5775),
  SLT = c(1430, 5101, 12801, 31416, 80933, 64603, 38846, 36801, 33917, 31698, 29265, 35439, 32264, 31143, 29166, 25932, 25392, 21391, 13907),
  PESCER = c(0, 0, 0, 0, 2794, 1029, 1844, 2399, 2020, 2342, 1368, 1615, 2750, 217, 2071, 1011, 825, 1474, 206)
)



ggplot(data, aes(x = Mes)) +
  geom_line(aes(y = CH, color = "CH"), linetype = "solid") +
  geom_line(aes(y = GAM, color = "GAM"), linetype = "solid") +
  geom_line(aes(y = DV, color = "DV"), linetype = "solid") +
  geom_line(aes(y = IZT, color = "IZT"), linetype = "solid") +
  geom_line(aes(y = SLT, color = "SLT"), linetype = "solid") +
  geom_line(aes(y = PESCER, color = "PESCER"), linetype = "solid") +
  geom_text(data = data, aes(label = comma(CH), x = Mes, y = CH), vjust = -0.5, hjust = 0, size = 2, angle = 60) +
  geom_text(data = data, aes(label = comma(GAM), x = Mes, y = GAM), vjust = -0.5, hjust = 0, size = 2, angle = 60) +
  geom_text(data = data, aes(label = comma(DV), x = Mes, y = DV), vjust = -0.5, hjust = 0, size = 2, angle = 60) +
  geom_text(data = data, aes(label = comma(IZT), x = Mes, y = IZT), vjust = -0.5, hjust = 0, size = 2, angle = 60) +
  geom_text(data = data, aes(label = comma(SLT), x = Mes, y = SLT), vjust = -0.5, hjust = 0, size = 2, angle = 60) +
  geom_text(data = data, aes(label = comma(PESCER), x = Mes, y = PESCER), vjust = -0.5, hjust = 0, size = 2, angle = 60) +
  labs(title = "Certificacion en Planteles por Generacion",
       x = "Generacion",
       y = "Certificacion") +
  scale_color_manual(name="Planteles",values = c("CH" = "red", "GAM" = "blue", "DV" = "green", "IZT" = "brown", "SLT" = "magenta", "PESCER" = "orange")) +
  labs(fill = "") + # Elimina el texto "colour"
  scale_x_continuous(breaks = 1:19) +
  theme_minimal()
# Guardar el gráfico en formato PDF
ggsave("graficoCertificacionPlantelGeneracion.pdf", width = 8, height = 6, units = "in")
