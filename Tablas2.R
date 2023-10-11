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
  scale_x_continuous(breaks = c(1:22), labels = c("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22")) +
  scale_y_continuous(breaks = seq(0, max(data$Cantidad), by = paso_y)) +  # Personaliza el paso en el eje Y
  theme_minimal()

# Imprimir el gráfico
print(p)


# Guardar el gráfico en formato PDF
ggsave("graficoCertificacionesUACManual.pdf", plot = p, device = "pdf")

# Crear un gráfico de barras
p <- ggplot(data, aes(x = factor(Año), y = Cantidad)) +
  geom_bar(stat = "identity", fill = "dodgerblue") +
  labs(
    title = "Número de certificaciones por año en toda la Universidad",
    x = "Año",
    y = "Cantidad de certificaciones"
  ) +
  theme_minimal()

# Imprimir el gráfico
print(p)


# Crea un dataframe con los datos de la tabla
data <- data.frame(
  Año = c(01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22),
  Cantidad = c(26173, 2927, 5109, 10144, 12565, 28147, 41332, 56299, 99032, 71193, 72554, 3774, 69575, 74449, 78721, 80783, 81429, 82974, 86330, 44395, 122594, 38627)
)

#  - - - - - - - - - - - - - - - - - - 
#  

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
  geom_text(aes(label = Cantidad), vjust = -0.5, size = 4)  # Agregar etiquetas de valores sobre las barras

# Imprimir el gráfico
print(p)

ggsave("graficoCertificacionesPlanteles.pdf", plot = p, device = "pdf")

# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -   



# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -   

# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -   



# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -   


# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -   



# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -   
# Cargar las bibliotecas necesarias
library(ggplot2)
library(tidyr)

