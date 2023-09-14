#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
library(dplyr)
library(readr)
library(foreign)
library(xtable)
library(stargazer)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
View(MPG)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResProbCert1a    <- MPG[order(MPG$ProbCert1a,decreasing= TRUE), ];       View(ResProbCert1a);    # si
ResProbNuncaCert <- MPG[order(MPG$ProbNuncaCert,decreasing= TRUE), ];    View(ResProbNuncaCert); # si
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
MaxIntCert       <- MPG[order(MPG$MaxIntSiCert,decreasing= TRUE), ];     View(MaxIntCert);      # si
MaxIntNuncaCertif  <- MPG[order(MPG$MaxIntNuncaCert,decreasing= TRUE), ];  View(MaxIntNuncaCertif); # si
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ModaIntNuncaCert <- MPG[order(MPG$ModeIntNuncaCert,decreasing= TRUE), ]; View(ModaIntNuncaCert) # si
ModaIntSiCert    <- MPG[order(MPG$ModeIntSiCert,decreasing= TRUE), ];    View(ModaIntSiCert)    # si
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
MediaNuncaCert   <- MPG[order(MPG$MeanIntNuncaCert,decreasing= TRUE), ]; View(MediaNuncaCert);  # si
MediaIntSiCert   <- MPG[order(MPG$MeanIntSiCert,decreasing= TRUE), ];    View(MediaIntSiCert)   # si
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResProbCertPrimera <- ResProbCert1a %>% filter(ResProbCert1a$ProbCert1a>=0.9); View(ResProbCertPrimera)
ResProbCertPrimera <- ResProbCertPrimera[,c(1,2)]; View(ResProbCertPrimera);
ResProbCertPrimera <- as.data.frame(ResProbCertPrimera); View(ResProbCertPrimera)
##write.csv(ResProbCertPrimera,'CSVFiles/ResultadosProbCertPrimera.csv')
xtable(ResProbCertPrimera,type="latex")#,file="Tablas/TablaRPCPrimera.tex")
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ResProbNuncaCertPrimeros <- ResProbNuncaCert %>% filter(ResProbNuncaCert$ProbNuncaCert>=0.75);
ResProbNuncaCertPrimeros <- ResProbNuncaCertPrimeros[,c(1,3,4)]; View(ResProbNuncaCertPrimeros)
#write.csv(ResProbNuncaCertPrimeros,'CSVFiles/ResultadosProbNuncaCert.csv')
xtable(ResProbNuncaCertPrimeros,type="latex")#,file="Tablas/TablaRPNuncaCPrimera.tex")
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ResMaxIntCert <- MaxIntCert %>% filter(MaxIntCert$MaxIntSiCert>=4);
ResMaxIntCert <- ResMaxIntCert[,c(1,8,9,11)]; View(ResMaxIntCert)
#write.csv(ResMaxIntCert,'CSVFiles/ResultadosMaximIntCertifica.csv')
xtable(ResMaxIntCert,type="latex")#,file="Tablas/TablaMaxIC.tex")
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ResMaxIntNuncaCert <- MaxIntNuncaCertif%>% filter(MaxIntNuncaCertif$MaxIntNuncaCert>=4);
ResMaxIntNuncaCert <- ResMaxIntNuncaCert[,c(1,4,5,2,7)]; View(ResMaxIntNuncaCert);
#write.csv(ResMaxIntNuncaCert,'CSVFiles/ResultadosMaxIntNuncaCert.csv')
xtable(ResMaxIntNuncaCert,type="latex")#,file="Tablas/TablaRMaxINC.tex")
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ResModaIntNuncaCert <- ModaIntNuncaCert%>% filter(ModaIntNuncaCert$ModeIntNuncaCert>=2);
ResModaIntNuncaCert <- ResModaIntNuncaCert[, c(1,7,3,4)]; View(ResModaIntNuncaCert); 
#write.csv(ResModaIntNuncaCert,'CSVFiles/ResultadosModaIntNuncaCer.csv')
xtable(ResModaIntNuncaCert,type="latex")#,file="Tablas/TablaRModaINC.tex")
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ResModaIntSiCert <- ModaIntSiCert%>% filter(ModaIntSiCert$MaxIntSiCert>=2);
ResModaIntSiCert <- ResModaIntSiCert[, c(1,11,8,9)]; View(ResModaIntSiCert); 
#write.csv(ResModaIntSiCert,'CSVFiles/ResultadosModaIntSiCert.csv')
xtable(ResModaIntSiCert,type="latex")#,file="Tablas/TablaRModaISC.tex")
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ResMediaNuncaCert <- MediaNuncaCert%>% filter(MediaNuncaCert$MeanIntNuncaCert>=2);
ResMediaNuncaCert <-ResMediaNuncaCert[, c(1,5,3,4,7)]; View(ResMediaNuncaCert); 
#write.csv(ResMediaNuncaCert,'CSVFiles/ResultadosMediaNuncaCert.csv')
xtable(ResMediaNuncaCert,type="latex")#,file="Tablas/TablaRMediaNC.tex")
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ResMediaSiCert <- MediaIntSiCert%>% filter(MediaIntSiCert$MeanIntSiCert>=2)
ResMediaSiCert <- ResMediaSiCert[, c(1,9,8,10,11)]; View(ResMediaSiCert); 
#write.csv(ResMediaSiCert,'CSVFiles/ResultadosMediaIntSiCert.csv')
xtable(ResMediaSiCert,type="latex")#,file="Tablas/TablaRMediaSC.tex")
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
save.image("Repositorio/WkspreprocessingAnalisis.RData")
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
xtable(ResProbCertPrimera,type="latex")#,file="Tablas/TablaRPCPa.tex")
xtable(ResProbNuncaCertPrimeros,type="latex")#,file="Tablas/TablaRPNCPa.tex")
xtable(ResMaxIntCert,type="latex")#,file="Tablas/TablaMICa.tex")
xtable(ResMaxIntNuncaCert,type="latex")#,file="Tablas/TablaRMINCa.tex")
xtable(ResModaIntNuncaCert,type="latex")#,file="Tablas/TablaRMINCa.tex")
xtable(ResModaIntSiCert,type="latex")#,file="Tablas/TablaRMISCa.tex")
xtable(ResMediaNuncaCert,type="latex")#,file="Tablas/TablaRMNCa.tex")
xtable(ResMediaSiCert,type="latex")#,file="Tablas/TablaRMSCa.tex")
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
View(MiBDD)
summary(MiBDD)
#-----------------------------------------------------------------------------------------------------
MiBDD$Plantel <- factor(MiBDD$Plantel,
                        levels = c('CH','GAM','DV','IZT','SLT','PESCER1','PESCER2','PESCER3','PESCER4',
                                   'PESCER5','PESCER6','PESCER7','PESCER8'),
                        labels = c('CH','GAM','DV','IZT','SLT','PESCER','PESCER','PESCER','PESCER',
                                   'PESCER','PESCER','PESCER','PESCER'))
