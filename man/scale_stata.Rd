\name{scale_colour_stata}
\alias{scale_color_stata}
\alias{scale_colour_stata}
\alias{scale_fill_stata}
\title{Stata color scales}
\usage{
  scale_colour_stata(scheme = "s2color", ...)

  scale_fill_stata(scheme = "s2color", ...)

  scale_color_stata(scheme = "s2color", ...)
}
\arguments{
  \item{scheme}{\code{character}. One of "s2color",
  "s1rcolor", "s1color", or "mono".}

  \item{...}{Other arguments passed on to
  \code{\link{discrete_scale}} to control name, limits,
  breaks, labels and so forth.}
}
\description{
  Color scales using the color palettes from Stata.
}
\examples{
dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
(d <- qplot(carat, price, data=dsamp, colour=clarity)
               + theme_bw()
               + scale_color_stata())
(d <- qplot(carat, price, data=dsamp, colour=clarity)
               + theme_bw()
               + scale_color_stata("s1color"))
}

