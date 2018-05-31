library(plumber)
library(jsonlite)
library(dplyr)

# ------------- GET------------------
#* @get /
function() {
    info <- toJSON(R.Version())
  return(info)
}

#* @get /1
function() {
    ejemplo <- fromJSON(
    '{"get" : "sin acentos"}'
    )
  return(ejemplo)
}

#* @get /2
function() {
    ejemplo <- fromJSON(
    '{"get" : "ñ é í ó - algunos ejemplos"}'
    )
  return(ejemplo)
}

#* @get /3
function() {
  `valór_ácentos` <- 23
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

#* @get /4
function() {
  ejemplo <- data.frame(`cólúmná_ácentos` = "cónténídó")
  return(ejemplo)
}

#* @get /5
function() {
  `valór_ácentos` <- 23
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

#* @get /5
function() {
  `valór_ácentos` <- 46
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

#* @get /6
function() {
  ejemplo <- data.frame(
    nombre_ascii = 5,
    otro_nombre_ascii = "algo")
  ejemplo <- ejemplo %>%
    rename(`cólúmná_ácentos` = nombre_ascii) %>%
    rename(`más_ácéntós` = otro_nombre_ascii)
  return(ejemplo)
}

# ------------- POST ------------------
#* @post /7
function(
  data
) {
  ejemplo <- data
  return(ejemplo)
}

#* @post /8
function(
  data
) {
  ejemplo <- "ñ é í ó - algunos ejemplos"
  return(ejemplo)
}

#* @post /9
function(
  data
  ) {
  `valór_ácentos` <- 23 * data
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

#* @post /10
function(data) {
  ejemplo <- data.frame(`cólúmná_ácentos` = "cónténídó")
  return(ejemplo)
}


#* @post /11
function(
  data
  ) {
  `valór_ácentos` <- 23 * data
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}


#* @post /12
function() {
  ejemplo <- data.frame(
    nombre_ascii = 5,
    otro_nombre_ascii = "algo")
  ejemplo <- ejemplo %>%
    rename(`cólúmná_ácentos` = nombre_ascii) %>%
    rename(`más_ácéntós` = otro_nombre_ascii)
  return(ejemplo)
}
