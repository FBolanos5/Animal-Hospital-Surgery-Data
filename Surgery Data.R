# Author : Francisco Bolaños
# Date Started: 12/02/2024


# Libraries used:

library(dplyr)

# Functions:

find_mode <- function(df, column)
{
  df %>% count(!!sym(column)) %>% filter(n == max(n)) %>% pull(!!sym(column))
}

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
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", 
              "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Cat", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Cat", "Dog", "Dog",
              "Cat", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Cat",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Dog",
              "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Cat", "Dog", "Dog",
              "Dog", "Dog", "Cat", "Dog", "Dog", "Dog", "Dog",
              
              
                                      # April's species
              "Dog", "Cat", "Dog", "Dog", "Cat", "Dog", "Cat", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Cat", "Dog", "Cat", "Dog", "Dog", "Cat", "Dog", "Dog",
              "Dog", "Dog", "Cat", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog",
              "Dog", "Cat", "Cat", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Cat", "Dog", "Dog", "Dog",
              "Dog", "Cat", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Dog" ,"Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Dog", "Dog", "Cat", "Cat", "Dog", "Dog", "Dog", "Dog",
              "Cat", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Cat",
              "Dog", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Cat", "Cat", "Cat",
              "Cat", "Cat", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog", "Dog",
              "Dog", "Dog", "Cat", "Cat", "Cat", "Dog", "Dog", "Dog"
              
              
              
                                        # May's species
              
              
              ),
  
  
  
                                          # January's surgery types
  surgery_type = c("Spay", "Spay", "Neuter", "Laceration Repair", "Enucleation", 
                   "Pyometra", "Neuter", "Exploratory", "Abscess Repair", "Neuter",
                   "Laceration Repair", "TPLO", "Neuter", "Spay", "Exploratory", "Spay",
                   "Spay", "Mass Removal", "Dental", "Dental", "Exploratory", 
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
                   "Neuter", "Neuter", "Mass Removal", "Exploratory", "Laceration Repair",
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
                   "Dental", "Neuter", "Laceration Repair", "Neuter", "Spay", "Abscess Repair",
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
                   "Neuter", "Neuter", "Neuter", "Neuter", "Adenoma Removal", "Ablation",
                   "Abscess Repair", "Laceration Repair", "Spay", "Neuter", "Mass Removal",
                   "Spay", "Spay", "Femoral Head & Neck Repair", "Abscess Repair",
                   "Mass Removal", "Spay", "Mass Removal", "Mass Removal", "Dental",
                   "Spay", "Dental", "Aspiration", "Abscess Repair", "Spay", "Spay",
                   "Spay", "Abscess Repair", "Laceration Repair", "Fish Hook Removal", 
                   "Laceration Repair", "Mass Removal", "Dental", "Dental", "Pyometra", 
                   "Mass Removal",  "Mass Removal", "Pin Removal", "ACL Repair", 
                   "Dental", "Abscess Repair", "Abscess Repair", "TPLO", "Mass Removal",
                   "Mass Removal", "Spay", "Spay", "Spay", "Laceration Repair", 
                   "Laceration Repair", "Spay", "Mass Removal", "Cystotomy", "Neuter",
                   "Neuter", "Mass Removal", "Dental", "Tail Dock", "Enucleation",
                   "Dental", "Mass Removal", "Mass Removal", "Laceration Repair",
                   "Neuter", "Neuter", "Neuter", "Enterotomy", "Gastropexy", "Pyometra",
                   "Laceration Repair", "Laceration Repair", "Laceration Repair",
                   "Neuter", "Neuter", "Orchiopexy", "Dental", "Dental", "Neuter",
                   "Neuter", "Mass Removal", "Dental", "Dental", "Abscess Repair",
                   "Pyometra", "Spay", "Spay", "Neuter", "Neuter", "Hematoma", "Abscess Repair",
                   "Abscess Repair", "Spay", "Spay", "Neuter", "Spay", "Neuter",
                   "Mass Removal", "Neuter", "Ablation", "Urethrostomy", "Neuter",
                   "Mass Removal", "Laceration Repair", "Spay", "Mass Removal", "Mass Removal",
                   "Abscess Repair", "Mass Removal", "Laceration Repair", "Spay",
                   "Neuter", "Dental", "Neuter", "Neuter", "Mass Removal", "Pyometra",
                   "Dental", "Dental", "Laceration Repair", "Mass Removal", "Spay",
                   "Mass Removal", "Laceration Repair", "Neuter", "Soft Tissue", "Spay",
                   "Mass Removal", "Cherry Eye", "Mass Removal", "Abscess Repair",
                   "Laceration Repair", "Mass Removal", "Neuter", "Neuter", "Neuter",
                   "Neuter", "Neuter", "Mass Removal", "Spay", "Gastric Tube Insertion",
                   "Abscess Repair", "Cystotomy", "Laceration Repair", "Laceration Repair",
                   "Hematoma", "Laceration Repair",
                   
                   
                   
                                                # April's surgery types
                   "TPLO", "Dental", "Dental", "Neuter", "Mass Removal", "Pyometra",
                   "Urethrostomy", "Spay", "Hematoma", "Spay", "Laceration Repair",
                   "Laceration Repair", "Endoscopy", "Neuter", "Neuter", "Neuter",
                   "Neuter", "Laceration Repair", "Laceration Repair", "Neuter",
                   "Ablation", "Neuter", "Enema", "Abscess Repair", "Spay", "Spay",
                   "Neuter", "Dental", "Hemimandibulectomy", "Laceration Repair",
                   "Hematoma", "Pyometra", "Mass Removal", "Nasal Scope", 'Abscess Repair',
                   "Laceration Repair", "Spay", "Spay", "Neuter", "Mass Removal", "Dental",
                   "Dental", "Dystocia", "Neuter", "Medial Patella Luxation", "Cruciate Repair",
                   "Dental", "Dental", "Spay", "Mass Removal", "Dental", "Spay", "Mass Removal",
                   "Mass Removal", "Dental", "Neuter", "Spay", "Neuter", "Neuter",
                   "Dental", "Spay", "Dental", "Neuter", "Abscess Repair", "Spay", 
                   "Exploratory", "Mass Removal", "Laceration Repair", "C-Section",
                   "Mass Removal", "Laceration Repair", "Neuter", "Neuter", "Cherry Eye",
                   "Dental", "Dental", "Neuter", "Spay", "Neuter", "Dental", "Dental",
                   "Spay", "Spay", "Spay", "Mass Removal", "Enucleation", "Mass Removal",
                   "Cystotomy", "Abscess Repair", "Tracheal Wash", "Laceration Repair",
                   "Abscess Repair", "Spay", "Vulvoplasty", "Dental", "Mass Removal",
                   "Mass Removal", "Spay", "Mass Removal", "Spay", "Pyometra", "Spay",
                   "C-Section", "Laceration Repair", "Laceration Repair", "Abscess Repair",
                   "Neuter", "Cystotomy", "Dental", "Spay", "Dental", "Neuter", "Splenectomy",
                   "Laceration Repair", "Laceration Repair", "Spay", "Dental", "Mass Removal",
                   "Spay", "Neuter", "Cruciate Repair", "Spay", "Neuter", "Dental", "Dental",
                   "Spay", "Mass Removal", "Laceration Repair", "Dental", "Dental",
                   "Laceration Repair", "Abscess Repair", "Nasal Scope", " Laceration Repair",
                   "Abscess Repair", "Neuter", "Spay", "Mass Removal", "Laceration Repair",
                   "Gastric Tube Insertion", "Mass Removal", "Mass Removal", "Spay",
                   "Spay", "Laceration Repair", "Gastrotomy", "Gallbladder Removal",
                   "Abscess Repair"
                   
                   
                                            # May's surgery types
                   
                   
                   ),
  
  
  
                                            # January's pet ages 
  age = c(.5, 1, 1, .83, 6, 12, 4, 5, 1, 5, 5, 3, .5, 1, 6, .75, .75, 11, 3, 11, 2,
          8, 3, 3, .58, .75, 11, 5, 2, 5, 5, 5, 13, 13, 9, 8, 2, 1, .83, .83, 7, 
          13, .83, 9, 7, 11, 3, .67, 11, 11, .5, 2, .83, 3, 4, 3, 11, 2, .58, 8, 
          8, 1, .5, 12, 5, 9, 1, 8, 9, 4, 4, 7, .92, .75, .75, 6, 1, 3, 1, 1, 2, .75,
          6, 11, .5, .75, 8, 3, 3, 8, .66, 12, 12, 10, 7, .5, .83, 12, 1, 1, 12, 2,
          1, .58, .58, 10, 8, 14, 2, 7, 6, 11, 11, 11, 8, 7, 6, 2, 12, .58, .83, 1,
          11, 14, 10, 3, 2, 2, 10, 11, 14, .5, .66, .83, 13, 13, 10, 11, .66, 1,
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
          8, 4, 3, .92, .5, .58, 4, 1, .58, 11, 10, 10, 12, 8, 12, 9, 9, 9, 12, 6,
          14, 2, 13, 10, 1, 4, .5, 3, 9, 8, 8, 12, 2, 7, 5, 5, 9, 10, 10, 8, 13,
          11, 1, .5, 2, 2, 2, 11, 10, 6, 3, 1, 12, 12, 12, 14, 1, .58, 10, 15, 1,
          1, 4, 1, .5, .5, .83, 9, 1, 2, .75, 1, 1, 1, 1, 11, 9, 9, 9, 1, 10, 13,
          .5, 8, 13, 1, 5, 11, 1, 1, 2, 1, .5, 7, 13, 16, 7, 2, 14, 2, 12, 6, 7,
          10, .5, 7, 2, 6, 3, 6, 13, .75, 2, .5, 2, .75, 4, 5, 12, .25, 6, 11, 13,
          2, 11,
          
          
                                            # April's pet ages
          5, 9, 7, 1, 4, 6, 2, .5, 9, 1, 3, 3, 3, 1, .5, .66, .66, 2, 7, 11, 11, 
          .66, 13, 12, .92, .75, 1, 7, .66, 6, 13, 9, 9, 4, 4, .25, 11, 1, .75, 6,
          6, 13, .58, .58, 11, 11, 5, 19, 3, 12, 9, 10, 10, 9, 9, 1, .75, 5, 1, 10,
          .5, 4, .58, 7, .66, 2, 9, 3, 2, 16, 3, .66, .58, .83, 9, 9, .75, 1, .5, 7,
          7, 2, .42, 1, 3, 12, 8, 2, 8, 9, 4, 14, .92, .92, 7, 5, 13, 1, 5, .5, 6,
          1, 1, 2, 14, 2, 1, 3, 6, 1, 3, .58, 10, 4, 10, 3, 3 ,10, .83, .83, 7, .5,
          13, 5, 13, .66, 10, 7, 10, 5, 2, 10, 9, 11, 9, .75, 5, 11, 3, 6, 10, 10,
          .5, 2, 3, 4, 9, 9
          
          
          
                                            # May's pet ages
          
          ),
  
  
                                              # January surgery dates
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
                           "2024-03-07", "2024-03-08", "2024-03-08", "2024-03-08",
                           "2024-03-09", "2024-03-09", "2024-03-10", "2024-03-10",
                           "2024-03-11", "2024-03-11", "2024-03-11", "2024-03-11",
                           "2024-03-11", "2024-03-11", "2024-03-11", "2024-03-11",
                           "2024-03-11", "2024-03-11", "2024-03-11", "2024-03-12",
                           "2024-03-12", "2024-03-12", "2024-03-12", "2024-03-12",
                           "2024-03-12", "2024-03-12", "2024-03-12", "2024-03-13",
                           "2024-03-13", "2024-03-13", "2024-03-13", "2024-03-13",
                           "2024-03-14", "2024-03-14", "2024-03-14", "2024-03-14",
                           "2024-03-14", "2024-03-14", "2024-03-14", "2024-03-14",
                           "2024-03-15", "2024-03-15", "2024-03-15", "2024-03-16",
                           "2024-03-16", "2024-03-17", "2024-03-17", "2024-03-17",
                           "2024-03-17", "2024-03-18", "2024-03-18", "2024-03-18",
                           "2024-03-18", "2024-03-18", "2024-03-18", "2024-03-18",
                           "2024-03-18", "2024-03-18", "2024-03-18", "2024-03-18",
                           "2024-03-18", "2024-03-19", "2024-03-19", "2024-03-19",
                           "2024-03-19", "2024-03-19", "2024-03-19", "2024-03-19",
                           "2024-03-20", "2024-03-20", "2024-03-20", "2024-03-20",
                           "2024-03-20", "2024-03-21", "2024-03-21", "2024-03-21",
                           "2024-03-21", "2024-03-21", "2024-03-21", "2024-03-21",
                           "2024-03-22", "2024-03-22", "2024-03-22", "2024-03-22",
                           "2024-03-23", "2024-03-23", "2024-03-25", "2024-03-25",
                           "2024-03-25", "2024-03-25", "2024-03-25", "2024-03-25",
                           "2024-03-25", "2024-03-25", "2024-03-25", "2024-03-25",
                           "2024-03-25", "2024-03-26", "2024-03-26", "2024-03-26",
                           "2024-03-26", "2024-03-26", "2024-03-27", "2024-03-27",
                           "2024-03-27", "2024-03-27", "2024-03-27", "2024-03-27",
                           "2024-03-27", "2024-03-28", "2024-03-28", "2024-03-28",
                           "2024-03-29", "2024-03-29", "2024-03-29", "2024-03-29",
                           "2024-03-29", "2024-03-30", "2024-03-30", "2024-03-30",
                           "2024-03-30", "2024-03-31", "2024-03-31",
                           
                           
                                              # April surgery dates
                           "2024-04-01", "2024-04-01", "2024-04-01", "2024-04-01",
                           "2024-04-01", "2024-04-01", "2024-04-01", "2024-04-02",
                           "2024-04-02", "2024-04-02", "2024-04-02", "2024-04-02",
                           "2024-04-02", "2024-04-03", "2024-04-03", "2024-04-03",
                           "2024-04-03", "2024-04-03", "2024-04-04", "2024-04-04",
                           "2024-04-04", "2024-04-04", "2024-04-04", "2024-04-04",
                           "2024-04-05", "2024-04-05", "2024-04-05", "2024-04-05",
                           "2024-04-05", "2024-04-06", "2024-04-07", "2024-04-07",
                           "2024-04-07", "2024-04-07", "2024-04-07", "2024-04-07",
                           "2024-04-08", "2024-04-08", "2024-04-08", "2024-04-08",
                           "2024-04-08", "2024-04-08", "2024-04-08", "2024-04-08",
                           "2024-04-08", "2024-04-08", "2024-04-08", "2024-04-08",
                           "2024-04-09", "2024-04-09", "2024-04-09", "2024-04-09",
                           "2024-04-09", "2024-04-09", "2024-04-09", "2024-04-10",
                           "2024-04-10", "2024-04-10", "2024-04-10", "2024-04-11",
                           "2024-04-11", "2024-04-11", "2024-04-11", "2024-04-11",
                           "2024-04-12", "2024-04-12", "2024-04-12", "2024-04-12",
                           "2024-04-13", "2024-04-14", "2024-04-14", "2024-04-15",
                           "2024-04-15", "2024-04-15", "2024-04-15", "2024-04-15",
                           "2024-04-15", "2024-04-15", "2024-04-15", "2024-04-15", 
                           "2024-04-15", "2024-04-16", "2024-04-16", "2024-04-16",
                           "2024-04-17", "2024-04-17", "2024-04-17", "2024-04-17",
                           "2024-04-17", "2024-04-17", "2024-04-17", "2024-04-17",
                           "2024-04-18", "2024-04-18", "2024-04-18", "2024-04-18",
                           "2024-04-18", "2024-04-19", "2024-04-19", "2024-04-19",
                           "2024-04-19", "2024-04-19", "2024-04-19", "2024-04-20",
                           "2024-04-21", "2024-04-21", "2024-04-22", "2024-04-22", 
                           "2024-04-22", "2024-04-22", "2024-04-22", "2024-04-22",
                           "2024-04-22", "2024-04-22", "2024-04-22", "2024-04-23",
                           "2024-04-23", "2024-04-23", "2024-04-23", "2024-04-23",
                           "2024-04-24", "2024-04-25", "2024-04-25", "2024-04-25",
                           "2024-04-25", "2024-04-25", "2024-04-25", "2024-04-25", 
                           "2024-04-25", "2024-04-25", "2024-04-25", "2024-04-25",
                           "2024-04-25", "2024-04-25", "2024-04-26", "2024-04-26",
                           "2024-04-26", "2024-04-26", "2024-04-27", "2024-04-27",
                           "2024-04-29", "2024-04-29", "2024-04-29", "2024-04-29",
                           "2024-04-30", "2024-04-30", "2024-04-30", "2024-04-30"
                           
                           
                                              # May surgery dates
                           
                           
                           
                           )),
  
  
  stringsAsFactors = FALSE
)

print(surgery_data)

# Some experimenting with getting data. Possible uses later.

#surgery_data %>% count(species)
#surgery_data %>% count(surgery_type)
#surgery_data %>% count(surgery_date)
#surgery_data %>% group_by(species) %>% filter(age == min(age, na.rm = TRUE))
#mean(surgery_data$age)
mode <- find_mode(surgery_data, "surgery_date")
