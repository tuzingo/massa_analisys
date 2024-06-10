source("./error.R")

# Example switch statement to call different functions
my_function <- function(action) {
  switch(action,
    'compute_mean' = {
      # Call a function to compute the mean
      result <- mean(c(1, 2, 3))
    },
    'compute_sum' = {
      # Call a function to compute the sum
      result <- sum(c(4, 5, 6))
    },
    'compute_product' = {
      # Call a function to compute the product
      result <- prod(c(7, 8, 9))
    },
  {
    # Default case
    result <- "Invalid action"
  }
  )
  return(result)
}

# Call the function with different actions
print(my_function('compute_mean'))  # Prints the mean
print(my_function('compute_sum'))   # Prints the sum
print(my_function('compute_product'))  # Prints the product
print(my_function('invalid_action'))  # Prints "Invalid action"
