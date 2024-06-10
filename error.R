
### Coefficient of Variation Generator Script
## By Arthur Regueira (Tucaum.R) in 2024

w_data <-  read.csv("data_collection.csv", sep = ";", header = T) # Data import
w_data$ID <- NULL # Cleaning "IDs data"

coefficientVariation <- function (){
  # sapply(dados, function  (x) sd(x) / mean(x) * 100)
  return(
    sapply(w_data, function (x) sd(x, na.rm= T ) / mean(x, na.rm= T ) * 100 )
  )
}
meanCV <- function (){
  return(
    as.numeric(
      mean(
        sapply(w_data, function (x) {
           sd(x, na.rm= T ) / mean(x, na.rm= T ) * 100
        })
      )
    )
  )
}
sdCV <- function (){
  sd(
    sapply(w_data, function (x){
       sd(x, na.rm= T ) / mean(x, na.rm= T ) * 100
    }
  )
}
print(error())
print( meanError())
print(sdCV())
