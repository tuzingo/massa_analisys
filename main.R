library("ggplot2")
library(readr)

line_chart <- create_line_chart(dados)
print(line_chart)
# Função para contar quando os valores começam a diminuir

contar_diminuicoes <- function(valores) {
  contador <- 0
  for (i in 2:length(meus_valores)) {
    if (meus_valores[i] > meus_valores[i - 1] && meus_valores[i] < meus_valores[i - i+1]) {
      contador <- contador + 1
    }
  }
  return(contador)
}

# Exemplo de uso:
meus_valores <- dados$V55
total_diminuicoes1 <- contar_diminuicoes(meus_valores)
cat("Total de diminuições:", total_diminuicoes, "\n")
meus_valores <- dados$V54
total_diminuicoes2 <- contar_diminuicoes(meus_valores)
cat("Total de diminuições:", total_diminuicoes, "\n")

total_diminuicoes <- total_diminuicoes1 - total_diminuicoes2
print(total_diminuicoes)