library(tidyverse)
data <- read.csv("diabetes.csv")

datacopy <- data

datacopy$Glucose[is.na(datacopy$Glucose)] <-
  ceiling(mean(datacopy$Glucose, na.rm = TRUE))

cor_x <- as.numeric(datacopy$Glucose)
cor_y <- as.numeric(datacopy$Blood)

cor.test(cor_x, cor_y, method = "pearson")