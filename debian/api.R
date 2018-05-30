library(plumber)
library(jsonlite)

# ------------- GET------------------
#* @get /
function() {
    ejemplo <- fromJSON(
    '{"fontanero" : "Debian (rocker)"}'
    )
  return(ejemplo)
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
  `valór_ácentos` <- 23
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

#* @get /4
function() {
  `valór_ácentos` <- 46
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

# ------------- POST ------------------
#* @post /5
function(
  data
) {
  ejemplo <- data
  return(ejemplo)
}

#* @post /6
function(
  data
) {
  ejemplo <- "ñ é í ó - algunos ejemplos"
  return(ejemplo)
}

#* @post /7
function(
  data
  ) {
  `valór_ácentos` <- 23 * data
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

#* @post /8
function(
  data
  ) {
  `valór_ácentos` <- 23 * data
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

#* @post /8
function(
  data
  ) {
  `valór_ácentos` <- 46 * data
  ejemplo <- `valór_ácentos`
  return(ejemplo)
}

