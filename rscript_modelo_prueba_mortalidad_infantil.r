library(dplyr)
library(ggplot2)
library(performance)
library(PerformanceAnalytics)
library(see)
library(readxl)
DatosMI <- read_excel("~/Documents/Universidad Nacional Ciclo I 2023/Econometría II/Tema I/DatosMI.xlsx")
View(DatosMI)
modelo_lineal_mortalidad_infantil <- lm(MI~PIBPC, TAM, data = DatosMI)
summary(modelo_lineal_mortalidad_infantil)

#Supuestos del modelo
check_autocorrelation(modelo_lineal_m1_imae)
check_collinearity(modelo_lineal_m1_imae)
check_heteroscedasticity(modelo_lineal_m1_imae)
check_distribution(modelo_lineal_m1_imae)
check_normality(modelo_lineal_m1_imae)

# hasta ahora no cumple ninguno de los supuestos 

check <- check_normality(modelo_lineal_m1_imae)

normalitycheckplot <-plot(check, type = "qq")
check_model(modelo_lineal_mortalidad_infantil)