#-----------------------------------------------------------------------------------------------------
save.image("Repositorio/WkspceActualizado.RData")
DatosFinal <- MiBDD; #write.csv(MiBDD,"CSVFiles/BDDActual.csv")
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
library(dplyr)
library(readr)
library(foreign)
library(xtable)
library(stargazer)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ConteoPlantel <- table(MiBDD$Plantel); 
#write.csv(ConteoPlantel,'CSVFiles/TablaConteoPlantel.csv')
xtable(ConteoPlantel,type="latex")#,file="Tablas/TablaConteoPlantel.tex")
xtable(ConteoPlantel,type="latex")#,file="Tablas/aTablaConteoPlantel.tex")

ConteoLic     <- table(MiBDD$Lic)
#write.csv(ConteoLic,'CSVFiles/TablaConteoLic.csv')
xtable(ConteoLic,type="latex")#,file="Tablas/TablaConteoLic.tex")
#xtable(ConteoLic,type="latex"#,file="TablaConteoLic.tex")

ConteoAnho <- table(MiBDD$Anho)
#write.csv(ConteoAnho,'CSVFiles/TablaConteoAnho.csv')
xtable(ConteoAnho,type="latex")#,file="Tablas/TablaConteoAnho.tex")
#xtable(ConteoAnho,type="latex")#,file="TablaConteoAnho.tex")

