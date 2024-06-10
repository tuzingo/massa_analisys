library('dplyr')
library('table1')
dados <- read.table("data_collection.csv", header = TRUE, sep = ";")


label(dados$X2KM_APP) <- "2Km/h APP"
label(dados$X2KM_ACC) <- "2Km/h ACC"
label(dados$X4KM_APP) <- "4Km/h APP"
label(dados$X4KM_ACC) <- "4Km/h ACC"
label(dados$X6KM_APP) <- "6Km/h APP"
label(dados$X6KM_ACC) <- "6Km/h ACC"
label(dados$X8KM_APP) <- "8Km/h APP"
label(dados$X8KM_ACC) <- "8Km/h ACC"
label(dados$X10KM_ACC) <- "10Km/h ACC"
label(dados$X10KM_APP) <- "10Km/h APP"



table1(~ X2KM_ACC
  + X2KM_APP +
  X4KM_APP +
  X4KM_ACC +
  X6KM_ACC +
  X6KM_APP +
  X8KM_APP +
  X8KM_ACC +
  X10KM_ACC +
  X10KM_APP, data = dados)

