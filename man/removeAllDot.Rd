% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/removeAllDot.R
\name{removeAllDot}
\alias{removeAllDot}
\title{Pontok eltűntetése}
\usage{
removeAllDot(x)
}
\arguments{
\item{x}{karakter vektor}
}
\value{
\code{x}-szel megegyező hosszú karakter vektor
}
\description{
Az összes pontot törli a sztringekből
}
\details{
\code{gsub("\\.", "", x)}
}
\examples{
removeAllDot("Az ellipszis argumentum: ...")

}
\author{
Hajdu László
}
