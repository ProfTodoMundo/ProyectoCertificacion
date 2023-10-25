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
MaxIntNuncaCertif  <- MPG[order(MPG$MaxIntNuncaCert,decreasing= TRUE), ];  View(MaxIntNuncaCertif); # si
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResMaxIntNuncaCert <- MaxIntNuncaCertif%>% filter(MaxIntNuncaCertif$MaxIntNuncaCert>=4);
ResMaxIntNuncaCert <- ResMaxIntNuncaCert[,c(1,4,5,2,7)]; View(ResMaxIntNuncaCert);
summary(ResMaxIntCert)
ResMaxIntNuncaCert <- ResMaxIntNuncaCert[,c(1,2)]; View(ResMaxIntNuncaCert);
summary(ResMaxIntCert)
table_latex <- xtable(ResMaxIntNuncaCert)
print(table_latex, type = "latex")
