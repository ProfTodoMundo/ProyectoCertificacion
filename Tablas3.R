data_FnF <- data.frame(
  Año = 1:22,
  CH_Favorables = c(1709, 466, 1051, 1493, 896, 1075, 1482, 1914, 4447, 4204, 4850, 2501, 4493, 5345, 6242, 6111, 6225, 6686, 6950, 3487, 9585, 3104),
  GAM_Favorables = c(3950, 0, 0, 0, 0, 0, 0, 1622, 6951, 7147, 8846, 5264, 10846, 12594, 14426, 16010, 16896, 17182, 18591, 9168, 26384, 8335),
  DV_Favorables = c(1046, 114, 426, 1234, 814, 646, 1336, 1903, 3302, 2585, 2716, 1454, 3260, 3377, 3725, 3593, 3700, 4496, 5026, 2559, 7514, 2274),
  IZT_Favorables = c(1636, 258, 1347, 2164, 2340, 2287, 2391, 2706, 4559, 3534, 4179, 2232, 4031, 4153, 4557, 4872, 5320, 5854, 6946, 4015, 11323, 4060),
  SLT_Favorables = c(9562, 2, 48, 656, 2299, 8854, 13483, 18035, 30956, 22883, 25113, 13004, 24282, 24967, 25280, 25648, 24879, 24555, 25053, 11794, 38172, 11610),
  PESCER_Favorables = c(498, 0, 0, 0, 0, 343, 614, 813, 1727, 1505, 1112, 510, 1071, 1153, 1055, 1417, 1346, 1432, 1384, 322, 248, 304),
  CH_No_Favorables = c(980, 1510, 1062, 1222, 939, 1195, 2076, 2300, 4528, 3851, 3395, 1670, 2459, 2725, 3787, 2999, 2710, 2596, 2424, 1470, 2873, 951),
  GAM_No_Favorables = c(1388, 0, 0, 0, 0, 0, 0, 1474, 6086, 4267, 3976, 2279, 4449, 4519, 4667, 5349, 5607, 4997, 4863, 3183, 7111, 2214),
  DV_No_Favorables = c(557, 120, 159, 289, 465, 494, 921, 1866, 2925, 1708, 2098, 786, 1658, 1890, 1853, 1713, 1623, 1932, 2007, 1333, 2623, 863),
  IZT_No_Favorables = c(826, 448, 996, 2548, 2503, 2325, 2404, 2598, 4222, 2716, 2416, 1185, 2255, 2332, 2428, 2494, 2487, 2712, 2999, 1774, 3689, 1284),
  SLT_No_Favorables = c(3752, 9, 20, 538, 2309, 10799, 16304, 20715, 28648, 16299, 13310, 6532, 10347, 11015, 10370, 10170, 10312, 10105, 9745, 4684, 12502, 3440),
  PESCER_No_Favorables = c(269, 0, 0, 0, 0, 129, 321, 353, 681, 494, 543, 323, 424, 379, 331, 407, 324, 427, 342, 606, 570, 188)
) 
# Crear una gráfica base
p_favorables <- ggplot(data_FnF, aes(Año))
# Agregar líneas y puntos para cada columna
p_favorables <- p_favorables +
  geom_line(aes(y = CH_Favorables, color = "CH"), linetype = "solid") +
  geom_point(aes(y = CH_Favorables, color = "CH")) +
  geom_line(aes(y = GAM_Favorables, color = "GAM"), linetype = "solid") +
  geom_point(aes(y = GAM_Favorables, color = "GAM")) +
  geom_line(aes(y = DV_Favorables, color = "DV"), linetype = "solid") +
  geom_point(aes(y = DV_Favorables, color = "DV")) +
  geom_line(aes(y = IZT_Favorables, color = "IZT"), linetype = "solid") +
  geom_point(aes(y = IZT_Favorables, color = "IZT")) +
  geom_line(aes(y = SLT_Favorables, color = "SLT"), linetype = "solid") +
  geom_point(aes(y = SLT_Favorables, color = "SLT")) +
  geom_line(aes(y = PESCER_Favorables, color = "PESCER"), linetype = "solid") +
  geom_point(aes(y = PESCER_Favorables, color = "PESCER"))
