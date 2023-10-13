# Cargar las bibliotecas ggplot2 y reshape2
library(ggplot2)
library(reshape2)

# Crear un dataframe con los datos en el nuevo formato
data_nuevo <- data.frame(
  Mes = 1:19,  # Los meses del 01 al 19
  ISET = c(2049, 2419, 1948, 2392, 10023, 7398, 5667, 5259, 4571, 3414, 3390, 4848, 3896, 3430, 4067, 2555, 2168, 2075, 1312),
  AyPC = c(609, 1689, 1551, 3076, 7340, 4206, 7513, 8282, 5824, 6238, 5021, 6123, 5878, 6302, 5291, 5088, 4566, 3382, 2473),
  CPyAU = c(3032, 6797, 3248, 8669, 26126, 28141, 19151, 17680, 14577, 13071, 11905, 13551, 13760, 14186, 11377, 12614, 10365, 9069, 6888),
  CAyCC = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 3573, 91, 0, 0, 0, 0, 0, 0),
  GENOMICAS = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 78, 2012, 0, 5, 142, 675, 2144, 880, 368),
  CiSOC = c(14, 122, 1464, 1542, 3352, 2761, 4017, 4070, 3364, 2655, 2705, 3276, 2917, 2019, 2953, 2262, 2145, 1213, 1111),
  COMYCULT = c(3605, 7303, 5908, 7418, 26558, 22101, 19832, 16680, 15086, 12666, 12157, 14780, 13583, 14041, 12104, 9075, 10096, 8153, 5379),
  CREACION = c(555, 518, 1158, 2567, 3062, 4595, 3586, 4146, 4088, 4235, 5013, 3615, 4092, 4700, 4264, 4031, 3585, 3262, 2019),
  DERECHO = c(69, 372, 496, 438, 3562, 1367, 2642, 3214, 2765, 3434, 2498, 3192, 5669, 4360, 8397, 6215, 4303, 3992, 1285),
  FEHDI = c(603, 228, 807, 3095, 2469, 2495, 2433, 3534, 2091, 2065, 2704, 2399, 3542, 2753, 3206, 2212, 2527, 1656, 1195),
  HISTYSOCCON = c(772, 341, 1241, 1998, 2353, 2675, 1924, 2485, 2194, 2491, 2786, 3071, 2512, 3007, 2218, 1535, 1805, 1462, 860),
  SOFTWARE = c(0, 13, 0, 58, 242, 495, 166, 302, 528, 1814, 2585, 4804, 2558, 3224, 3539, 2792, 2372, 1724, 1500),
  ISTU = c(362, 378, 259, 1257, 2507, 2758, 2039, 2576, 1787, 1841, 2160, 1884, 2604, 2201, 1988, 1546, 1835, 1255, 889),
  ISEI = c(402, 721, 801, 1987, 5832, 4130, 4049, 1931, 2191, 1479, 1700, 3810, 2744, 2635, 2564, 2020, 2091, 1556, 878),
  ISENER = c(0, 0, 0, 70, 0, 230, 171, 249, 307, 274, 827, 548, 1140, 1277, 1216, 769, 673, 860, 363),
  MODELACION = c(10, 0, 0, 2, 45, 38, 72, 28, 50, 40, 152, 633, 673, 759, 711, 963, 885, 1069, 788),
  NUTRICION = c(0, 2, 1, 0, 97, 40, 19, 19, 7, 132, 230, 3410, 196, 133, 538, 1036, 4868, 5255, 2778),
  PROMOCION = c(4785, 2382, 1771, 4027, 11599, 13731, 10594, 9570, 9013, 7780, 8368, 7623, 10661, 9614, 10148, 9194, 7785, 6055, 5082),
  PROTECCION = c(0, 0, 0, 11, 33, 0, 1, 0, 48, 46, 6, 508, 68, 7, 101, 351, 1852, 2574, 1087)
)

