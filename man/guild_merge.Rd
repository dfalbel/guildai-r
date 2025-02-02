% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guild.R
\name{guild_merge}
\alias{guild_merge}
\title{Copy run files into the current project working directory}
\usage{
guild_merge(run = NULL, ...)
}
\arguments{
\item{run}{a run selection}

\item{...}{passed on to \code{guild}}
}
\description{
Copy run files into the current project working directory
}
\examples{
if(FALSE) {
guild_merge("--help")
ls_scalars() \%>\%
  dplyr::slice_max("epoch_acc") \%>\%
  guild_merge(I("--yes --replace"))
}
}
