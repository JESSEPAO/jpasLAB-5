####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por JESSICA PAOLA AGUILAR SERVIN

# Laboratorio - PIVOTAR A LO LARGO

#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos

#instalar paquete tidyverse  y readr
install.packages("tidyverse")
install.packages("readr")


#Cargar paquete tidyverse y readr
library(tidyverse)
library(readr)


#CARGAR DATOS

library(readr)
TABLA1 <- read_csv("DOCTORADO 2022/SEMESTRE TRES ENE-JUL 23/COMPLEJIDAD ECONÓMICA/LABORATORIOS/JPAS-LAB5INPUT.csv")

names(TABLA1)

# 1. Pivotar tabla  "A LO LARGO"

t1_PIVOTANTE = TABLA1 %>%
  pivot_longer ( cols = c("Km,0"   ,   "Km,2"   ,   "Km,4"    ,  "Km,6"    ,  "Km,8"    , 
                           "km,10"   ,  "km,12"  ,   "km,14"   ,  "km,16"   ,  "km,18"   ,  "km,20" ,    "km,22",    
                           "km,24"  ,   "km,26" ), names_to = "iteracion", values_to = "ranking")
# Exportar resultado: tabla ordenada
write.csv(t1_PIVOTANTE, file = "ice_CHARTICULATOR.csv")
getwd()
setwd("C:/Users/gusta")
