% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addressNormalizer.R
\encoding{UTF-8}
\name{cleanAddress}
\alias{cleanAddress}
\title{Címek tisztítása}
\usage{
cleanAddress(x, alternative = FALSE)
}
\arguments{
\item{x}{tisztítandó címeket tartalmazó vektor}

\item{alternative}{logikai érték az \code{unAccent}-nek}
}
\value{
karakter vektor, \code{x} minden elemére egy javított verzió
}
\description{
Egy irányítószámból, településből, köztérből és házszámból álló
  címek egységes alakra hozása.
}
\section{TODO}{

A városok jelenleg egy lista alapján irányítoszámokból jönnek létre.
  Mivel egy irányítoszám több településhez tartozhat, ez a módszer
  adatvesztéssel jár. A listát városnév-tisztításra kéne csak
  használni.

Lehet, érdemes volna egy flag hogy daraboltan vagy paste-elve
  várjuk az eredményt (akkor pedig lista? vagy data.frame?
  vagy adja meg a user? és bármit megadhasson, vagy csak pár opcó
  legyen?)
}

\examples{
cimek <- c("8000 Siófok, Ballagó utca 14/a",
           "8000 Siofk, Ballagó utca 14/a 3. em 31.")
cleanAddress(cimek)
}
\author{
Hajdú László
}
