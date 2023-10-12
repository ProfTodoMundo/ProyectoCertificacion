# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
library(ggplot2)
library(dplyr)
library(tidyr)
library(gridExtra)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
# Crear un data frame a partir de la tabla
data_Planteles_FnF <- data.frame(
  Plantel = c("CH", "GAM", "DV", "IZT", "SLT", "PESCER"),
  C = c(84316, 184212, 57100, 84764, 381135, 16854),
  NC = c(49722, 66429, 29883, 49641, 211925, 7111)
)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
data_Plantel_Lic <- data.frame(
  Plantel = c("CH", "GAM", "DV", "IZT", "SLT", "PESCER"),
  ISET = c(4628, 18211, 93, 14183, 36856, 29),
  AyPC = c(30861, 17043, 1065, 1988, 41305, 38),
  CPyAU = c(3875, 36315, 36016, 54457, 116407, 1436),
  CAyCC = c(6, 15, 76, 1465, 2238, 0),
  GENOMICAS = c(166, 119, 5886, 62, 460, 0),
  CiSOC = c(588, 14410, 206, 588, 29077, 0),
  COMYCULT = c(45230, 42077, 1413, 9207, 141630, 113),
  CREACION = c(1966, 11903, 24891, 288, 25837, 383),
  DERECHO = c(1805, 30905, 611, 1011, 3095, 21794),
  FEHDI = c(1151, 7957, 12888, 421, 20571, 61),
  HISTYSOCCON = c(884, 9658, 2018, 339, 25619, 0),
  SOFTWARE = c(618, 11688, 84, 550, 16902, 33),
  ISTU = c(9672, 7889, 42, 626, 14664, 5),
  ISEI = c(1772, 10348, 166, 6625, 25524, 21),
  ISENER = c(236, 160, 59, 205, 8701, 0),
  MODELACION = c(142, 827, 61, 1888, 4698, 28),
  NUTRICION = c(211, 6585, 234, 5028, 9378, 0),
  PROMOCION = c(30101, 21931, 1158, 35379, 65514, 24),
  PROTECCION = c(126, 2600, 16, 95, 4584, 0)
)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
#View(data_Plantel_Lic)
# Crear un marco de datos con los datos del Plantel CH
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
# Filtrar las filas con Valor distinto de cero
data_PESCER_filtered <- data_Plantel_Lic[data_Plantel_Lic$Plantel == "PESCER", ] %>%
  select(-Plantel) %>%
  pivot_longer(cols = everything(), names_to = "Licenciatura", values_to = "Valor") %>%
  filter(Valor != 0)
# Reorganizar las categorías de las licenciaturas de mayor a menor
data_PESCER_filtered$Licenciatura <- reorder(data_PESCER_filtered$Licenciatura, -data_PESCER_filtered$Valor, FUN = desc)
# Crear un gráfico de barras agrupadas para el Plantel PESCER
p_PESCER <- ggplot(data_PESCER_filtered, aes(x = Licenciatura, y = Valor, fill = Licenciatura)) +
  geom_bar(stat = "identity") +labs(title = "Plantel PESCER",x = "",y = "Certificaciones") +
  theme_minimal() +theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  labs(fill = "")
