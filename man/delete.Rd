% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/api.R
\name{delete}
\alias{delete}
\title{Delete targets}
\usage{
delete(target_names, dependencies = FALSE, verbose = TRUE,
  remake_file = "remake.yml")
}
\arguments{
\item{target_names}{Names of targets to delete}

\item{dependencies}{Delete dependencies of the target too?  Use
with caution.}

\item{verbose}{Be verbose when loading the remake file and when
deleting targets.}

\item{remake_file}{Name of the remakefile (by default
\code{remake.yml})}
}
\description{
Delete targets.  Deletes both file and object targets, and removes
their entries from the remake database.  Using
\code{make("clean")} should probably be the general way to clean
up, but this might be useful if you have specific objects to
delete.  While files can be deleted in this way, deleting in the
file system is also fine.
}
\details{
This function ignores \code{cleanup_level} and will quite happily
delete things that have been flagged as \code{cleanup_level:
purge} - be careful using \code{dependencies=TRUE} as this will
delete all dependencies.  See \code{\link{list_dependencies}} to
see what would be deleted.

It is an error to try to delete a fake target (i.e., a target with
no rule but that exists to group other dependencies).  It is
\emph{not} an error to delete the \emph{dependencies} of such a
target.

If run with \code{verbose=TRUE} \code{delete} will print
information about targets that are deleted with a \code{DEL} for
each deleted target and an empty string if the target is already
nonexistant.
}

