# Minimal R package list for HYDRA‑EO
pkgs <- c(
  "terra","sf","stars","rgdal",
  "dplyr","tidyr","readr","purrr","stringr",
  "ggplot2","plotly",
  "caret","randomForest","e1071"
)
install.packages(setdiff(pkgs, installed.packages()[,1]))
