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
MediaNuncaCert   <- MPG[order(MPG$MeanIntNuncaCert,decreasing= TRUE), ]; View(MediaNuncaCert);  # si
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResMediaNuncaCert <- MediaNuncaCert%>% filter(MediaNuncaCert$MeanIntNuncaCert>=2);
ResMediaNuncaCert <-ResMediaNuncaCert[, c(1,5,3,4,7)]; View(ResMediaNuncaCert); 
ResMediaNuncaCert <-ResMediaNuncaCert[, c(1,2)]; View(ResMediaNuncaCert); 
summary(ResMediaNuncaCert)
table_latex <- xtable(ResMediaNuncaCert)
print(table_latex, type = "latex")