# Agregar etiquetas a las barras en sentido vertical
p_PESCER <- p_PESCER + geom_text(aes(label = Valor), vjust = -0.2, angle = 90)
print(p_PESCER)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
data_SLT <- data_Plantel_Lic[data_Plantel_Lic$Plantel == "SLT", ]
# Transformar los datos a un formato largo
data_SLT_long <- tidyr::pivot_longer(data_SLT, cols = -Plantel, names_to = "Licenciatura", values_to = "Valor")
# Reorganizar las categorías de las licenciaturas de mayor a menor
data_SLT_long$Licenciatura <- reorder(data_SLT_long$Licenciatura, -data_SLT_long$Valor, FUN = desc)
# Crear un gráfico de barras agrupadas para el Plantel CH
p <- ggplot(data_SLT_long, aes(x = Licenciatura, y = Valor, fill = Licenciatura)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Plantel San Lorenzo Tezonco",x = "",y = "") +
  theme_minimal() + theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  labs(fill = "")
# Agregar etiquetas a las barras en sentido vertical
p_SLT <- p + geom_text(aes(label = Valor), vjust = -0.2, angle = 90)
print(p_SLT)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
data_IZT <- data_Plantel_Lic[data_Plantel_Lic$Plantel == "IZT", ]
# Transformar los datos a un formato largo
data_IZT_long <- tidyr::pivot_longer(data_IZT, cols = -Plantel, names_to = "Licenciatura", values_to = "Valor")
# Reorganizar las categorías de las licenciaturas de mayor a menor
data_IZT_long$Licenciatura <- reorder(data_IZT_long$Licenciatura, -data_IZT_long$Valor, FUN = desc)
# Crear un gráfico de barras agrupadas para el Plantel CH
p <- ggplot(data_IZT_long, aes(x = Licenciatura, y = Valor, fill = Licenciatura)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Plantel Iztapalapa",x = "",y = "") +
  theme_minimal() + theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  labs(fill = "")
# Agregar etiquetas a las barras en sentido vertical
p_IZT <- p + geom_text(aes(label = Valor), vjust = -0.2, angle = 90)
print(p_IZT)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
data_DV <- data_Plantel_Lic[data_Plantel_Lic$Plantel == "DV", ]
# Transformar los datos a un formato largo
data_DV_long <- tidyr::pivot_longer(data_DV, cols = -Plantel, names_to = "Licenciatura", values_to = "Valor")
# Reorganizar las categorías de las licenciaturas de mayor a menor
data_DV_long$Licenciatura <- reorder(data_DV_long$Licenciatura, -data_DV_long$Valor, FUN = desc)
# Crear un gráfico de barras agrupadas para el Plantel CH
p <- ggplot(data_DV_long, aes(x = Licenciatura, y = Valor, fill = Licenciatura)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Plantel Del Valle",x = "",y = "") +
  theme_minimal() + theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  labs(fill = "")
# Agregar etiquetas a las barras en sentido vertical
p_DV <- p + geom_text(aes(label = Valor), vjust = -0.2, angle = 90)
print(p_DV)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
data_GAM <- data_Plantel_Lic[data_Plantel_Lic$Plantel == "GAM", ]
# Transformar los datos a un formato largo
data_GAM_long <- tidyr::pivot_longer(data_GAM, cols = -Plantel, names_to = "Licenciatura", values_to = "Valor")
# Reorganizar las categorías de las licenciaturas de mayor a menor
data_GAM_long$Licenciatura <- reorder(data_GAM_long$Licenciatura, -data_GAM_long$Valor, FUN = desc)
# Crear un gráfico de barras agrupadas para el Plantel CH
p <- ggplot(data_CH_long, aes(x = Licenciatura, y = Valor, fill = Licenciatura)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Plantel Cuautepec",x = "",y = "") +
  theme_minimal() + theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  labs(fill = "")
# Agregar etiquetas a las barras en sentido vertical
p_GAM <- p + geom_text(aes(label = Valor), vjust = -0.2, angle = 90)
print(p_GAM)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
data_CH <- data_Plantel_Lic[data_Plantel_Lic$Plantel == "CH", ]
# Transformar los datos a un formato largo
data_CH_long <- tidyr::pivot_longer(data_CH, cols = -Plantel, names_to = "Licenciatura", values_to = "Valor")
# Reorganizar las categorías de las licenciaturas de mayor a menor
data_CH_long$Licenciatura <- reorder(data_CH_long$Licenciatura, -data_CH_long$Valor, FUN = desc)
# Crear un gráfico de barras agrupadas para el Plantel CH
p <- ggplot(data_CH_long, aes(x = Licenciatura, y = Valor, fill = Licenciatura)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Plantel CH",x = "",y = "") +
  theme_minimal() + theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  labs(fill = "")
# Agregar etiquetas a las barras en sentido vertical
p_CH <- p + geom_text(aes(label = Valor), vjust = -0.2, angle = 90)
print(p_CH)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
plot_list <- list(p_CH,p_DV,p_IZT,p_GAM,p_SLT,p_PESCER)
grid.arrange(grobs = plot_list, ncol = 3)
