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
ResProbCert1a    <- MPG[order(MPG$ProbCert1a,decreasing= TRUE), ];       View(ResProbCert1a);    # si
summary(ResProbCert1a)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ProbCert<- ResProbCert1a %>% filter(ResProbCert1a$ProbCert1a>=0.9);
ResProbCert <- ResProbCertPrimera[,c(1,2)]; View(ResProbCert);
ResProbCert <- as.data.frame(ResProbCertPrimera); View(ResProbCert)
summary(ResProbCert)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResProbCert2 <- ResProbCert1a %>% filter(ResProbCert1a$ProbCert1a>=0.75 & 
                                           ProbCert1a < 0.9); 
ResProbCert2 <- ResProbCert2[,c(1,2)]; View(ResProbCert2);
ResProbCert2 <- as.data.frame(ResProbCert2); View(ResProbCert2)
summary(ResProbCert2)
table_latex <- xtable(ResProbCert2)
print(table_latex, type = "latex")
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResProbCert3 <- ResProbCert1a %>%filter(ProbCert1a >= 0.5 & ProbCert1a < 0.75)
View(ResProbCert3)
ResProbCert3 <- ResProbCert3[,c(1,2)]; View(ResProbCert3);
ResProbCert3 <- as.data.frame(ResProbCert3); View(ResProbCert3)
summary(ResProbCert3)
table_latex <- xtable(ResProbCert3)
print(table_latex, type = "latex")
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResProbCert4 <- ResProbCert1a %>%filter(ProbCert1a == 0.5 )
View(ResProbCert4)
ResProbCert4 <- ResProbCert3[,c(1,2)]; View(ResProbCert4);
ResProbCert4 <- as.data.frame(ResProbCert4); View(ResProbCert4)
summary(ResProbCert4)
table_latex <- xtable(ResProbCert4)
print(table_latex, type = "latex")

#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>
ResProbCert5 <- ResProbCert1a %>%filter(ProbCert1a < 0.5 )
View(ResProbCert5)
ResProbCert5 <- ResProbCert5[,c(1,2)]; View(ResProbCert5);
ResProbCert5 <- as.data.frame(ResProbCert5); View(ResProbCert5)
summary(ResProbCert5)
#<<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>><<==>><<==>><<==>><<==<<==>><<==>>