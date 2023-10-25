load("/home/todomundo/Documentos/Resultados/Repositorio/WkspceActualizado.RData")
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
MediaIntSiCert   <- MPG[order(MPG$MeanIntSiCert,decreasing= TRUE), ];    View(MediaIntSiCert)   # si
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResMediaSiCert <- MediaIntSiCert%>% filter(MediaIntSiCert$MeanIntSiCert>=2)
ResMediaSiCert <- ResMediaSiCert[, c(1,9,8,10,11)]; View(ResMediaSiCert); 
ResMediaSiCert <-ResMediaSiCert[, c(1,2)]; View(ResMediaSiCert); 
summary(ResMediaSiCert)
table_latex <- xtable(ResMediaSiCert)
print(table_latex, type = "latex")
