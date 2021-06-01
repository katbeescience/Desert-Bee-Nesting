# This builds a table of bee thermal tolerances with custom aesthetics.
# Kathryn Busby
# mkbusby@email.arizona.edu
# June 1, 2021

# Install packages and load libraries.

install.packages("gt")
library(gt)

# Read in data file.

data <- read.csv(file="Data/thermal-tolerance-table.csv")

# Clean up the data.

colnames = c("Bee species",
              "Life stage",
              "Geographic Range (from gbif.org)",
              "Present in Deserts?",
              "Nesting Guild",
              "Thermal tolerance",
              "Method",
              "Thermal tolerance study source")

# Make a table using gt package.

table <- data %>%
  gt()

