
area_circulo <- function(radio) {3.14 * radio^2}
radio <- 5
area <- area_circulo(radio)







# - -----------------------------------------------------------------------

# - -----------------------------------------------------------------------
#IMC
calcular_imc <- function(peso, altura) {
  if (!is.numeric(peso) || !is.numeric(altura)) {
    return("Error: Peso y altura deben ser valores numéricos.")
  } else if (peso <= 0 || altura <= 0) {
    return("Error: Peso y altura deben ser valores positivos.")
  } else {
    # Cálculo del IMC
    imc <- peso / (altura^2)
    
    # Clasificación del IMC según los rangos de la OMS
    clasificacion <- ifelse(imc < 18.5, "Bajo peso",
        ifelse(imc < 24.9, "Normal",
           ifelse(imc < 29.9, "Sobrepeso",
                  ifelse(imc < 34.9, "Obesidad grado I",
                         ifelse(imc < 39.9, "Obesidad grado II", "Obesidad grado III")))))
    
    return(list(IMC = round(imc, 2), Clasificacion = clasificacion))
  }
}

peso <- 63      # en kilogramos
altura <- 1.62  # en metros

resultado <- calcular_imc(peso, altura)
cat("Tu IMC es:", resultado$IMC, "y tu clasificación es:", resultado$Clasificacion)

