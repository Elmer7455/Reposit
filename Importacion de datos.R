
#importar datos en csv - -----------------------------------------------------------------------

data <- read.csv(file = "Datos/LA MOLINA 2014 POTATO WUE (FB) - fb.csv"
                 , header = TRUE, sep = ",")
data

#importar datos en tsv - -----------------------------------------------------------------------
archivo_tsv <- read.table(file="Datos/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv"
                          , sep = "\t", header = TRUE)
archivo_tsv

#importar datos en xlsx - -----------------------------------------------------------------------
install.packages("readxl")
library(openxlsx)
dtxl<- openxlsx::read.xlsx("")



archivo_xlsx <- read_excel(file="", sheet = 1)
