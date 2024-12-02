surgery_data <- data.frame(
  species = c("Cat", "Dog", "Cat"),
  surgery_type = c("Spay", "Spay", "Neuter"),
  age = c(.5, 1,1),
  surgery_date = as.Date(c("2024-01-02", "2024-01-02", "2024-01-02")),
  stringsAsFactors = FALSE
)
print(surgery_data)

