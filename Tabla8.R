# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
library(ggplot2)
library(reshape2)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
# Crear un dataframe con los datos
data <- data.frame(
  Años = 1:22, # Los meses del 01 al 22
  CH = c(2689, 1976, 2113, 2715, 1835, 2270, 3558, 4214, 8975, 8055, 8245, 4171, 6952, 8070, 10029, 9110, 8935, 9282, 9374, 4957, 12458, 4055),
  GAM = c(5338, 0, 0, 0, 0, 0, 0, 3096, 13037, 11414, 12822, 7543, 15295, 17113, 19093, 21359, 22503, 22179, 23454, 12351, 33495, 10549),
  DV = c(1603, 234, 585, 1523, 1279, 1140, 2257, 3769, 6227, 4293, 4814, 2240, 4918, 5267, 5578, 5306, 5323, 6428, 7033, 3892, 10137, 3137),
  IZT = c(2462, 706, 2343, 4712, 4843, 4612, 4795, 5304, 8781, 6250, 6595, 3417, 6286, 6485, 6985, 7366, 7807, 8566, 9945, 5789, 15012, 5344),
  SLT = c(13314, 11, 68, 1194, 4608, 19653, 29787, 38750, 59604, 39182, 38423, 19536, 34629, 35982, 35650, 35818, 35191, 34660, 34798, 16478, 50674, 15050),
  PESCER = c(767, 0, 0, 0, 0, 472, 935, 1166, 2408, 1999, 1655, 833, 1495, 1532, 1386, 1824, 1670, 1859, 1726, 928, 818, 492)
)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
# Transformar los datos en un formato largo (long format)
data_long <- melt(data, id.vars = "Años")
colnames(data_long) <- c("Años", "Plantel", "Certificaciones")
# Crear un gráfico de líneas para todos los planteles en la misma ventana
p<- ggplot(data_long, aes(x = Años, y = Certificaciones, color = Plantel)) +
  geom_line() +
  labs(title = "Certificacion en Planteles (Años)", x = "Año", y = "Certificaciones") +
  scale_color_manual(values = c("CH" = "red", "GAM" = "blue", "DV" = "green", "IZT" = "brown", "SLT" = "magenta", "PESCER" = "orange")) +
  scale_x_continuous(breaks = c(1:22), labels = c("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22")) +
  scale_y_continuous(labels = scales::comma) +
  theme_minimal()
p + geom_text(aes(label = scales::comma(Certificaciones)), vjust = -0.5, size = 2,angle=60) 
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
ggsave("graficoCertificacionPlantelesAnhos.pdf", width = 8, height = 6, units = "in")