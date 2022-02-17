#converting temperature from f to c

airtemps <- c(212,30.3,78,32) # in f

celsius1<- (airtemps[1]-32) *5/9
celsius2<- (airtemps[2]-32) *5/9

#write a function that does thsi for us

#a function in R is am object just like a dataframe or vector

#pass arguments, what the function is going to do goes in the function
#specify what the function is returning

#the type of variable that you pass and what you get out of it is very important
#this is designed to pass a vector, could in theory write one to 
#pass a dataframe. also r doesn't know how to do mathematical operations on 
#on strings or characters

fahr_to_celsius <- function(fahr){
  celsius <- (fahr - 32)*5/9
  return(celsius)
}

celsius4 <- fahr_to_celsius(airtemps[1])

#test
celsius1==celsius4

airtemps_c <- fahr_to_celsius(airtemps)

#could also do
fahr_to_celsius(fahr = airtemps)


#create a new function

#' Title
#'
#' @param airtemps_c 
#'
#' @return
#' @export
#'
#' @examples
celsius_to_fahr <- function (airtemps_c){
*9/5 + 32
  return(fahr)
}

airtemps_f <- celsius_to_fahr(airtemps_c) #or (celsius = airtemps_c)

or air

fahr == airtemps


####

# Documenting -------------------------------------------------------------


fahr_to_celsius <- function(fahr){
  celsius <- (fahr - 32)*5/9
  return(celsius)
}


#' Fahr to Cels
#'
#' @param fahr Temperature in Fahrenheit as a vector
#'
#' @return Temperatue in Celsius
#' @export
#'
#' @examples fahr_to_celsius(c(212,32))
fahr_to_celsius <- function(fahr){
  celsius <- (fahr - 32)*5/9
  return(celsius)
}




# More Complex ------------------------------------------------------------

convert_temps<- function(fahr) {
  celsius<- (fahr-32)*5/9
  kelvin <- celsius + 273.15
  return(list(fahr = fahr, celsius = celsius, kelvin = kelvin))
}

convert_temps(airtemps)


#return as a dataframe

convert_temps<- function(fahr) {
  celsius<- (fahr-32)*5/9
  kelvin <- celsius + 273.15
  return(data.frame(fahr = fahr, 
                    celsius = celsius, 
                    kelvin = kelvin))
}

convert_temps(airtemps)


#in the function itself, instead of using fahr of the same you are
#passing through the function, use one letter, which makes it looks
#like an algebraic equation. easier to tell what your variable is