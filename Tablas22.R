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
ModaIntNuncaCert <- MPG[order(MPG$ModeIntNuncaCert,decreasing= TRUE), ]; View(ModaIntNuncaCert) # si
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResModaIntNuncaCert <- ModaIntNuncaCert%>% filter(ModaIntNuncaCert$ModeIntNuncaCert>=2);
ResModaIntNuncaCert <- ResModaIntNuncaCert[, c(1,7,3,4)]; View(ResModaIntNuncaCert); 
ResModaIntNuncaCert <- ResModaIntNuncaCert[,c(1,2)]; View(ResModaIntNuncaCert);
summary(ResModaIntNuncaCert)
table_latex <- xtable(ResModaIntNuncaCert)
print(table_latex, type = "latex")
