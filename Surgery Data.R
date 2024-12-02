surgery_data <- data.frame(
  species = c("Cat", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Cat",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Dog", "Cat", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", 
              "Dog", "Cat", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Cat", "Dog", "Dog"),
  
  surgery_type = c("Spay", "Spay", "Neuter", "Laceration Repair", "Enucleation", 
                   "Pyometra", "Neuter", "Exploration", "Abscess Repair", "Neuter",
                   "Laceration Repair", "TPLO", "Neuter", "Spay", "Exploration", "Spay",
                   "Spay", "Mass Removal", "Dental", "Dental", "Exploration", 
                   "Hematoma", "Splenectomy", "Gastropexy", "Spay", "Neuter", "Mass Removal",
                   "Neuter", "Spay", "Spay", "Mass Removal", "Mass Removal", "Cystotomy",
                   "Neuter", "Dental", "Dental", "Neuter", "Neuter", "Spay", "Hernia Repair",
                   "Dental", "Dental", "Abdominocentesis", "Laceration Repair", 
                   "Dental", "Dental", "Neuter", "Neuter", "Mass Removal", "Laceration Repair",
                   "FHO", "Abscess Repair", "Spay", "Neuter", "Hernia Repair", "Dental",
                   "Dental", "Abscess Repair", "Spay", "Neuter", "Mass Removal", "Spay",
                   "Spay", "Mass Removal", "Dental", "Spay", "Spay", "Enucleation",
                   "Abscess Repair", "Cystotomy"),
  
  age = c(.5, 1, 1, .83, 6, 12, 4, 5, 1, 5, 5, 3, .5, 1, 6, .75, .75, 11, 3, 11, 2,
          8, 3, 3, .58, .75, 11, 5, 2, 5, 5, 5, 13, 13, 9, 8, 2, 1, .83, .83, 7, 
          13, .83, 9, 7, 11, 3, .67, 11, 11, .5, 2, .83, 3, 4, 3, 11, 2, .58, 8, 
          8, 1, .5, 12, 5, 9, 1, 8, 9, 4),
  
  surgery_date = as.Date(c("2024-01-02", "2024-01-02", "2024-01-02", "2024-01-04", 
                           "2024-01-06", "2024-01-06", "2024-01-07", "2024-01-07", 
                           "2024-01-07", "2024-01-07", "2024-01-07", "2024-01-08",
                           "2024-01-08", "2024-01-08", "2024-01-08", "2024-01-09",
                           "2024-01-09", "2024-01-09", "2024-01-09", "2024-01-09",
                           "2024-01-09", "2024-01-09", "2024-01-09", "2024-01-09",
                           "2024-01-10", "2024-01-10", "2024-01-10", "2024-01-10",
                           "2024-01-10", "2024-01-10", "2024-01-10", "2024-01-10",
                           "2024-01-11", "2024-01-11", "2024-01-11", "2024-01-11",
                           "2024-01-11", "2024-01-11", "2024-01-11", "2024-01-11",
                           "2024-01-11", "2024-01-11", "2024-01-11", "2024-01-11",
                           "2024-01-12", "2024-01-12", "2024-01-12", "2024-01-12",
                           "2024-01-12", "2024-01-14", "2024-01-14", "2024-01-14",
                           "2024-01-15", "2024-01-15", "2024-01-15", "2024-01-15",
                           "2024-01-15", "2024-01-15", "2024-01-15", "2024-01-15",
                           "2024-01-15", "2024-01-16", "2024-01-16", "2024-01-16",
                           "2024-01-16", "2024-01-16", "2024-01-16", "2024-01-16",
                           "2024-01-16", "2024-01-16")),
  
  stringsAsFactors = FALSE
)
print(surgery_data)


