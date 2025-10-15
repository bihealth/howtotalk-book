# This scripts prepares an Excel file containing fake data for a simple
# t.test - I will use the iris data set, actually.

library(tidyverse)

iris |>
  select("Sepal_Length" = Sepal.Length, Species) |>
  filter(Species %in% c("virginica", "versicolor")) |>
  group_by(Species) |>
  slice(1:20) |>
  write.csv("iris.csv")
