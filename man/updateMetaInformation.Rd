% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updateMetaInformation.R
\name{updateMetaInformation}
\alias{updateMetaInformation}
\alias{updateMetaInformation.meta_env}
\title{Update Meta Information Records}
\usage{
updateMetaInformation(meta, con, schema = "timeseries",
  tbl = "meta_data_unlocalized", locale = NULL, keys = NULL, quiet = F,
  chunksize = 10000)

\method{updateMetaInformation}{meta_env}(meta, con, schema = "timeseries",
  tbl = "meta_data_unlocalized", locale = NULL, keys = NULL, quiet = F,
  chunksize = 10000)
}
\arguments{
\item{meta}{object of class meta_env. Most likely
generated by \code{\link{addMetaInformation}}}

\item{con}{a PostgreSQL connection object}

\item{schema}{character name of the schema to write to. Defaults to 'timeseries'.}

\item{tbl}{character name of the meta information table to write to. 
Defaults to 'meta_data_unlocalized'.}

\item{locale}{character iso 2 digit locae description. Defaults to NULL.}

\item{keys}{character vector of time series. If specified only the selected 
meta information is stored. Defaults to NULL which stores all meta information
records in the environment.}

\item{quiet}{logical should function be quiet instead of returning a message when done? Defaults to FALSE.}

\item{chunksize}{integer max size of chunks to split large query in.}
}
\description{
When a time series is stored to the database by \code{\link{storeTimeSeries}} 
a minimal unlocalized (i.e. untranslatable) meta information record is being 
generated. This meta information can be supplement using the updateMetaInformation
methods. Depending on the class of the environment that holds the
meta information localized or unlocalized meta information is updated. 
NOTE: AVOID looping over this function. This functions accepts entire environments
and creates large SQL queries instead of looping over multiple small queries. 
In other words loops are moved to the databse level for massive speed gain.
}
