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
ResProbNuncaCert <- MPG[order(MPG$ProbNuncaCert,decreasing= TRUE), ];    View(ResProbNuncaCert); # si
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResProbNuncaCertPrimeros <- ResProbNuncaCert %>% filter(ResProbNuncaCert$ProbNuncaCert>=0.75);
ResProbNuncaCertPrimeros <- ResProbNuncaCertPrimeros[,c(1,3,4)]; View(ResProbNuncaCertPrimeros)
summary(ResProbNuncaCertPrimeros)
table_latex <- xtable(ResProbNuncaCertPrimeros)
print(table_latex, type = "latex")
