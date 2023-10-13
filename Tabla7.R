library(ggplot2)
library(scales)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
# Crear un data frame a partir de la tabla
data_Plantel_FnF <- data.frame(
  Plantel = c("CH", "GAM", "DV", "IZT", "SLT", "PESCER"),
  C = c(84316, 184212, 57100, 84764, 381135, 16854),
  NC = c(49722, 66429, 29883, 49641, 211925, 7111))
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_F <- ggplot(data_Plantel_FnF, aes(x = Plantel, y = C, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(C)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "Certificación Favorable",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_F)
# <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>> <<==>>
p_NF <- ggplot(data_Plantel_FnF, aes(x = Plantel, y = NC, fill = Plantel)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = comma(NC)), vjust = -0.2, angle = 60, size = 3) +
  labs(title = "Certificaciòn No Favorable",x = "Plantel",y = "Certificaciones" ) +
  scale_fill_manual(values = c("CH" = "red","GAM" = "blue","DV" = "green",
                               "IZT" = "brown","SLT" = "magenta","PESCER" = "orange")) +labs(fill = "") +
  theme_minimal()
print(p_NF)
# >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><< >><<>><<
plot_list <- list(p_F,p_NF)
grid.arrange(grobs = plot_list, ncol = 2)
ggsave("graficoCertificacionPlantelFnF.pdf", width = 8, height = 6, units = "in")