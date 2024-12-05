# Author : Francisco Bolaños
# Date Started: 12/02/2024


# Libraries used:
library(dplyr)


# Create a data frame that will hold all collected data 
# Includes: species, type of surgery, age of animal, and date of the surgery

options(max.print = 3000)
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
              "Dog", "Dog", "Dog", "Cat", "Dog",
              
                                      # February's species
              "Cat", "Dog", "Dog", "Dog", "Cat", "Cat", "Cat", "Dog", "Dog", "Cat",
              "Dog", "Dog", "Cat", "Dog", "Dog", "Cat", "Cat", "Dog", "Dog", "Cat",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Cat", "Dog", "Cat", "Cat", "Dog", "Dog", "Dog", "Cat",
              "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog",
              "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Cat",
              "Cat", "Dog", "Cat", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Cat", "Cat",
              "Dog", "Cat", "Cat", "Dog", "Cat", "Dog", "Dog", "Dog", "Cat", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              
              
                          
                                      # March's species  
              
              "Rabbit", "Cat", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Dog", "Cat", "Dog", "Dog",
              "Dog", "Dog", "Cat", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog"),
  
  
  
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
                   "Laceration Repair",
                   
                                          # February's surgery types
                   "Spay", "Spay", "Dental", "Hernia Repair", "Spay", "Mass Removal",
                   "Dental", "Nasal Scope", "Hematoma", "Neuter", "Aspiration", 
                   "Exploratory", "Laceration Repair", "Abscess Repair", "Neuter",
                   "Spay", "Spay", "Dental", "Dental", "Spay", "Pyometra", "Enema",
                   "Dental", "Spay", "Gastrotomy", "Pyometra", "Neuter", "Mass Removal",
                   "Laceration Repair", "Mass Removal", "Mass Removal", "Laceration Repair",
                   "Mass Removal", "Abscess Repair", "Laceration Repair", "Dental",
                   "Dental", "Mass Removal", "Enterotomy", "Hernia Repair", "Neuter",
                   "Laceration Repair", "Enema", "Neuter", "Neuter", "Neuter",
                   "Mass Removal", "Dental", "Dewclaw Removal", "Spay", "Spay",
                   "Pyometra", "Dental", "Splenectomy", "Adenoma Removal", "Intestinal Anastomosis",
                   "Spay", "Spay", "Spay", "Spay", "Mass Removal", "Mass Removal",
                   "Dental", "Dental", "Dental", "Enucleation", "Cystotomy", "Neuter",
                   "Laceration Repair", "Laceration Repair", "Mass Removal", "Laceration Repair",
                   "Exploratory", "Abdominocentesis", "Laceration Repair", "Laceration Repair",
                   "Laceration Repair", "Laceration Repair", "Laceration Repair",
                   "Fracture Repair", "TPLO", "Dental", "Hematoma", "Dental", "Spay",
                   "Dental", "Abscess Repair", "Dental", "Spay", "Spay", "Termination",
                   "Dental", "Neuter", "Laceration Repair", "Netuer", "Spay", "Abscess Repair",
                   "Spay", "Abscess Repair", "Eye Reduction", "Abscess Repair",
                   "Mass Removal", "Prolapse Repair", "Mass Removal", "Urethrostomy",
                   "Neuter", "Spay", "Enucleation", "Urethrostomy", "Abscess Repair",
                   "Laceration Repair", "Neuter", "Laceration Repair", "C-Section",
                   "Spay", "Dental", "Spay", "Dental", "Spay", "Dental", "Laceration Repair",
                   "Enucleation", "Mass Removal", "Laceration Repair", "Laceration Repair",
                   "Spay", "Spay", "Exploratory", "Spay", "Spay", "Dental", "Hernia Repair",
                   "Abscess Repair", "Gastric Tube Insertion", "Abscess Repair", "Laceration Repair",
                   
                   
                   
                                            # March's surgery types
                   
                   "Neuter", "Neuter", "Spay", "Spay", "Laceration Repair", "Laceration Repair",
                   "Laceration Repair", "Laceration Repair", "ACL Repair", "TPLO",
                   "Dental", "Dental", "Spay", "Neuter", "Mass Removal", "Dental",
                   "Mass Removal", "Neuter", "Abscess Repair", "Mass Removal", "Amputation",
                   "Neuter", "Neuter", "Neuter", "Neuter", "Adenoma Removal", "Scrotal Ablation",
                   "Abscess Repair", "Laceration Repair", "Spay", "Neuter", "Mass Removal",
                   "Spay", "Spay", "Femoral Head & Neck Repair", "Abscess Repair",
                   "Mass Removal", "Spay", "Mass Removal", "Mass Removal", "Dental",
                   "Spay", "Dental", "Aspiration", "Abscess Repair"),
  
  
                                            # January's pet ages (LOOK AT 99'S NEED AGES FOR PET)
  age = c(.5, 1, 1, .83, 6, 12, 4, 5, 1, 5, 5, 3, .5, 1, 6, .75, .75, 11, 3, 11, 2,
          8, 3, 3, .58, .75, 11, 5, 2, 5, 5, 5, 13, 13, 9, 8, 2, 1, .83, .83, 7, 
          13, .83, 9, 7, 11, 3, .67, 11, 11, .5, 2, .83, 3, 4, 3, 11, 2, .58, 8, 
          8, 1, .5, 12, 5, 9, 1, 8, 9, 4, 4, 7, .92, .75, .75, 6, 1, 3, 1, 1, 2, .75,
          6, 11, .5, .75, 8, 3, 3, 8, .66, 12, 12, 10, 7, .5, .83, 12, 1, 1, 12, 2,
          1, .58, .58, 10, 8, 14, 2, 7, 6, 11, 11, 11, 8, 7, 6, 2, 12, .58, .83, 1,
          11, 14, 10, 3, 99, 99, 10, 11, 14, .5, .66, .83, 13, 13, 10, 11, .66, 1,
          .66, 2, 2, 6, 2, .75,
          
                                            # February's pet ages
          1, .5, 7, 10, 7, 10, 10, 6, 7, .5, 9, 13, 2, 3, .5, .5, .75, 10, 11, .5,
          12, 5, 4, .58, .58, 7, 3, 10, .75, 5, 11, 14, 12, 9, .08, 8, 11, 11, 11,
          11, 11, 10, 19, .92, .92, .58, 9, 9, 6, .66, 1, 8, 13, 8, 9, 9, 3, .58,
          .58, 11, 11, 13, 10, 11, 13, 12, 6, 6, 2, 10, 7, 3, 12, 11, .75, 2, 11,
          1, 13, .83, 4, 1, 12, 12, 3, 8, 10, 10, .66, .83, .83, 5, 6, 1, 1, .5,
          3, 1, 15, 1, 1, 13, 13, 13, 7, 1, .83, 11, 7, 4, 9, 1, 2, 2, .5, 9, .5,
          15, .58, 6, 19, 11, 7, 9, 6, 2, 5, 13, 1, .33, .33, .33, 2, 12, 6, 1,
          
          
                                            # March's pet ages
          
          .5, .5, .5, .5, 3, .75, 8, 7, 5, 8, 10, 13, .66, 1, 8, 8, 4, 1, 10, 8, 9,
          2, 1, .5, 13, 13, 13, 12, 1, .5, .5, 8, .5, 1, 7, 10, 11, 1, 3, 7, 7, .83,
          8, 4, 3),
  
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
                           "2024-01-31", "2024-01-31",
                           
                           
                                              # February surgery dates
                           "2024-02-01", "2024-02-01", "2024-02-01", "2024-02-01",
                           "2024-02-01", "2024-02-01", "2024-02-01", "2024-02-02",
                           "2024-02-02", "2024-02-02", "2024-02-02", "2024-02-03",
                           "2024-02-03", "2024-02-03", "2024-02-05", "2024-02-05",
                           "2024-02-05", "2024-02-05", "2024-02-05", "2024-02-05",
                           "2024-02-05", "2024-02-05", "2024-02-06", "2024-02-06",
                           "2024-02-06", "2024-02-06", "2024-02-07", "2024-02-07",
                           "2024-02-07", "2024-02-08", "2024-02-08", "2024-02-08",
                           "2024-02-08", "2024-02-08", "2024-02-08", "2024-02-09",
                           "2024-02-09", "2024-02-09", "2024-02-09", "2024-02-09",
                           "2024-02-09", "2024-02-10", "2024-02-11", "2024-02-12",
                           "2024-02-12", "2024-02-12", "2024-02-12", "2024-02-12",
                           "2024-02-12", "2024-02-12", "2024-02-12", "2024-02-12",
                           "2024-02-13", "2024-02-13", "2024-02-13", "2024-02-13",
                           "2024-02-14", "2024-02-14", "2024-02-14", "2024-02-14",
                           "2024-02-14", "2024-02-15", "2024-02-15", "2024-02-15",
                           "2024-02-15", "2024-02-15", "2024-02-15", "2024-02-15",
                           "2024-02-15", "2024-02-15", "2024-02-16", "2024-02-16",
                           "2024-02-16", "2024-02-16", "2024-02-17", "2024-02-17",
                           "2024-02-17", "2024-02-18", "2024-02-18", "2024-02-19",
                           "2024-02-19", "2024-02-19", "2024-02-19", "2024-02-19",
                           "2024-02-19", "2024-02-19", "2024-02-19", "2024-02-20",
                           "2024-02-20", "2024-02-20", "2024-02-20", "2024-02-20",
                           "2024-02-20", "2024-02-20", "2024-02-21", "2024-02-21",
                           "2024-02-21", "2024-02-21", "2024-02-21", "2024-02-21",
                           "2024-02-21", "2024-02-22", "2024-02-22", "2024-02-22", 
                           "2024-02-22", "2024-02-23", "2024-02-23", "2024-02-23",
                           "2024-02-23", "2024-02-23", "2024-02-23", "2024-02-24",
                           "2024-02-24", "2024-02-25", "2024-02-26", "2024-02-26",
                           "2024-02-26", "2024-02-26", "2024-02-26", "2024-02-26",
                           "2024-02-26", "2024-02-27", "2024-02-27", "2024-02-27",
                           "2024-02-27", "2024-02-28", "2024-02-28", "2024-02-28",
                           "2024-02-29", "2024-02-29", "2024-02-29", "2024-02-29",
                           "2024-02-29", "2024-02-29", "2024-02-29", "2024-02-29",
                           
                           
                           
                                              # March surgery dates
                           "2024-03-01", "2024-03-01", "2024-03-01", "2024-03-01",
                           "2024-03-02", "2024-03-02", "2024-03-03", "2024-03-03",
                           "2024-03-04", "2024-03-04", "2024-03-04", "2024-03-04",
                           "2024-03-04", "2024-03-04", "2024-03-04", "2024-03-04",
                           "2024-03-04", "2024-03-04", "2024-03-04", "2024-03-05",
                           "2024-03-05", "2024-03-05", "2024-03-05", "2024-03-05",
                           "2024-03-05", "2024-03-05", "2024-03-05", "2024-03-05",
                           "2024-03-06", "2024-03-06", "2024-03-06", "2024-03-06",
                           "2024-03-06", "2024-03-06", "2024-03-06", "2024-03-06",
                           "2024-03-06", "2024-03-07", "2024-03-07", "2024-03-07",
                           "2024-03-07", "2024-03-07", "2024-03-07", "2024-03-07",
                           "2024-03-07"
                           )),
  
  
  stringsAsFactors = FALSE
)

print(surgery_data)

# Some experimenting with getting data. Possible uses later.

#surgery_data %>% count(species)
#surgery_data %>% count(surgery_type)
#surgery_data %>% count(surgery_date)
#surgery_data %>% group_by(species) %>% filter(age == max(age, na.rm = TRUE))
#mean(surgery_data$age)
