% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R
\name{create_time_sequence}
\alias{create_time_sequence}
\title{Creates time sequences out of jam genre data}
\usage{
create_time_sequence(clearedData)
}
\arguments{
\item{clearedData}{A matrix of jams with genres as returned by the function add_genres_to_jams()}
}
\value{
sequences in STS (state sequences) format which contains one sequence per row
}
\description{
This function transforms the jam data with the attached genres into the time sequence format STS (state sequences). In comparison
to the original jam genre data that contains one observation per row the STS format contains one whole sequence per row. This function
needs to applied to the jam data to proceed them further.
}
\examples{
# Example for the case that all datasets are located in S:/
jams <- load_jams("S:/", loadExample = TRUE)
jams_with_genre <- add_genres_to_jams(jams, "S:/", loadExample = TRUE)
jam_sequence <- create_time_sequence(jams_with_genre)
}
