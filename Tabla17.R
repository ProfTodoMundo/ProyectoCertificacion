#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
#load("/home/todomundo/Documentos/Resultados/Repositorio/WkspceActualizado.RData")
load("/Users/todomundomx/Documents/CertProy/ArticuloCertGral/Repositorio/WkspceActualizado.RData")
View(MiBDD)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ConteoPlantelLicCal <- table(MiBDD$Plantel,MiBDD$Lic,MiBDD$Cal)
as.data.frame(ConteoPlantelLicCal)
View(ConteoPlantelLicCal)
ConteoPlantelCalLic <- table(MiBDD$Plantel,MiBDD$Cal,MiBDD$Lic)
as.data.frame(ConteoPlantelCalLic)
View(ConteoPlantelCalLic)
ConteoLicCalPlantel <- table(MiBDD$Lic,MiBDD$Cal,MiBDD$Plantel)
as.data.frame(ConteoLicCalPlantel)
View(ConteoLicCalPlantel)
ConteoLicPlantelCal <- table(MiBDD$Lic,MiBDD$Plantel,MiBDD$Cal)
as.data.frame(ConteoLicPlantelCal)
View(ConteoLicPlantelCal)
ConteoCalLicPlantel <- table(MiBDD$Cal,MiBDD$Lic,MiBDD$Plantel)
as.data.frame(ConteoCalLicPlantel)
View(ConteoCalLicPlantel)
print(ConteoCalLicPlantel)
ConteoCalPlantelLic <- table(MiBDD$Cal,MiBDD$Plantel,MiBDD$Lic)
as.data.frame(ConteoCalPlantelLic)
View(ConteoCalPlantelLic)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
# Crear el dataframe original
df <- read.table(text = "Var1 Var2 Var3 Freq
                 CH C ISET 1915
                 GAM C ISET 11883
                 DV C ISET 44
                 IZT C ISET 7268
                 SLT C ISET 19095
                 PESCER C ISET 16
                 CH NC ISET 2713
                 GAM NC ISET 6328
                 DV NC ISET 49
                 IZT NC ISET 6915
                 SLT NC ISET 17761
                 PESCER NC ISET 13
                 CH C AyPC 20884
                 GAM C AyPC 12964
                 DV C AyPC 670
                 IZT C AyPC 1073
                 SLT C AyPC 27918
                 PESCER C AyPC 23
                 CH NC AyPC 9977
                 GAM NC AyPC 4079
                 DV NC AyPC 395
                 IZT NC AyPC 915
                 SLT NC AyPC 13387
                 PESCER NC AyPC 15
                 CH C CPyAU 1654
                 GAM C CPyAU 25613
                 DV C CPyAU 22963
                 IZT C CPyAU 35720
                 SLT C CPyAU 74330
                 PESCER C CPyAU 1103
                 CH NC CPyAU 2221
                 GAM NC CPyAU 10702
                 DV NC CPyAU 13053
                 IZT NC CPyAU 18737
                 SLT NC CPyAU 42077
                 PESCER NC CPyAU 333
                 CH C CAyCC 4
                 GAM C CAyCC 9
                 DV C CAyCC 54
                 IZT C CAyCC 1208
                 SLT C CAyCC 1590
                 PESCER C CAyCC 0
                 CH NC CAyCC 2
                 GAM NC CAyCC 6
                 DV NC CAyCC 22
                 IZT NC CAyCC 257
                 SLT NC CAyCC 648
                 PESCER NC CAyCC 0
                 CH C GENOMICAS 94
                 GAM C GENOMICAS 77
                 DV C GENOMICAS 3932
                 IZT C GENOMICAS 37
                 SLT C GENOMICAS 289
                 PESCER C GENOMICAS 0
                 CH NC GENOMICAS 72
                 GAM NC GENOMICAS 42
                 DV NC GENOMICAS 1954
                 IZT NC GENOMICAS 25
                 SLT NC GENOMICAS 171
                 PESCER NC GENOMICAS 0
                 CH C CiSOC 311
                 GAM C CiSOC 10660
                 DV C CiSOC 132
                 IZT C CiSOC 348
                 SLT C CiSOC 18888
                 PESCER C CiSOC 0
                 CH NC CiSOC 277
                 GAM NC CiSOC 3750
                 DV NC CiSOC 74
                 IZT NC CiSOC 240
                 SLT NC CiSOC 10189
                 PESCER NC CiSOC 0
                 CH C COMYCULT 30002
                 GAM C COMYCULT 32337
                 DV C COMYCULT 868
                 IZT C COMYCULT 4937
                 SLT C COMYCULT 97213
                 PESCER C COMYCULT 69
                 CH NC COMYCULT 15228
                 GAM NC COMYCULT 9740
                 DV NC COMYCULT 545
                 IZT NC COMYCULT 4270
                 SLT NC COMYCULT 44417
                 PESCER NC COMYCULT 44
                 CH C CREACION 1089
                 GAM C CREACION 9411
                 DV C CREACION 17355
                 IZT C CREACION 157
                 SLT C CREACION 18418
                 PESCER C CREACION 288
                 CH NC CREACION 877
                 GAM NC CREACION 2492
                 DV NC CREACION 7536
                 IZT NC CREACION 131
                 SLT NC CREACION 7419
                 PESCER NC CREACION 95
                 CH C DERECHO 1196
                 GAM C DERECHO 23796
                 DV C DERECHO 386
                 IZT C DERECHO 673
                 SLT C DERECHO 1860
                 PESCER C DERECHO 15273
                 CH NC DERECHO 609
                 GAM NC DERECHO 7109
                 DV NC DERECHO 225
                 IZT NC DERECHO 338
                 SLT NC DERECHO 1235
                 PESCER NC DERECHO 6521
                 CH C FEHDI 623
                 GAM C FEHDI 5863
                 DV C FEHDI 8473
                 IZT C FEHDI 228
                 SLT C FEHDI 12657
                 PESCER C FEHDI 36
                 CH NC FEHDI 528
                 GAM NC FEHDI 2094
                 DV NC FEHDI 4415
                 IZT NC FEHDI 193
                 SLT NC FEHDI 7914
                 PESCER NC FEHDI 25
                 CH C HISTYSOCCON 497
                 GAM C HISTYSOCCON 7115
                 DV C HISTYSOCCON 1244
                 IZT C HISTYSOCCON 219
                 SLT C HISTYSOCCON 16629
                 PESCER C HISTYSOCCON 0
                 CH NC HISTYSOCCON 387
                 GAM NC HISTYSOCCON 2543
                 DV NC HISTYSOCCON 774
                 IZT NC HISTYSOCCON 120
                 SLT NC HISTYSOCCON 8990
                 PESCER NC HISTYSOCCON 0
                 CH C SOFTWARE 398
                 GAM C SOFTWARE 8765
                 DV C SOFTWARE 50
                 IZT C SOFTWARE 321
                 SLT C SOFTWARE 9958
                 PESCER C SOFTWARE 11
                 CH NC SOFTWARE 220
                 GAM NC SOFTWARE 2923
                 DV NC SOFTWARE 34
                 IZT NC SOFTWARE 229
                 SLT NC SOFTWARE 6944
                 PESCER NC SOFTWARE 22
                 CH C ISTU 5480
                 GAM C ISTU 5040
                 DV C ISTU 21
                 IZT C ISTU 247
                 SLT C ISTU 8456
                 PESCER C ISTU 2
                 CH NC ISTU 4192
                 GAM NC ISTU 2849
                 DV NC ISTU 21
                 IZT NC ISTU 379
                 SLT NC ISTU 6208
                 PESCER NC ISTU 3
                 CH C ISEI 841
                 GAM C ISEI 6925
                 DV C ISEI 102
                 IZT C ISEI 3856
                 SLT C ISEI 13577
                 PESCER C ISEI 4
                 CH NC ISEI 931
                 GAM NC ISEI 3423
                 DV NC ISEI 64
                 IZT NC ISEI 2769
                 SLT NC ISEI 11947
                 PESCER NC ISEI 17
                 CH C ISENER 121
                 GAM C ISENER 117
                 DV C ISENER 30
                 IZT C ISENER 108
                 SLT C ISENER 6169
                 PESCER C ISENER 0
                 CH NC ISENER 115
                 GAM NC ISENER 43
                 DV NC ISENER 29
                 IZT NC ISENER 97
                 SLT NC ISENER 2532
                 PESCER NC ISENER 0
                 CH C MODELACION 57
                 GAM C MODELACION 529
                 DV C MODELACION 10
                 IZT C MODELACION 1325
                 SLT C MODELACION 2985
                 PESCER C MODELACION 16
                 CH NC MODELACION 85
                 GAM NC MODELACION 298
                 DV NC MODELACION 51
                 IZT NC MODELACION 563
                 SLT NC MODELACION 1713
                 PESCER NC MODELACION 12
                 CH C NUTRICION 154
                 GAM C NUTRICION 5303
                 DV C NUTRICION 124
                 IZT C NUTRICION 4097
                 SLT C NUTRICION 7047
                 PESCER C NUTRICION 0
                 CH NC NUTRICION 57
                 GAM NC NUTRICION 1282
                 DV NC NUTRICION 110
                 IZT NC NUTRICION 931
                 SLT NC NUTRICION 2331
                 PESCER NC NUTRICION 0
                 CH C PROMOCION 18917
                 GAM C PROMOCION 15957
                 DV C PROMOCION 638
                 IZT C PROMOCION 22896
                 SLT C PROMOCION 40855
                 PESCER C PROMOCION 13
                 CH NC PROMOCION 11184
                 GAM NC PROMOCION 5974
                 DV NC PROMOCION 520
                 IZT NC PROMOCION 12483
                 SLT NC PROMOCION 24659
                 PESCER NC PROMOCION 11
                 CH C PROTECCION 79
                 GAM C PROTECCION 1848
                 DV C PROTECCION 4
                 IZT C PROTECCION 46
                 SLT C PROTECCION 3201
                 PESCER C PROTECCION 0
                 CH NC PROTECCION 47
                 GAM NC PROTECCION 752
                 DV NC PROTECCION 12
                 IZT NC PROTECCION 49
                 SLT NC PROTECCION 1383
                 PESCER NC PROTECCION 0", header = TRUE)
data <- as.data.frame(df)
colnames(data) <- c("Plantel","Certificacion", "Licenciatura","Cantidad")
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
library(dplyr)
plantel_certificacion_CH_C <- data[data$Plantel == "CH" & data$Certificacion == "C", ]
plantel_certificacion_CH_NC <- data[data$Plantel == "CH" & data$Certificacion == "NC", ]
print(plantel_certificacion_CH_C)
print(plantel_certificacion_CH_NC)
CH_CERTIFICACION <- cbind(plantel_certificacion_CH_C,plantel_certificacion_CH_NC)
print(CH_CERTIFICACION)
#<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
plantel_certificacion_GAM_C <- data[data$Plantel == "GAM" & data$Certificacion == "C", ]
plantel_certificacion_GAM_NC <- data[data$Plantel == "GAM" & data$Certificacion == "NC", ]
print(plantel_certificacion_GAM_C)
print(plantel_certificacion_GAM_NC)
GAM_CERTIFICACION <- cbind(plantel_certificacion_GAM_C,plantel_certificacion_GAM_NC)
print(GAM_CERTIFICACION)
#<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
plantel_certificacion_DV_C <- data[data$Plantel == "DV" & data$Certificacion == "C", ]
plantel_certificacion_DV_NC <- data[data$Plantel == "DV" & data$Certificacion == "NC", ]
print(plantel_certificacion_DV_C)
print(plantel_certificacion_DV_NC)
DV_CERTIFICACION <- cbind(plantel_certificacion_DV_C,plantel_certificacion_DV_NC)
print(DV_CERTIFICACION)
#<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
plantel_certificacion_IZT_C <- data[data$Plantel == "IZT" & data$Certificacion == "C", ]
plantel_certificacion_IZT_NC <- data[data$Plantel == "IZT" & data$Certificacion == "NC", ]
print(plantel_certificacion_IZT_C)
print(plantel_certificacion_IZT_NC)
IZT_CERTIFICACION <- cbind(plantel_certificacion_IZT_C,plantel_certificacion_IZT_NC)
print(IZT_CERTIFICACION)
#<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
plantel_certificacion_SLT_C <- data[data$Plantel == "SLT" & data$Certificacion == "C", ]
plantel_certificacion_SLT_NC <- data[data$Plantel == "SLT" & data$Certificacion == "NC", ]
print(plantel_certificacion_SLT_C)
print(plantel_certificacion_SLT_NC)
SLT_CERTIFICACION <- cbind(plantel_certificacion_SLT_C,plantel_certificacion_SLT_NC)
print(SLT_CERTIFICACION)
#<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
plantel_certificacion_PESCER_C <- data[data$Plantel == "PESCER" & data$Certificacion == "C", ]
plantel_certificacion_PESCER_NC <- data[data$Plantel == "PESCER" & data$Certificacion == "NC", ]
print(plantel_certificacion_PESCER_C)
print(plantel_certificacion_PESCER_NC)
PESCER_CERTIFICACION <- cbind(plantel_certificacion_PESCER_C,plantel_certificacion_PESCER_NC)
print(PESCER_CERTIFICACION)
#<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
indices <- c(1,5,3,7,2,4,6,8)
cert_ch <- CH_CERTIFICACION[,indices]
indicesr <- c(1,3,5,6,7,8)
cert_ch_rev <- cert_ch[indicesr]
colnames(cert_ch_rev) <- c("Plantel","Lic",
                           "Certificacion", "Cert",
                           "Certificacion2", "NoCert")
indices <- c(1,2,4,6)
cert_ch <- cert_ch_rev[,indices]; print(cert_ch)
#- - - - - - - - - - - - - - - - - - - - - - - - - - 
indices <- c(1,5,3,7,2,4,6,8)
cert_dv <- DV_CERTIFICACION[,indices]
indicesr <- c(1,3,5,6,7,8)
cert_dv_rev <- cert_dv[indicesr]
colnames(cert_dv_rev) <- c("Plantel","Lic",
                           "Certificacion", "Cert",
                           "Certificacion2", "NoCert")
indices <- c(1,2,4,6)
cert_dv <- cert_dv_rev[,indices]; print(cert_dv)
#- - - - - - - - - - - - - - - - - - - - - - - - - - 
indices <- c(1,5,3,7,2,4,6,8)
cert_izt <- IZT_CERTIFICACION[,indices]
indicesr <- c(1,3,5,6,7,8)
cert_izt_rev <- cert_izt[indicesr]
colnames(cert_izt_rev) <- c("Plantel","Lic",
                           "Certificacion", "Cert",
                           "Certificacion2", "NoCert")
indices <- c(1,2,4,6)
cert_izt <- cert_izt_rev[,indices]; print(cert_izt)
#- - - - - - - - - - - - - - - - - - - - - - - - - - 
indices <- c(1,5,3,7,2,4,6,8)
cert_gam <- GAM_CERTIFICACION[,indices]
indicesr <- c(1,3,5,6,7,8)
cert_gam_rev <- cert_gam[indicesr]
colnames(cert_gam_rev) <- c("Plantel","Lic",
                           "Certificacion", "Cert",
                           "Certificacion2", "NoCert")
indices <- c(1,2,4,6)
cert_gam <- cert_gam_rev[,indices]; print(cert_gam)
#- - - - - - - - - - - - - - - - - - - - - - - - - - 
indices <- c(1,5,3,7,2,4,6,8)
cert_slt <- SLT_CERTIFICACION[,indices]
indicesr <- c(1,3,5,6,7,8)
cert_slt_rev <- cert_slt[indicesr]
colnames(cert_slt_rev) <- c("Plantel","Lic",
                           "Certificacion", "Cert",
                           "Certificacion2", "NoCert")
indices <- c(1,2,4,6)
cert_slt <- cert_slt_rev[,indices]; print(cert_slt)
#- - - - - - - - - - - - - - - - - - - - - - - - - - 
indices <- c(1,5,3,7,2,4,6,8)
cert_pescer <- PESCER_CERTIFICACION[,indices]
indicesr <- c(1,3,5,6,7,8)
cert_pescer_rev <- cert_pescer[indicesr]
colnames(cert_pescer_rev) <- c("Plantel","Lic",
                           "Certificacion", "Cert",
                           "Certificacion2", "NoCert")
indices <- c(1,2,4,6)
cert_pescer <- cert_pescer_rev[,indices]; print(cert_pescer)
#- - - - - - - - - - - - - - - - - - - - - - - - - - 
cert_planteles <- rbind(cert_ch,cert_dv,
                        cert_izt,cert_gam,
                        cert_slt,cert_pescer)
print(cert_planteles)
Ttls <- cert_planteles[,3]+cert_planteles[,4]
cert_planteles <- cbind(cert_planteles,Ttls)
Porcentajes <- round(cert_planteles[,3]/cert_planteles[,5],2)
Tasa <- round(cert_planteles[,3]/cert_planteles[,4],2)
cert_planteles <- cbind(cert_planteles,Porcentajes,
                        Tasa)
print(cert_planteles)
cert_planteles[is.na(cert_planteles)] <- 0
print(cert_planteles)

cp_ch <- cert_planteles[1:19,]
cp_dv <- cert_planteles[20:38,]
cp_izt <- cert_planteles[39:57,]
cp_gam <- cert_planteles[58:76,]
cp_slt <- cert_planteles[77:95,]
cp_pescer <- cert_planteles[96:114,]

print(cp_ch)
print(cp_dv)
print(cp_izt)
print(cp_gam)
print(cp_slt)
print(cp_pescer)