ConteoPlantelCal <- table(MiBDD$Plantel,MiBDD$Cal)
#write.csv(ConteoPlantelCal,'CSVFiles/TablaConteoPlantelCal.csv')
xtable(ConteoPlantelCal,type="latex")#,file="Tablas/TablaConteoPlantelCal.tex")
#xtable(ConteoPlantelCal,type="latex")#,file="TablaConteoPlantelCal.tex")

ConteoPlantelLic <- table(MiBDD$Plantel,MiBDD$Lic)
#write.csv(ConteoPlantelLic,'CSVFiles/TablaConteoPlantelLic.csv')
xtable(ConteoPlantelLic,type="latex")#,file="Tablas/TablaConteoPlantelLic.tex")
#xtable(ConteoPlantelLic,type="latex"#,file="TablaConteoPlanteLic.tex")

ConteoPlantelMaterias <- table(MiBDD$Plantel,MiBDD$Materias)
#write.csv(ConteoPlantelMaterias,'CSVFiles/TablaConteoPlantelMaterias.csv')
xtable(ConteoPlantelMaterias,type="latex")#,file="Tablas/TablaConteoPlantelMaterias.tex")
#xtable(ConteoPlantelMaterias,type="latex"#,file="TablaConteoPlantelMaterias.tex")

ConteoPlantelAnho <- table(MiBDD$Plantel,MiBDD$Anho)
#write.csv(ConteoPlantelAnho,'CSVFiles/TablaConteoPlantelAnho.csv')
xtable(ConteoPlantelAnho,type="latex")#,file="Tablas/TablaConteoPlantelAnho.tex")
#xtable(ConteoPlantelAnho,type="latex"#,file="TablaConteoPlanteAnho.tex")

ConteoAnhoPlantel <- table(MiBDD$Anho,MiBDD$Plantel)
#write.csv(ConteoAnhoPlantel,'CSVFiles/TablaConteoAnhoPlantel.csv')
xtable(ConteoAnhoPlantel,type="latex")#,file="Tablas/TablaConteoAnhoPlantel.tex")
#xtable(ConteoAnhoPlantel,type="latex"#,file="TablaConteoAnhoPlante.tex")

ConteoLicGen <- table(MiBDD$Lic,MiBDD$Gen)
#write.csv(ConteoLicGen,'CSVFiles/TablaConteoLicGen.csv')
xtable(ConteoLicGen,type="latex")#,file="Tablas/TablaConteoLicGen.tex")
#xtable(ConteoLicGen,type="latex"#,file="TablaConteoLicGen.tex")

ConteoLicCal <- table(MiBDD$Lic,MiBDD$Cal)
#write.csv(ConteoLicCal,'CSVFiles/TablaConteoLicCal.csv')
xtable(ConteoLicCal,type="latex")#,file="Tablas/TablaConteoLicCal.tex")
#xtable(ConteoLicCal,type="latex"#,file="TablaConteoLicCal.tex")

ConteoLicPlantel <- table(MiBDD$Lic,MiBDD$Plantel)
#write.csv(ConteoLicPlantel,'CSVFiles/TablaConteoLicPlantel.csv')
xtable(ConteoLicPlantel,type="latex")#,file="Tablas/TablaConteoLicPlantel.tex")
#xtable(ConteoLicPlantel,type="latex"#,file="TablaConteoLicPlantel.tex")
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ConteoPlantelCalAnho <- table(MiBDD$Plantel,MiBDD$Cal,MiBDD$Anho); print(ConteoPlantelCalAnho)
ConteoAnhoPlantelCal <- table(MiBDD$Anho,MiBDD$Plantel,MiBDD$Cal); print(ConteoAnhoPlantelCal)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ConteoPlantelGen <- table(MiBDD$Plantel,MiBDD$Gen); print(ConteoPlantelGen)
#write.csv(ConteoPlantelGen,'CSVFiles/TablaConteoPlantelGen.csv')
xtable(ConteoPlantelGen,type="latex")#,file="Tablas/TablaConteoPlantelGen.tex")
#xtable(ConteoPlantelGen,type="latex"#,file="TablaConteoPlanteGen.tex")

