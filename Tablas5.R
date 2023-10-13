library(ggplot2)
library(scales)
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
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_PROTECCION <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = PROTECCION, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(PROTECCION)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "PROTECCION",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_PROTECCION)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_PROMOCION <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = PROMOCION, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(PROMOCION)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "PROMOCION",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_PROMOCION)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_NUTRICION <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = NUTRICION, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(NUTRICION)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "NUTRICION",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_NUTRICION)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_MODELACION <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = MODELACION, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(MODELACION)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "MODELACION",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_MODELACION)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_ISENER <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = ISENER, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(ISENER)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "ISENER",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_ISENER)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_ISEI <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = ISEI, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(ISEI)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "ISEI",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_ISEI)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_ISTU <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = ISTU, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(ISTU)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "ISTU",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_ISTU)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_SOFTWARE <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = SOFTWARE, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = SOFTWARE), vjust = -0.2, angle = 60, size = 4) +
  labs(title = "SOFTWARE",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_SOFTWARE)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_HISTYSOCCON <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = HISTYSOCCON, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(HISTYSOCCON)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "HISTYSOCCON",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_HISTYSOCCON)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_FEHDI <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = FEHDI, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(FEHDI)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "FEHDI",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_FEHDI)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_DERECHO <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = DERECHO, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(DERECHO)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "DERECHO",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_DERECHO)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_CREACION <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = CREACION, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(CREACION)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "CREACION",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_CREACION)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_COMYCULT <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = COMYCULT, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(COMYCULT)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "COMYCULT",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_COMYCULT)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_CiSOC <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = CiSOC, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(CiSOC)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "CISOC",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_CiSOC)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_GENOMICAS <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = GENOMICAS, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(GENOMICAS)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "GENOMICAS",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_GENOMICAS)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_CAyCC <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = CAyCC, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(CAyCC)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "CAyCC",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_CAyCC)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_CPyAU <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = CPyAU, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(CPyAU)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "CPyAU",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
    "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_CPyAU)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_AyPC <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = AyPC, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(AyPC)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "AyPC",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_AyPC)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_ISET <- ggplot(data_Plantel_Lic, aes(x = Plantel, y = ISET, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(ISET)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "ISET",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_ISET)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
plot_list1 <- list(p_AyPC,p_CPyAU,p_CiSOC,p_COMYCULT)
grid.arrange(grobs = plot_list1, ncol = 2)
plot_list2 <- list(p_DERECHO,p_FEHDI,p_HISTYSOCCON,p_CREACION)
grid.arrange(grobs = plot_list2, ncol = 2)
plot_list3 <- list(p_NUTRICION,p_PROMOCION,p_PROTECCION,p_CAyCC)
grid.arrange(grobs = plot_list3, ncol = 2)
plot_list4 <- list(p_ISET,p_GENOMICAS,p_SOFTWARE,p_ISENER)
grid.arrange(grobs = plot_list4, ncol = 2)
plot_list5 <- list(p_ISTU,p_ISEI,p_MODELACION)
grid.arrange(grobs = plot_list5, ncol = 2)
