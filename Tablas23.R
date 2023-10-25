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
ModaIntSiCert    <- MPG[order(MPG$ModeIntSiCert,decreasing= TRUE), ];    View(ModaIntSiCert)    # si
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResModaIntSiCert <- ModaIntSiCert%>% filter(ModaIntSiCert$ModeIntSiCert>=2);
ResModaIntSiCert <- ResModaIntSiCert[, c(1,11,8,9)]; View(ResModaIntSiCert); 
ResModaIntSiCert <- ResModaIntSiCert[, c(1,2)]; View(ResModaIntSiCert); 
summary(ResModaIntSiCert)
table_latex <- xtable(ResModaIntSiCert)
print(table_latex, type = "latex")