# Ajustar el escalado del eje X
p_favorables <- p_favorables + scale_x_continuous(breaks = data_FnF$Año)
# Configurar etiquetas y tema
p_favorables <- p_favorables +
  labs(title = "Certificaciones Favorables en planteles",
       x = "Año", y = "Certificación") +
  scale_color_manual(name="Planteles",values = c(
    "CH" = "red",
    "GAM" = "blue",
    "DV" = "green",
    "IZT" = "brown",
    "SLT" = "magenta",
    "PESCER" = "orange"
  )) 
# Imprimir la gráfica
print(p_favorables)
# Crear una gráfica base
p_Nofavorables <- ggplot(data_FnF, aes(Año))
# Agregar líneas y puntos para cada columna
p_Nofavorables <- p_Nofavorables +
  geom_line(aes(y = CH_No_Favorables, color = "CH"), linetype = "solid") +
  geom_point(aes(y = CH_No_Favorables, color = "CH")) +
  geom_line(aes(y = GAM_No_Favorables, color = "GAM"), linetype = "solid") +
  geom_point(aes(y = GAM_No_Favorables, color = "GAM")) +
  geom_line(aes(y = DV_No_Favorables, color = "DV"), linetype = "solid") +
  geom_point(aes(y = DV_No_Favorables, color = "DV")) +
  geom_line(aes(y = IZT_No_Favorables, color = "IZT"), linetype = "solid") +
  geom_point(aes(y = IZT_No_Favorables, color = "IZT")) +
  geom_line(aes(y = SLT_No_Favorables, color = "SLT"), linetype = "solid") +
  geom_point(aes(y = SLT_No_Favorables, color = "SLT")) +
  geom_line(aes(y = PESCER_No_Favorables, color = "PESCER"), linetype = "solid") +
  geom_point(aes(y = PESCER_No_Favorables, color = "PESCER"))
# Ajustar el escalado del eje X
p_Nofavorables <- p_Nofavorables + scale_x_continuous(breaks = data_FnF$Año)
# Configurar etiquetas y tema
p_Nofavorables <- p_Nofavorables +
  labs(title = "Certificaciones No Favorables en planteles",
       x = "Año", y = "Certificación") +
  scale_color_manual(name="Planteles",values = c(
    "CH" = "red",
    "GAM" = "blue",
    "DV" = "green",
    "IZT" = "brown",
    "SLT" = "magenta",
    "PESCER" = "orange"
  )) 
print(p_Nofavorables)
library(gridExtra)
plot_list <- list(p_favorables, p_Nofavorables)
grid.arrange(grobs = plot_list, nrow = 2)
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
library(ggplot2)
library(dplyr)
library(tidyr)
library(gridExtra)
# Crear un conjunto de datos largo para facilitar la creación de gráficos
data_FnF_long <- data_FnF %>%
  pivot_longer(cols = -Año, names_to = "Planteles_Casos", values_to = "Certificación")
# Separar el nombre de la columna en "Planteles" y "Casos"
data_FnF_long <- data_FnF_long %>%
  separate(Planteles_Casos, c("Planteles", "Casos"), sep = "_")
# Definir colores claros y oscuros
colores_favorables <- c("CH" = "red", "GAM" = "blue", "DV" = "green",
                        "IZT" = "brown", "SLT" = "magenta", "PESCER" = "orange")
colores_no_favorables <- c("CH" = "lightcoral", "GAM" = "lightblue", "DV" = "lightgreen",
                           "IZT" = "lightbrown", "SLT" = "lightpink", "PESCER" = "lightyellow")
# Crear una lista para almacenar los gráficos
plot_list <- list()
# Crear y agregar gráficos por separado para cada plantel y caso
for (plantel in unique(data_FnF_long$Planteles)) {
  for (caso in unique(data_FnF_long$Casos)) {
    plot_data <- data_FnF_long %>%
      filter(Planteles == plantel, Casos == caso)
    
    p <- ggplot(plot_data, aes(x = Año, y = Certificación, fill = Planteles)) +
      geom_bar(stat = "identity", position = "dodge") +
      labs(title = paste("Certificaciones", caso, "en", plantel),
           x = "Año",
           y = "Certificación") +
      scale_fill_manual(values = ifelse(caso == "Favorables", colores_favorables, colores_no_favorables))
    
    plot_list[[length(plot_list) + 1]] <- p
  }
}

