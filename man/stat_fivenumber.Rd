\name{stat_fivenumber}
\alias{stat_fivenumber}
\title{Calculate components of a five-number summary}
\usage{
  stat_fivenumber(mapping = NULL, data = NULL,
    geom = "boxplot", position = "dodge", na.rm = FALSE,
    ...)
}
\arguments{
  \item{na.rm}{If \code{FALSE} (the default), removes
  missing values with a warning.  If \code{TRUE} silently
  removes missing values.}

  \item{mapping}{The aesthetic mapping, usually constructed
  with \code{\link{aes}} or \code{\link{aes_string}}. Only
  needs to be set at the layer level if you are overriding
  the plot defaults.}

  \item{data}{A layer specific dataset - only needed if you
  want to override the plot defaults.}

  \item{geom}{The geometric object to use display the data}

  \item{position}{The position adjustment to use for
  overlappling points on this layer}

  \item{...}{other arguments passed on to
  \code{\link{layer}}. This can include aesthetics whose
  values you want to set, not map. See \code{\link{layer}}
  for more details.}
}
\value{
  A data frame with additional columns: \item{width}{width
  of boxplot} \item{ymin}{minimum} \item{lower}{lower
  hinge, 25\% quantile} \item{notchlower}{lower edge of
  notch = median - 1.58 * IQR / sqrt(n)}
  \item{middle}{median, 50\% quantile}
  \item{notchupper}{upper edge of notch = median + 1.58 *
  IQR / sqrt(n)} \item{upper}{upper hinge, 75\% quantile}
  \item{ymax}{maximum}
}
\description{
  The five number summary of a sample is the minimum, first
  quartile, median, third quartile, and maximum.
}
\section{Aesthetics}{
  \Sexpr[results=rd,stage=build]{ggplotJrnold:::rd_aesthetics("stat_fivenumber",
  ggplotJrnold:::StatFivenumber)}
}
\seealso{
  \code{\link{stat_boxplot}}
}