ConteoGenPlantel <- table(MiBDD$Gen,MiBDD$Plantel)
#write.csv(ConteoGenPlantel,'CSVFiles/TablaConteoGenPlantel.csv')
xtable(ConteoGenPlantel,type="latex")#,file="Tablas/TablaConteoGenPlantel.tex")
#xtable(ConteoGenPlantel,type="latex"#,file="TablaConteoGenPlantel.tex")
#-----------------------------------------------------------------------------------------------------
#write.csv(ConteoAnhoPlantelCal,'CSVFiles/TablaConteoAnhoPlantelCal.csv')
#write.csv(ConteoPlantelCalAnho,'CSVFiles/TablaConteoPlantelCalAnho.csv')
#-----------------------------------------------------------------------------------------------------
save.image("Repositorio/WkspceActualizado.RData")
#-----------------------------------------------------------------------------------------------------
setwd("~/Desktop/MiGithub/CertProy/ArticuloCertGral")
load("Repositorio/WkspceActualizado.RData")
#-----------------------------------------------------------------------------------------------------
library(ggplot2)
library(dplyr)
library(readr)
library(foreign)
library(xtable)
library(stargazer)
#-----------------------------------------------------------------------------------------------------
# RECORDATORIO DE TABLAS
#-----------------------------------------------------------------------------------------------------
print(ConteoPlantelCal);print(ConteoPlantelLic);print(ConteoPlantelMaterias);
print(ConteoPlantelAnho);print(ConteoAnhoPlantel);print(ConteoLicGen);
print(ConteoLicCal);print(ConteoLicPlantel);print(ConteoPlantelCalAnho);
print(ConteoAnhoPlantelCal);print(ConteoPlantelGen);print(ConteoGenPlantel);
print(ConteoPlantel);print(ConteoAnho);print(ConteoLic)
#-----------------------------------------------------------------------------------------------------
pdf("Graficas/BarPlotLic.pdf")
barplot(ConteoLic,
        legend=levels(MiBDD$Lic),
        xlab = "Licenciaturas",
        ylab = "Numero Certificaciones",
        beside = TRUE,
        main = "Certificaciones por licenciatura",
        ylim = c(0,max(ConteoLic)+10000),
        col = rainbow(19,alpha = 0.35),
        border = "blue")
grid(30, 10, lwd = 2)
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotLic.pdf")
ggplot(MiBDD, aes(Lic, fill = Lic ) ) +  geom_bar()+ coord_flip()+
  ggtitle("Certrificaciones por Licenciatura")+
  xlab("Licenciaturas")+
  ylab("Certificaciones realizadas")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnho.pdf")
barplot(ConteoAnho,
        xlab = "Año",
        ylab = "Numero Certificaciones",
        beside = TRUE,
        main = "Certificaciones por año",
        ylim = c(0,max(ConteoAnho)+19000),
        col = rainbow(22,alpha = 0.35),
        border = "blue")
grid(30, 10, lwd = 2)
dev.off()
#------------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnho.pdf")
ggplot(MiBDD, aes(Anho, fill = Anho ) ) +  geom_bar()+ coord_flip()+
  ggtitle("Certrificaciones por año")+
  xlab("Año")+
  ylab("Certificaciones realizadas")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/barplotPlanteles.pdf")
barplot(ConteoPlantel,
        legend=levels(MiBDD$Plantel),
        xlab = "Planteles",
        ylab = "Numero Certificaciones",
        beside = TRUE,
        main = "Certificaciones en cada uno de los planteles de la UACM",
        ylim = c(0,max(ConteoPlantel)+10000),
        col = rainbow(6,alpha = 0.35),
        border = "blue")
grid(30, 10, lwd = 2)
dev.off()
#------------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlanteles.pdf")
ggplot(MiBDD, aes(Plantel, fill = Plantel ) ) +  geom_bar()+ coord_flip()+
  ggtitle("Certrificaciones por Plantel")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas")
