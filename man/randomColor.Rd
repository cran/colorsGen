% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/randomColor.R
\name{randomColor}
\alias{randomColor}
\title{Random colors}
\usage{
randomColor(n, hue = "random", luminosity = "random")
}
\arguments{
\item{n}{number of colors to be generated}

\item{hue}{the desired hue; it can be a number between 0 and 360, a
hexadecimal color code, or a string taken among the possibilities
"random", "red", "orange", "yellow", "green", "blue", "purple", "pink",
or "monochrome"}

\item{luminosity}{the desired luminosity, a string taken among the
possible choices "random", "light", "bright", or "dark"}
}
\value{
A character vector of hexadecimal color codes.
}
\description{
Generate random colors.
}
\examples{
# pie chart ####
n <- 20
clrs <- randomColor(n, hue = "red", luminosity = "dark")
opar <- par(mar = c(0, 0, 0, 0))
pie(rep(1, n), col = clrs)
par(opar)

# Fermat spiral ####
n <- 400
theta <- seq(0, n/3, length.out = n)
x <- sqrt(theta) * cos(theta)
y <- sqrt(theta) * sin(theta)
pts <- cbind(x, y)
clrs <- randomColor(n, hue = "random", luminosity = "bright")
opar <- par(mar = c(0, 0, 0, 0), bg = "black")
plot(
  pts, asp = 1, xlab = NA, ylab = NA,
  axes = FALSE, pch = 19, col = clrs
)
par(opar)
}