# Organizar y mostrar los gráficos en una sola ventana
grid.arrange(grobs = plot_list, ncol = 2)
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -   
library(ggplot2)
library(dplyr)
library(tidyr)
library(gridExtra)
library(purrr)
# Crear un conjunto de datos largo para facilitar la creación de gráficos
data_FnF_long <- data_FnF %>%
  pivot_longer(cols = -Año, names_to = "Planteles_Casos", values_to = "Certificación")
# Separar el nombre de la columna en "Planteles" y "Casos"
data_FnF_long <- data_FnF_long %>%
  separate(Planteles_Casos, c("Planteles", "Casos"), sep = "_")
# Definir colores claros y oscuros
colores_favorables <- c("CH" = "red", "GAM" = "blue", "DV" = "green",
                        "IZT" = "brown", "SLT" = "magenta", "PESCER" = "orange")
colores_no_favorables <- c("CH" = "lightcoral", "GAM" = "lightblue", "DV" = "lightgreen",
                           "IZT" = "lightbrown", "SLT" = "lightpink", "PESCER" = "lightyellow")
# Crear un gráfico de barras
p1 <- ggplot(data_FnF, aes(x = factor(Año), y = CH_Favorables)) +
  geom_bar(stat = "identity", fill = "red") +
  labs(title = "Certificaciones Favorables",x = "Año",y = "CH"  ) + theme_minimal()
p7 <- ggplot(data_FnF, aes(x = factor(Año), y = CH_No_Favorables)) +
  geom_bar(stat = "identity", fill = "#FFC0CB") +
  labs(title = "Certificaciones No Favorables",x = "Año",y = "CH"  ) +theme_minimal()
p2 <- ggplot(data_FnF, aes(x = factor(Año), y = GAM_Favorables)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "",x = "Año",y = "GAM"  ) + theme_minimal()
p8 <- ggplot(data_FnF, aes(x = factor(Año), y = GAM_No_Favorables)) +
  geom_bar(stat = "identity", fill = "lightblue") +
  labs(title = "",x = "Año",y = "GAM"  ) +theme_minimal()
p3 <- ggplot(data_FnF, aes(x = factor(Año), y = DV_Favorables)) +
  geom_bar(stat = "identity", fill = "green") +
  labs(title = "",x = "Año",y = "DV"  ) +theme_minimal()
p9 <- ggplot(data_FnF, aes(x = factor(Año), y = DV_No_Favorables)) +
  geom_bar(stat = "identity", fill = "lightgreen") +
  labs(title = "",x = "Año",y = "DV"  ) +theme_minimal()
p4 <- ggplot(data_FnF, aes(x = factor(Año), y = IZT_Favorables)) +
  geom_bar(stat = "identity", fill = "brown") +
  labs(title = "",x = "Año",y = "IZT"  ) +theme_minimal()
p10 <- ggplot(data_FnF, aes(x = factor(Año), y = IZT_No_Favorables)) +
  geom_bar(stat = "identity", fill = "#D2B48C") +
  labs(title = "",x = "Año",y = "IZT"  ) +theme_minimal()
p5 <- ggplot(data_FnF, aes(x = factor(Año), y = SLT_Favorables)) +
  geom_bar(stat = "identity", fill = "magenta") +
  labs(title = "",x = "Año",y = "SLT"  ) +theme_minimal()
p11 <- ggplot(data_FnF, aes(x = factor(Año), y = SLT_No_Favorables)) +
  geom_bar(stat = "identity", fill = "#FFB6C1") +
  labs(title = "",x = "Año",y = "SLT"  ) +  theme_minimal()
p6 <- ggplot(data_FnF, aes(x = factor(Año), y = PESCER_Favorables)) +
  geom_bar(stat = "identity", fill = "orange") +
  labs(title = "",x = "Año", y = "PESCER"  ) +theme_minimal()
p12 <- ggplot(data_FnF, aes(x = factor(Año), y = PESCER_No_Favorables)) +
  geom_bar(stat = "identity", fill = "#FFD700") +
  labs(title = "",x = "Año",y = "PESCER"  ) +theme_minimal()
print(p1)
print(p7)
print(p2)
print(p8)
print(p3)
print(p9)
print(p4)
print(p10)
print(p5)
print(p11)
print(p6)
print(p12)
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
plot_list <- list(p1,p7,p2,p8,p3,p9,p4,p10,p5,p11,p6,p12)
grid.arrange(grobs = plot_list, ncol = 2)
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -   