dev.off()
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
colnames(ConteoPlantelCal) <- c("Certifica","No Certifica")
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
#------------------------------------------------------------------------------
ConteoPlantelCal <- table(MiBDD$Plantel,MiBDD$Cal)
#------------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelCal.pdf")
ggplot(MiBDD, aes(Plantel, fill = Cal) ) +
  geom_bar(position = "stack")+ coord_flip()+
  ggtitle("Certrificaciones por Planteles: Certificacion vs No Certificacion")+
  xlab("Plantles")+
  ylab("Certificaciones realizadas")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelCal3.pdf")
ggplot(MiBDD, aes(Plantel, fill = Cal) ) +
  geom_bar(position = "stack")+
  ggtitle("Certrificaciones por Planteles: Certificacion vs No Certificacion")+
  xlab("Plantles")+
  ylab("Certificaciones realizadas")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelCal2.pdf")
ggplot(MiBDD, aes(Plantel, fill=Cal ) ) +
  geom_bar(position="dodge")+
  ggtitle("Certrificaciones por Planteles: Certificacion vs No Certificacion")+
  xlab("Plantles")+
  ylab("Certificaciones realizadas")
dev.off()
#------------------------------------------------------------------------------
pdf("Graficas/BarplotPlantelCal.pdf")
barplot(ConteoPlantelCal,
        col = rainbow(6,alpha = 0.35),
        ylim =c(0,max(ConteoPlantelCal)+50000),
        beside = TRUE,
        xlab = "Planeteles de la Universidad",
        ylab = "Numero de certificaciones",
        main = "Certificaciones en los Planteles",
        legend=levels(MiBDD$Plantel))
dev.off()
#------------------------------------------------------------------------------
ConteoPlantelLic <- table(MiBDD$Plantel,MiBDD$Lic)
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelLic.pdf")
ggplot(MiBDD, aes(Plantel, fill = Lic) ) +
  geom_bar(position = "stack")+ coord_flip()+
  ggtitle("Certificaciones por Licenciatura en Planteles")+
  xlab("Plantees")+
  ylab("Certificaciones realizadas por licenciatura")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelLic2.pdf")
ggplot(MiBDD, aes(Plantel, fill = Lic) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Licenciatura")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por licenciatura")
dev.off()
#------------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelLic3.pdf")
ggplot(MiBDD, aes(Plantel, fill = Lic) ) +
  geom_bar(position = "dodge")+
  ggtitle("Certificaciones en Planteles por Licenciatura")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por licenciatura")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/BarplotPlantelLic.pdf")
barplot(ConteoPlantelLic,
        col = rainbow(6,alpha = 0.35),
        ylim =c(0,max(ConteoPlantelLic)+50000),
        beside = TRUE,
        xlab = "Planeteles de la Universidad",
        ylab = "Numero de certificaciones",
        main = "Certificaciones en los Planteles",
        legend=levels(MiBDD$Plantel))
dev.off()
#------------------------------------------------------------------------------
ConteoPlantelMaterias <- table(MiBDD$Plantel,MiBDD$Materias)
#------------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelMaterias.pdf")
ggplot(MiBDD, aes(Plantel, fill = Materias) ) +
  geom_bar(position = "stack")+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Materia")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Materias")
dev.off()
#------------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelMaterias2.pdf")
ggplot(MiBDD, aes(Plantel, fill = Materias) ) +
  geom_bar()+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Materias")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Materias")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelMaterias3.pdf")
ggplot(MiBDD, aes(Plantel, fill = Materias) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Materias")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Materias")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotMateriasPlantel.pdf")
ggplot(MiBDD, aes(Materias, fill = Plantel) ) +
  geom_bar(position = "stack")+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Licenciatura")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por licenciatura")
dev.off()
#------------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotMateriasPlantel2.pdf")
ggplot(MiBDD, aes(Materias, fill = Plantel) ) +
  geom_bar()+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Materias")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Materias")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotMateriasPlantel3.pdf")
ggplot(MiBDD, aes(Materias, fill = Plantel) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Materias")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Materias")
dev.off()
#----------------------------------------------------------------------------
ConteoPlantelAnho <- table(MiBDD$Plantel,MiBDD$Anho)
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelAnho.pdf")
ggplot(MiBDD, aes(Plantel, fill = Anho) ) +
  geom_bar(position = "stack")+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Año")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Año")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelAnho.pdf")
