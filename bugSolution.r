```r
# Improved code to handle recycling and ensure element-wise AND operation.

matrix_data <- matrix(c(TRUE, FALSE, TRUE, TRUE), nrow = 2, ncol = 2)
vector_data <- c(TRUE, FALSE)

# Explicitly recycle the vector to match matrix dimensions before the logical AND operation
recycled_vector <- matrix(rep(vector_data, each = nrow(matrix_data)), nrow = 2, ncol = 2)

result <- matrix_data & recycled_vector
print(result)

# Alternative using `sweep` which can be more efficient and robust.
result_sweep <- sweep(matrix_data, 2, vector_data, FUN = '&')
print(result_sweep)
```