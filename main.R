library(readr)

# Função para contar quando os valores começam a diminuir
dados <- read.csv(file = "data.csv", header = TRUE, sep = ",")
contar_diminuicoes <- function(valores) {
  contador <- 0
  for (i in 2:length(meus_valores)) {
    if (meus_valores[i] > meus_valores[i - 1] && meus_valores[i] < meus_valores[i - i+1]) {
      contador <- contador + 1
    }
  }
  return(contador)
}

meus_valores <- dados$V51
total_diminuicoes1 <- contar_diminuicoes(meus_valores)
cat("Total de diminuições:", total_diminuicoes1, "\n")
meus_valores <- dados$V52
total_diminuicoes2 <- contar_diminuicoes(meus_valores)
cat("Total de diminuições:", total_diminuicoes2, "\n")

total_diminuicoes <- total_diminuicoes1 - total_diminuicoes2
print(total_diminuicoes)