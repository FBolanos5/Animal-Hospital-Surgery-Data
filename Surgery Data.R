# Author : Francisco Bolaños
# Date Started: 12/02/2024


# Libraries used:
library(dplyr)


# Create a data frame that will hold all collected data 
# Includes: species, type of surgery, age of animal, and date of the surgery


surgery_data <- data.frame(
  
                                      # January's species
  species = c("Cat", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Cat",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Dog", "Cat", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", 
              "Dog", "Cat", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Cat", "Dog", "Dog", "Dog", 
              "Dog", "Dog", "Cat", "Cat", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Cat",
              "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Cat", "Dog", "Dog", "Dog",
              "Cat", "Dog", "Cat", "Cat", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Cat", "Dog"),
  
                                          # January's surgery types
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
                   "Abscess Repair", "Cystotomy", "Neuter", "Mass Removal", "Spay",
                   "Neuter", "Neuter", "Dental", "Spay", "Laceration Repair", "Laceration Repair",
                   "Neuter", "Spay", "Spay", "Abscess Repair", "Laceration Repair",
                   "Neuter", "Neuter", "Mass Removal", "Exploration", "Laceration Repair",
                   "Dental", "Spay", "Hernia Repair", "Neuter", "Cruciate Repair", "Dental",
                   "Spay", "Neuter", "Mass Removal", "Spay", "Spay", "Mass Removal",
                   "Laceration Repair", "Laceration Repair", "Spay", "Spay", "Abscess Repair",
                   "Mass Removal", "Mass Removal", "Abscess Repair", "Laceration Repair",
                   "Laceration Repair", "Dental", "Spay", "Mass Removal", "Mass Removal",
                   "Abscess Repair", "Dysplasia", "TPLO", "Mass Removal", "Neuter",
                   "Neuter", "Spay", "Hernia Repair", "Laceration Repair", "Abscess Repair",
                   "Laceration Repair", "Gastropexy", "Enterotomy", "Laceration Repair",
                   "Dental", "Dental", "Neuter", "Spay", "Neuter", "Dental", "Mass Removal",
                   "Mass Removal", "Abscess Repair", "Spay", "Neuter", "Mass Removal",
                   "Laceration Repair", "Laceration Repair", "Tail Amputation","Neuter",
                   "Laceration Repair"),
  
                                            # January's pet ages (LOOK AT 99'S NEED AGES FOR PET)
  age = c(.5, 1, 1, .83, 6, 12, 4, 5, 1, 5, 5, 3, .5, 1, 6, .75, .75, 11, 3, 11, 2,
          8, 3, 3, .58, .75, 11, 5, 2, 5, 5, 5, 13, 13, 9, 8, 2, 1, .83, .83, 7, 
          13, .83, 9, 7, 11, 3, .67, 11, 11, .5, 2, .83, 3, 4, 3, 11, 2, .58, 8, 
          8, 1, .5, 12, 5, 9, 1, 8, 9, 4, 4, 7, .92, .75, .75, 6, 1, 3, 1, 1, 2, .75,
          6, 11, .5, .75, 8, 3, 3, 8, .66, 12, 12, 10, 7, .5, .83, 12, 1, 1, 12, 2,
          1, .58, .58, 10, 8, 14, 2, 7, 6, 11, 11, 11, 8, 7, 6, 2, 12, .58, .83, 1,
          11, 14, 10, 3, 99, 99, 10, 11, 14, .5, .66, .83, 13, 13, 10, 11, .66, 1,
          .66, 2, 2, 6, 2, .75),
  
                                              # January surgery dates(LOOK AT JAN 28, NEED AGES FOR PET'S THAT ARE 99)
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
                           "2024-01-16", "2024-01-16", "2024-01-17", "2024-01-17",
                           "2024-01-18", "2024-01-18", "2024-01-18", "2024-01-18",
                           "2024-01-18", "2024-01-18", "2024-01-18", "2024-01-19",
                           "2024-01-19", "2024-01-19", "2024-01-19", "2024-01-21",
                           "2024-01-22", "2024-01-22", "2024-01-22", "2024-01-22",
                           "2024-01-22", "2024-01-22", "2024-01-22", "2024-01-22",
                           "2024-01-22", "2024-01-22", "2024-01-22", "2024-01-23",
                           "2024-01-23", "2024-01-23", "2024-01-23", "2024-01-23",
                           "2024-01-23", "2024-01-23", "2024-01-23", "2024-01-24",
                           "2024-01-24", "2024-01-24", "2024-01-24", "2024-01-24",
                           "2024-01-24", "2024-01-24", "2024-01-25", "2024-01-25",
                           "2024-01-25", "2024-01-25", "2024-01-25", "2024-01-25",
                           "2024-01-26", "2024-01-26", "2024-01-26", "2024-01-26",
                           "2024-01-26", "2024-01-26", "2024-01-26", "2024-01-27",
                           "2024-01-27", "2024-01-28", "2024-01-28", "2024-01-28",
                           "2024-01-28", "2024-01-29", "2024-01-29", "2024-01-29",
                           "2024-01-29", "2024-01-29", "2024-01-29", "2024-01-29",
                           "2024-01-29", "2024-01-29", "2024-01-30", "2024-01-30",
                           "2024-01-30", "2024-01-30", "2024-01-31", "2024-01-31",
                           "2024-01-31", "2024-01-31")),
  
  
  stringsAsFactors = FALSE
)
print(surgery_data)

# Some experimenting with getting data. Possible uses later.

surgery_data %>% count(species)
surgery_data %>% count(surgery_type)
surgery_data %>% count(surgery_date)
surgery_data %>% group_by(species) %>% filter(age == max(age, na.rm = TRUE))
mean(surgery_data$age)
