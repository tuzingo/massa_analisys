library("ggplot2")

cat("Welcome to É MASSA! Graphics Generator V1.0 ")
dados <- read.csv("data.csv", header = TRUE, sep = ",")

# Function to create a line chart
create_line_chart <- function(data) {
  # Create a ggplot object
  p <- ggplot(data, aes(x = V51, y = V52)) +
    geom_line() +
    geom_point() +
    labs(x = "V55", y = "v56", title = "Gráfico de linhas")

  # Return the plot
  return(p)
}
line_chart <- create_line_chart(dados)
print(line_chart)