# Crear un gráfico de líneas para todas las licenciaturas en la misma ventana
ggplot(data_nuevo, aes(x = Mes)) +
  geom_line(aes(y = ISET, color = "ISET"), linetype = "solid") +
  geom_line(aes(y = AyPC, color = "AyPC"), linetype = "solid") +
  geom_line(aes(y = CPyAU, color = "CPyAU"), linetype = "solid") +
  geom_line(aes(y = CAyCC, color = "CAyCC"), linetype = "solid") +
  geom_line(aes(y = GENOMICAS, color = "GENOMICAS"), linetype = "solid") +
  geom_line(aes(y = CiSOC, color = "CiSOC"), linetype = "solid") +
  geom_line(aes(y = COMYCULT, color = "COMYCULT"), linetype = "solid") +
  geom_line(aes(y = CREACION, color = "CREACION"), linetype = "solid") +
  geom_line(aes(y = DERECHO, color = "DERECHO"), linetype = "solid") +
  geom_line(aes(y = FEHDI, color = "FEHDI"), linetype = "solid") +
  geom_line(aes(y = HISTYSOCCON, color = "HISTYSOCCON"), linetype = "solid") +
  geom_line(aes(y = SOFTWARE, color = "SOFTWARE"), linetype = "solid") +
  geom_line(aes(y = ISTU, color = "ISTU"), linetype = "solid") +
  geom_line(aes(y = ISEI, color = "ISEI"), linetype = "solid") +
  geom_line(aes(y = ISENER, color = "ISENER"), linetype = "solid") +
  geom_line(aes(y = MODELACION, color = "MODELACION"), linetype = "solid") +
  geom_line(aes(y = NUTRICION, color = "NUTRICION"), linetype = "solid") +
  geom_line(aes(y = PROMOCION, color = "PROMOCION"), linetype = "solid") +
  geom_line(aes(y = PROTECCION, color = "PROTECCION"), linetype = "solid") +
  labs(title = "Certificacion por Licenciatura (Meses)",
       x = "Mes",
       y = "Certificaciones") +
  scale_color_manual(name = "Licenciaturas", values = c(
    "ISET" = "red", "AyPC" = "blue", "CPyAU" = "green", "CAyCC" = "brown", "GENOMICAS" = "magenta",
    "CiSOC" = "orange", "COMYCULT" = "pink", "CREACION" = "purple", "DERECHO" = "gray", "FEHDI" = "cyan",
    "HISTYSOCCON" = "black", "SOFTWARE" = "violet", "ISTU" = "darkblue", "ISEI" = "darkgreen", "ISENER" = "lightgreen", 
    "MODELACION" = "gold", "NUTRICION" = "dodgerblue", "PROMOCION" = "darkred", "PROTECCION" = "darkorange")
  ) +
  geom_text(aes(x = Mes, y = ISET, label = comma(ISET, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = AyPC, label = comma(AyPC, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = CPyAU, label = comma(CPyAU, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = CAyCC, label = comma(CAyCC, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = GENOMICAS, label = comma(GENOMICAS, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = CiSOC, label = comma(CiSOC, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = COMYCULT, label = comma(COMYCULT, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = CREACION, label = comma(CREACION, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = DERECHO, label = comma(DERECHO, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = FEHDI, label = comma(FEHDI, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = HISTYSOCCON, label = comma(HISTYSOCCON, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = SOFTWARE, label = comma(SOFTWARE, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = ISTU, label = comma(ISTU, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = ISEI, label = comma(ISEI, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = ISENER, label = comma(ISENER, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = MODELACION, label = comma(MODELACION, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = NUTRICION, label = comma(NUTRICION, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = PROMOCION, label = comma(PROMOCION, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  geom_text(aes(x = Mes, y = PROTECCION, label = comma(PROTECCION, scale = 1)), vjust = -0.5, size = 2, angle = 60) +
  labs(fill = "") +  # Elimina el texto "colour"
  scale_x_continuous(breaks = 1:19) +
  theme_minimal() 