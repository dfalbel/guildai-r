% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runs.R
\name{resolve_run_ids}
\alias{resolve_run_ids}
\title{Resolve run ids}
\usage{
resolve_run_ids(runs = NULL, ...)
}
\arguments{
\item{runs}{a runs selection. If a data.frame, the columns \code{id} or \code{run}
are used as the run id. Otherwise, the argument is coerced to character
vector, and passed on to \code{guild} as a runs filter selection. Wrap the
string in \code{I()} to avoid quoting the argument for the shell.}

\item{...}{Other arguments passed on to \code{guild}}
}
\value{
A character vector of run ids.
}
\description{
\code{guild} supports a rich syntax for runs selection throughout the api. The
same selection syntax is shared by the \verb{ls_*} and \verb{runs_*} families of
functions: \code{ls_runs()}, \code{ls_scalars()}, \code{runs_comment()},
\code{runs_label()}, \code{runs_mark()}, \code{runs_tag()}
\code{runs_delete()},\code{runs_purge()}, \code{runs_restore()}, \code{runs_export()},
\code{runs_import()}.
}
\examples{
if(FALSE) {
resolve_run_ids() # returns all run ids.
resolve_run_ids(1) # last run
resolve_run_ids(1:2) # last 2 runs
resolve_run_ids(1:2, "--operation" = "train.py")

# three ways of getting ids for the currently staged or running runs
resolve_run_ids("--staged", "--running")
resolve_run_ids(c("--staged", "--running"))
resolve_run_ids(I("--staged --running"))

# resolve_run_ids() uses the same selection rules and syntax as ls_runs()
stopifnot(identical(
  resolve_run_ids(1),
  ls_runs(1)$id
))
}
}
