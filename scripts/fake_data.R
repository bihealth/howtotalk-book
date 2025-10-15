# This scripts prepares an Excel file containing fake data for a simple
# t.test - I will use the iris data set, actually.

library(tidyverse)

iris |>
  select("Sepal_Length" = Sepal.Length, Species) |>
  filter(Species %in% c("setosa", "versicolor")) |>
  write.csv("iris.csv")
