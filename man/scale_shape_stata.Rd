\name{scale_shape_stata}
\alias{scale_shape_stata}
\title{Stata shape scale}
\usage{
  scale_shape_stata(...)
}
\arguments{
  \item{...}{common discrete scale parameters: \code{name},
  \code{breaks}, \code{labels}, \code{na.value},
  \code{limits} and \code{guide}.  See
  \code{\link{discrete_scale}} for more details}
}
\description{
  Shape scale palette based on the symbol palette in Stata,
  specifically the one in scheme s1mono.
}
\examples{
dsmall <- diamonds[sample(nrow(diamonds), 100), ]
(d <- qplot(carat, price, data=dsmall, shape=cut))
}

