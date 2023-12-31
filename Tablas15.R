data <- data.frame(
  Año = 1:22,
  CH_C = c(1709, 466, 1051, 1493, 896, 1075, 1482, 1914, 4447, 4204, 4850, 2501, 4493, 5345, 6242, 6111, 6225, 6686, 6950, 3487, 9585, 3104),
  CH_NC = c(980, 1510, 1062, 1222, 939, 1195, 2076, 2300, 4528, 3851, 3395, 1670, 2459, 2725, 3787, 2999, 2710, 2596, 2424, 1470, 2873, 951),
  GAM_C = c(3950, 0, 0, 0, 0, 0, 0, 1622, 6951, 7147, 8846, 5264, 10846, 12594, 14426, 16010, 16896, 17182, 18591, 9168, 26384, 8335),
  GAM_NC = c(1388, 0, 0, 0, 0, 0, 0, 1474, 6086, 4267, 3976, 2279, 4449, 4519, 4667, 5349, 5607, 4997, 4863, 3183, 7111, 2214),
  DV_C = c(1046, 114, 426, 1234, 814, 646, 1336, 1903, 3302, 2585, 2716, 1454, 3260, 3377, 3725, 3593, 3700, 4496, 5026, 2559, 7514, 2274),
  DV_NC = c(557, 120, 159, 289, 465, 494, 921, 1866, 2925, 1708, 2098, 786, 1658, 1890, 1853, 1713, 1623, 1932, 2007, 1333, 2623, 863),
  IZT_C = c(1636, 258, 1347, 2164, 2340, 2287, 2391, 2706, 4559, 3534, 4179, 2232, 4031, 4153, 4557, 4872, 5320, 5854, 6946, 4015, 11323, 4060),
  IZT_NC = c(826, 448, 996, 2548, 2503, 2325, 2404, 2598, 4222, 2716, 2416, 1185, 2255, 2332, 2428, 2494, 2487, 2712, 2999, 1774, 3689, 1284),
  SLT_C = c(9562, 2, 48, 656, 2299, 8854, 13483, 18035, 30956, 22883, 25113, 13004, 24282, 24967, 25280, 25648, 24879, 24555, 25053, 11794, 38172, 11610),
  SLT_NC = c(3752, 9, 20, 538, 2309, 10799, 16304, 20715, 28648, 16299, 13310, 6532, 10347, 11015, 10370, 10170, 10312, 10105, 9745, 4684, 12502, 3440),
  PESCER_C = c(498, 0, 0, 0, 0, 343, 614, 813, 1727, 1505, 1112, 510, 1071, 1153, 1055, 1417, 1346, 1432, 1384, 322, 248, 304),
  PESCER_NC = c(269, 0, 0, 0, 0, 129, 321, 353, 681, 494, 543, 323, 424, 379, 331, 407, 324, 427, 342, 606, 570, 188)
) 

ttl_CH <- data[,2]+data[,3]
ttl_GAM <- data[,4]+data[,5]
ttl_DV <- data[,6]+data[,7]
ttl_IZT <- data[,8]+data[,9]
ttl_SLT <- data[,10]+data[,11]
ttl_PESCER <- data[,12]+data[,13]

data <- cbind(data,ttl_CH,ttl_GAM,ttl_DV,ttl_IZT,ttl_SLT,ttl_PESCER)

porc_CH <- data[,2]/data[,14]
tasa_CH <- data[,2]/data[,3]

porc_GAM <- data[,4]/data[,15]
tasa_GAM <- data[,4]/data[,5]

porc_DV <- data[,6]/data[,16]
tasa_DV <- data[,6]/data[,7]

porc_IZT <- data[,8]/data[,17]
tasa_IZT <- data[,8]/data[,9]

porc_SLT <- data[,10]/data[,18]
tasa_SLT <- data[,10]/data[,11]

porc_PESCER <- data[,12]/data[,19]
tasa_PESCER <- data[,12]/data[,13]

data <- cbind(data, porc_CH,tasa_CH, porc_GAM,tasa_GAM,
              porc_DV,tasa_DV, porc_IZT,tasa_IZT,
              porc_SLT,tasa_SLT, porc_PESCER,tasa_PESCER)
View(data)

data1 <- data[,20:31]

data2 <- cbind(data[,1], tasa_CH, tasa_GAM,tasa_DV, tasa_IZT,tasa_SLT,tasa_PESCER)

colnames(data2) <- c("Año","Tasa CH","Tasa GAM","Tasa DV","Tasa IZT","Tasa SLT","Tasa PESCER")