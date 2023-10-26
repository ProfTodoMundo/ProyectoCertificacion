load("/home/todomundo/Documentos/Resultados/Repositorio/WkspceActualizado.RData")
load("/Users/todomundomx/Documents/CertProy/ArticuloCertGral/Repositorio/WkspceActualizado.RData")
View(MiBDD)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
library(dplyr)
library(readr)
library(foreign)
library(xtable)
library(stargazer)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
View(MPG)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
MaxIntCert       <- MPG[order(MPG$MaxIntSiCert,decreasing= TRUE), ];     View(MaxIntCert);      # si
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResMaxIntCert <- MaxIntCert %>% filter(MaxIntCert$MaxIntSiCert>=4);
ResMaxIntCert <- ResMaxIntCert[,c(1,8,9,11)]; View(ResMaxIntCert)
ResMaxIntCert <- ResMaxIntCert[,c(1,2)]; View(ResMaxIntCert)
summary(ResMaxIntCert)
table_latex <- xtable(ResMaxIntCert)
print(table_latex, type = "latex")
