% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/range_write2.R
\name{range_write2}
\alias{range_write2}
\title{(Over)write new data into a range (v2)}
\usage{
range_write2(
  data,
  ss,
  sheet = NULL,
  range = NULL,
  col_names = TRUE,
  reformat = FALSE
)
}
\arguments{
\item{data}{A data frame or a named list of data frames}

\item{ss}{Something that identifies a Google Sheet}

\item{sheet}{(If \code{data} is a data frame) Sheet to write into, in the sense of "worksheet" or "tab". You can identify a sheet by name, with a string, or by position, with a number. Ignored if the sheet is specified via range. If neither argument specifies the sheet, defaults to the first visible sheet.}

\item{range}{(If \code{data} is a data frame) Where to write. This range argument has important similarities and differences to range elsewhere (}

\item{col_names}{Logical, indicates whether to send the column names of data.}

\item{reformat}{Logical, indicates whether to reformat the affected cells. This default to \code{FALSE} meaning leaves prior formatting as is.}
}
\value{
The (list of) input ss, as an instance of sheets_id
}
\description{
This is a generic function that wraps around \code{googlesheets4::range_write()}.
This variation is pipe-friendly because \code{data} argument has been swapped to the first argument.
If the \code{data} is a named list of data.frame, each data.frame will be written to the corresponding
sheets that its names were matched to the names of list of data.frame, but if any names of \code{data} was not found
in sheet names, new sheets will have been created before the data.frame is written.
If the \code{data} is a data.frame, it will simply pass to \code{googlesheets4::range_write()}, and If \code{sheet} can't be found
in existing sheets, new \code{sheet} will be created, then \code{data} is written.
}
\examples{
NULL
}
