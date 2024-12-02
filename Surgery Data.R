surgery_data <- data.frame(
  species = c("Cat", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Cat",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Dog", "Cat", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog"),
  
  surgery_type = c("Spay", "Spay", "Neuter", "Laceration Repair", "Enucleation", 
                   "Pyometra", "Neuter", "Exploration", "Abscess Repair", "Neuter",
                   "Laceration Repair", "TPLO", "Neuter", "Spay", "Exploration", "Spay",
                   "Spay", "Mass Removal", "Dental", "Dental", "Exploration", 
                   "Hematoma", "Splenectomy", "Gastropexy", "Spay", "Neuter", "Mass Removal",
                   "Neuter", "Spay", "Spay", "Mass Removal", "Mass Removal"),
  
  age = c(.5, 1, 1, .83, 6, 12, 4, 5, 1, 5, 5, 3, .5, 1, 6, .75, .75, 11, 3, 11, 2,
          8, 3, 3, .58, .75, 11, 5, 2, 5, 5, 5),
  
  surgery_date = as.Date(c("2024-01-02", "2024-01-02", "2024-01-02", "2024-01-04", 
                           "2024-01-06", "2024-01-06", "2024-01-07", "2024-01-07", 
                           "2024-01-07", "2024-01-07", "2024-01-07", "2024-01-08",
                           "2024-01-08", "2024-01-08", "2024-01-08", "2024-01-09",
                           "2024-01-09", "2024-01-09", "2024-01-09", "2024-01-09",
                           "2024-01-09", "2024-01-09", "2024-01-09", "2024-01-09",
                           "2024-01-10", "2024-01-10", "2024-01-10", "2024-01-10",
                           "2024-01-10", "2024-01-10", "2024-01-10", "2024-01-10")),
  
  stringsAsFactors = FALSE
)
print(surgery_data)


