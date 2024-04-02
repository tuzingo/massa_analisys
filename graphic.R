

cat("Welcome to É MASSA! Graphics Generator V1.0 ")
dados <- read.csv("data.csv", header = TRUE, sep = ",")
var_names <- variable.names(dados)
print(var_names)

# Function to create a line chart
create_line_chart <- function(data) {
  # Create a ggplot object
  p <- ggplot(data, aes(x = V54, y = V55)) +
    geom_line() +
    geom_point() +
    labs(x = "V55", y = "v56", title = "Line Chart: V55 vs. v56")

  # Return the plot
  return(p)
}
