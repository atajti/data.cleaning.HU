#' Telefonszámok tisztítása
#'
#' Magyar telefonszámokra beállított telefonszámtisztítás
#'
#' @param chr_vect karakter vektor
#'
#' @details
#' Első lépésként csak a számokat tartja meg a szövegből. Amennyiben
#'   kevesebb mint hét számjegyet talál, illetve ha üres sztringet talál,
#'   figyelmeztet, és az értéket \code{NA}-ra állítja.
#' 
#' @section TODO:
#' Internacionalizálás: egy \code{lang} argumentum, ami ha meg van adva,
#'   megkeresné a \code{paste0(cleanPhones_*lang*)} függvényt, és annak
#'   a vektort.
#'
#' @return
#' \code{chr_vect}-tel megegyező hosszú karakter vektor
#'
#' @author
#' Tomasovszky Álmos
#'
#' @examples
#' cleanPhones("+36 (30) 1010101")
#'
#' @encoding UTF-8
#' @export


cleanPhones <- function(chr_vect){

  # nem számok kiszedése
  chr_vect_mod <- as.character(gsub("[^0-9]", "", chr_vect))
  
  # 7-nél rövidebbek
  if(any(nchar(chr_vect_mod) < 7 & !is.na(chr_vect_mod) & !(chr_vect_mod == ""))){

    warning(paste0("R\u00F6vid sz\u00E1mot tal\u00E1ltam, az els\u0151: ",
                   min(which(nchar(chr_vect_mod) < 7))))

    chr_vect_mod[nchar(chr_vect_mod) < 7] <- NA
  }
  # üres cellák keresése
  if(any(sapply(chr_vect_mod == "", isTRUE))){

    warning(paste0("\u0170res mez\u0151, az els\u0151: ",
                   min(which(chr_vect_mod == ""))))

    chr_vect_mod[chr_vect_mod == ""] <- NA
  }

  return(chr_vect_mod)
}
