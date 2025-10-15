# This scripts prepares an Excel file containing fake data for a simple
# t.test - I will use the iris data set, actually.

library(tidyverse)
library(writexl)

iris |>
  select("Sepal_Length" = Sepal.Length, Species) |>
  filter(Species %in% c("setosa", "versicolor")) |>
  write_xlsx("iris.xlsx")
