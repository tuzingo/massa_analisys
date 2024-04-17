library('dplyr')
library('table1')
dados <- read.table("dados_por_estagio.csv", header = TRUE, sep = ",")


label(dados$X2KMPH_APP) <- "2Km/h APP"
label(dados$X2KMPH_ACC) <- "2Km/h ACC"
label(dados$X4KMPH_APP) <- "4Km/h APP"
label(dados$X4KMPH_ACC) <- "4Km/h ACC"
label(dados$X6KMPH_APP) <- "6Km/h APP"
label(dados$X6KMPH_ACC) <- "6Km/h ACC"
label(dados$X8KMPH_APP) <- "8Km/h APP"
label(dados$X8KMPH_ACC) <- "8Km/h ACC"
label(dados$X10KMPH_ACC) <- "10Km/h ACC"
label(dados$X10KMPH_APP) <- "10Km/h APP"
label(dados$X12KMPH_ACC) <- "12Km/h ACC"
label(dados$X12KMPH_APP) <- "12Km/h APP"


table1(~ X2KMPH_ACC + X2KMPH_APP + X4KMPH_APP + X4KMPH_ACC + X6KMPH_ACC + X6KMPH_APP + X8KMPH_APP + X8KMPH_ACC + X10KMPH_ACC + X10KMPH_APP + X12KMPH_ACC + X12KMPH_APP, data = dados)

