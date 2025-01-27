```r
# Example demonstrating unexpected behavior with R's recycling rules and logical operators.

matrix_data <- matrix(c(TRUE, FALSE, TRUE, TRUE), nrow = 2, ncol = 2)
vector_data <- c(TRUE, FALSE)

result <- matrix_data & vector_data
print(result)

# Expected behavior might be element-wise AND operation, resulting in a 2x2 matrix.
# However, R's recycling rules can lead to unexpected results if not handled carefully.
```