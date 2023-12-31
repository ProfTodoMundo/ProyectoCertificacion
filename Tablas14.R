data_Planteles_FnF <- data.frame(
  Plantel = c("CH", "GAM", "DV", "IZT", "SLT", "PESCER"),
  C = c(84316, 184212, 57100, 84764, 381135, 16854),
  NC = c(49722, 66429, 29883, 49641, 211925, 7111)
)


data <- data_Planteles_FnF

TTls <- data[,2]+data[,3]
data <- cbind(data,TTls)
Prop1 <- data[,2]/data[,4]
Prop2 <- data[,2]/data[,3]
data <- cbind(data,Prop1,Prop2)