ggplot(MiBDD, aes(Plantel, fill = Anho) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Año")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Año")
dev.off()
#----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnhoPlantel.pdf")
ggplot(MiBDD, aes(Anho, fill = Plantel) ) +
  geom_bar(position = "stack")+ coord_flip()+
  ggtitle("Certificaciones por Año en Planteles")+
  xlab("Años")+
  ylab("Certificaciones realizadas en Planteles")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnhoPlantel.pdf")
ggplot(MiBDD, aes(Anho, fill = Plantel) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por Año en Planteles")+
  xlab("Año")+
  ylab("Certificaciones realizadas en Planteles")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnhoPlantel2.pdf")
ggplot(MiBDD, aes(Anho, fill = Plantel) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por año en Planteles")+
  xlab("Años")+
  ylab("Certificaciones realizadas en Planteles")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnhoPlantel3.pdf")
ggplot(MiBDD, aes(Anho, fill = Plantel) ) +
  geom_bar( )+ coord_flip()+
  ggtitle("Certificaciones por año en Planteles")+
  xlab("Años")+
  ylab("Certificaciones realizadas en Planteles")
dev.off()
#-----------------------------------------------------------------------------
ConteoPlantelGen <- table(MiBDD$Plantel,MiBDD$Gen);
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotGenPlantel.pdf")
ggplot(MiBDD, aes(Gen, fill = Plantel) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por generacion en Planteles")+
  xlab("Generaciones")+
  ylab("Certificaciones realizadas en Planteles")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotGenPlantel2.pdf")
ggplot(MiBDD, aes(Gen, fill = Plantel) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por generacion en Planteles")+
  xlab("Generaciones")+
  ylab("Certificaciones realizadas en Planteles")
dev.off()
#------------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelGen3.pdf")
ggplot(MiBDD, aes(Plantel, fill = Gen) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones en Planteles por generacion")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Generaciones")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotPlantelGen4.pdf")
ggplot(MiBDD, aes(Plantel, fill = Gen) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones en Planteles por Generacion")+
  xlab("Planteles")+
  ylab("Certificaciones realizadas por Generaciones")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/BarplotPlantelGen.pdf")
barplot(ConteoPlantelGen,
        col = rainbow(6,alpha = 0.35),
        ylim =c(0,max(ConteoPlantelLic)+50000),
        beside = TRUE,
        xlab = "Planeteles de la Universidad",
        ylab = "Numero de certificaciones",
        main = "Certificaciones en los Planteles",
        legend=levels(MiBDD$Plantel))
dev.off()
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ConteoGenPlantel <- table(MiBDD$Gen,MiBDD$Plantel)
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotGenPlantel.pdf")
ggplot(MiBDD, aes(Gen, fill = Plantel) ) +
  geom_bar(position = "stack")+  ggtitle("Certificaciones por generacion en Planteles")+
  xlab("Generaciones")+
  ylab("Certificaciones realizadas en Planteles")
dev.off()
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotGenPlantel2.pdf")
ggplot(MiBDD, aes(Gen, fill = Plantel) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por generacion en Planteles")+
  xlab("Generaciones")+
  ylab("Certificaciones realizadas en Planteles")
dev.off()
#-----------------------------------------------------------------------------
ConteoGenLic <- table(MiBDD$Gen,MiBDD$Lic)
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotGenLic.pdf")
ggplot(MiBDD, aes(Gen, fill = Lic) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por generacion en las licenciaturas")+
  xlab("Generaciones")+
  ylab("Certificaciones realizadas por licencitura")
dev.off()

pdf("Graficas/ggplotBarplotGenLic2.pdf")
ggplot(MiBDD, aes(Gen, fill = Lic) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por generacion en las licenciaturas")+
  xlab("Generaciones")+
  ylab("Certificaciones realizadas por licencitura")
dev.off()
#----------------------------------------------------------------------------
ConteoGenMaterias <- table(MiBDD$Gen,MiBDD$Materias)
#----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotGenMaterias.pdf")
ggplot(MiBDD, aes(Gen, fill = Materias) ) +
  geom_bar(position = "stack")
ggplot(MiBDD, aes(Gen, fill = Materias) ) +
  geom_bar(position = "dodge")+ coord_flip()
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ConteoAnhoPlantel <- table(MiBDD$Anho,MiBDD$Plantel)
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnhoPlantel.pdf")
ggplot(MiBDD, aes(Anho, fill = Plantel) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por Año en Planteles")+
  xlab("Años")+
  ylab("Certificaciones realizadas por planteles")
dev.off()
pdf("Graficas/ggplotBarplotAnhoPlantel2.pdf")
ggplot(MiBDD, aes(Anho, fill = Plantel) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por Año en Planteles")+
  xlab("Años")+
  ylab("Certificaciones realizadas por planteles")
dev.off()
#-----------------------------------------------------------------------------
ConteoAnhoLic <- table(MiBDD$Anho,MiBDD$Lic)
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnhoLic.pdf")
ggplot(MiBDD, aes(Anho, fill = Lic) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por Año en las licenciaturas")+
  xlab("Años")+
  ylab("Certificaciones realizadas por licenciaturas")
dev.off()
pdf("Graficas/ggplotBarplotAnhoLic2.pdf")
ggplot(MiBDD, aes(Anho, fill = Lic) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por Año en las licenciaturas")+
  xlab("Años")+
  ylab("Certificaciones realizadas por licenciaturas")
dev.off()
#----------------------------------------------------------------------------
ConteoAnhoMaterias <- table(MiBDD$Anho,MiBDD$Materias)
#----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotAnhoMaterias.pdf")
ggplot(MiBDD, aes(Anho, fill = Materias) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por Año por materias")+
  xlab("Años")+
  ylab("Certificaciones realizadas por materias")
dev.off()
pdf("Graficas/ggplotBarplotAnhoMaterias2.pdf")
ggplot(MiBDD, aes(Anho, fill = Materias) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por Año por materias")+
  xlab("Años")+
  ylab("Certificaciones realizadas por materias")
dev.off()
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ConteoLicGen <- table(MiBDD$Lic,MiBDD$Gen)
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotLicGen.pdf")
ggplot(MiBDD, aes(Lic, fill = Gen) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por licenciatura por generacion")+
  xlab("Licenciaturas")+
  ylab("Certificaciones realizadas por generaciones")
dev.off()
pdf("Graficas/ggplotBarplotLicGen2.pdf")
ggplot(MiBDD, aes(Lic, fill = Gen) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por licenciatura por generacion")+
  xlab("Licenciaturas")+
  ylab("Certificaciones realizadas por generaciones")
dev.off()
#-----------------------------------------------------------------------------
ConteoLicCal <- table(MiBDD$Lic,MiBDD$Cal)
#-----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotLicCal.pdf")
ggplot(MiBDD, aes(Lic, fill = Cal) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por licenciatura por certificacion")+
  xlab("Licenciaturas")+
  ylab("Certificaciones realizadas")
dev.off()
pdf("Graficas/ggplotBarplotLicCal2.pdf")
ggplot(MiBDD, aes(Lic, fill = Cal) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por licenciatura por certificacion")+
  xlab("Licenciaturas")+
  ylab("Certificaciones realizadas")
dev.off()
#-----------------------------------------------------------------------------
ConteoLicPlantel <- table(MiBDD$Lic,MiBDD$Plantel)
#----------------------------------------------------------------------------
pdf("Graficas/ggplotBarplotLicPlantel.pdf")
ggplot(MiBDD, aes(Lic, fill = Plantel) ) +
  geom_bar(position = "stack")+
  ggtitle("Certificaciones por licenciatura por planteles")+
  xlab("Licenciaturas")+
  ylab("Certificaciones realizadas")
dev.off()
pdf("Graficas/ggplotBarplotLicPlantel2.pdf")
ggplot(MiBDD, aes(Lic, fill = Plantel) ) +
  geom_bar(position = "dodge")+ coord_flip()+
  ggtitle("Certificaciones por licenciatura por planteles")+
  xlab("Licenciaturas")+
  ylab("Certificaciones realizadas")
dev.off()
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>

