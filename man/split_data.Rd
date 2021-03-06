% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R
\name{split_data}
\alias{split_data}
\title{Split data into training and test dataset}
\usage{
split_data(data, split_ratio = 0.5)
}
\arguments{
\item{data}{a matrix of sequences in STS format as returend by the function create_time_sequence().}

\item{split_ratio}{The split ratio that determines how many percent of the original dataset should be used as training dataset.}
}
\value{
A list containing the training dataset at list index 1 and the test dataset at list index 2.
}
\description{
This function draws a random sample of a dataset as training dataset. The remaining non-drawn rows of the dataset will be the test dataset.
}
\examples{
# Example for the case that all datasets are located in S:/
jams <- load_jams("S:/", loadExample = TRUE)
jams_with_genre <- add_genres_to_jams(jams, "S:/", loadExample = TRUE)
jam_sequence <- create_time_sequence(jams_with_genre)
splitted_data <- split_data(jam_sequence)
training_dataset <- splitted_data[[1]]
test_dataset <- splitted_data[[2]]
}