# Datos originales
data <- read.table(header = TRUE, text = "
AÑO CH_Favorables GAM_Favorables DV_Favorables IZT_Favorables SLT_Favorables PESCER_Favorables CH_No_Favorables GAM_No_Favorables DV_No_Favorables IZT_No_Favorables SLT_No_Favorables PESCER_No_Favorables
01  1709 3950 1046 1636 9562 498 980 1388 557 826 3752 269
02  466 0 114 258 2 0 1510 0 120 448 9 0
03  1051 0 426 1347 48 0 1062 0 159 996 20 0
04  1493 0 1234 2164 656 0 1222 0 289 2548 538 0
05  896 0 814 2340 2299 0 939 0 465 2503 2309 0
06  1075 0 646 2287 8854 343 1195 0 494 2325 10799 129
07  1482 0 1336 2391 13483 614 2076 0 921 2404 16304 321
08  1914 1622 1903 2706 18035 813 2300 1474 1866 2598 20715 353
09  4447 6951 3302 4559 30956 1727 4528 6086 2925 4222 28648 681
10  4204 7147 2585 3534 22883 1505 3851 4267 1708 2716 16299 494
11  4850 8846 2716 4179 25113 1112 3395 3976 2098 2416 13310 543
12  2501 5264 1454 2232 13004 510 1670 2279 786 1185 6532 323
13  4493 10846 3260 4031 24282 1071 2459 4449 1658 2255 10347 424
14  5345 12594 3377 4153 24967 1153 2725 4519 1890 2332 11015 379
15  6242 14426 3725 4557 25280 1055 3787 4667 1853 2428 10370 331
16  6111 16010 3593 4872 25648 1417 2999 5349 1713 2494 10170 407
17  6225 16896 3700 5320 24879 1346 2710 5607 1623 2487 10312 324
18  6686 17182 4496 5854 24555 1432 2596 4997 1932 2712 10105 427
19  6950 18591 5026 6946 25053 1384 2424 4863 2007 2999 9745 342
20  3487 9168 2559 4015 11794 322 1470 3183 1333 1774 4684 606
21  9585 26384 7514 11323 38172 248 2873 7111 2623 3689 12502 570
22  3104 8335 2274 4060 11610 304 951 2214 863 1284 3440 188
")

# Convertir los datos a formato largo (tidy data)
data_long <- gather(data, key = "Plantel_Año", value = "Cantidad", -AÑO)

# Crear un gráfico de líneas separado para cada plantel
p <- ggplot(data_long, aes(x = AÑO, y = Cantidad, color = Plantel_Año)) +
  geom_line() +
  labs(
    title = "Certificaciones por Año (Favorables y No Favorables)",
    x = "Año",
    y = "Cantidad"
  ) +
  theme_minimal()

# Imprimir el gráfico
print(p)


# Cargar las bibliotecas necesarias
library(ggplot2)
library(tidyr)

# Datos originales
data <- read.table(header = TRUE, text = "
AÑO CH_Favorables GAM_Favorables DV_Favorables IZT_Favorables SLT_Favorables PESCER_Favorables CH_No_Favorables GAM_No_Favorables DV_No_Favorables IZT_No_Favorables SLT_No_Favorables PESCER_No_Favorables
01  1709 3950 1046 1636 9562 498 980 1388 557 826 3752 269
02  466 0 114 258 2 0 1510 0 120 448 9 0
03  1051 0 426 1347 48 0 1062 0 159 996 20 0
04  1493 0 1234 2164 656 0 1222 0 289 2548 538 0
05  896 0 814 2340 2299 0 939 0 465 2503 2309 0
06  1075 0 646 2287 8854 343 1195 0 494 2325 10799 129
07  1482 0 1336 2391 13483 614 2076 0 921 2404 16304 321
08  1914 1622 1903 2706 18035 813 2300 1474 1866 2598 20715 353
09  4447 6951 3302 4559 30956 1727 4528 6086 2925 4222 28648 681
10  4204 7147 2585 3534 22883 1505 3851 4267 1708 2716 16299 494
11  4850 8846 2716 4179 25113 1112 3395 3976 2098 2416 13310 543
12  2501 5264 1454 2232 13004 510 1670 2279 786 1185 6532 323
13  4493 10846 3260 4031 24282 1071 2459 4449 1658 2255 10347 424
14  5345 12594 3377 4153 24967 1153 2725 4519 1890 2332 11015 379
15  6242 14426 3725 4557 25280 1055 3787 4667 1853 2428 10370 331
16  6111 16010 3593 4872 25648 1417 2999 5349 1713 2494 10170 407
17  6225 16896 3700 5320 24879 1346 2710 5607 1623 2487 10312 324
18  6686 17182 4496 5854 24555 1432 2596 4997 1932 2712 10105 427
19  6950 18591 5026 6946 25053 1384 2424 4863 2007 2999 9745 342
20  3487 9168 2559 4015 11794 322 1470 3183 1333 1774 4684 606
21  9585 26384 7514 11323 38172 248 2873 7111 2623 3689 12502 570
22  3104 8335 2274 4060 11610 304 951 2214 863 1284 3440 188
")

# Convertir los datos a formato largo (tidy data)
data_long <- gather(data, key = "Plantel_Año", value = "Cantidad", -AÑO)

# Crear un gráfico de línea para certificaciones favorables
p_favorables <- ggplot(data_long, aes(x = AÑO, y = Cantidad, color = Plantel_Año)) +
  geom_line() +
  labs(
    title = "Certificaciones Favorables por Año",
    x = "Año",
    y = "Cantidad"
  ) +
  theme_minimal()

# Crear un gráfico de línea para certificaciones no favorables
p_no_favorables <- ggplot(data_long, aes(x = AÑO, y = Cantidad, color = Plantel_Año)) +
  geom_line() +
  labs(
    title = "Certificaciones No Favorables por Año",
    x = "Año",
    y = "Cantidad"
  ) +
  theme_minimal()

# Imprimir los gráficos
print(p_favorables)
print(p_no_favorables)
