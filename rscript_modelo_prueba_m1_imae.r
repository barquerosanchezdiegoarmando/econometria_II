library(dplyr)
library(ggplot2)
library(performance)
library(PerformanceAnalytics)
library(see)
library(qqplotr)
modelo_lineal_m1_imae <- lm(log(M1)~(IMAE), data = datos_m1_imae)
summary(modelo_lineal_m1_imae)
#herramienta para ver si el modelo me cumple todo 

check_autocorrelation(modelo_lineal_m1_imae)
check_collinearity(modelo_lineal_m1_imae)
check_heteroscedasticity(modelo_lineal_m1_imae)
check_distribution(modelo_lineal_m1_imae)
check_normality(modelo_lineal_m1_imae)
# modelo incumple en forma linlin y loglin absolutamente todos los supuestos

check <- check_normality(modelo_lineal_m1_imae)

normalitycheckplot <-plot(check, type = "qq")

check_model(modelo_lineal_m1_imae)