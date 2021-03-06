% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R
\name{test_model}
\alias{test_model}
\title{Test trained Hidden Markov Model with test data}
\usage{
test_model(trained_MIR_hmm, testdata)
}
\arguments{
\item{trained_MIR_hmm}{An object of the class MIR_hmm as returned by MIR_hmm().}

\item{testdata}{Testdata as returned by the function split_data().}
}
\value{
A matrix that contains the following two values for each row in the testdata:
\item{ACTUAL}{The actual last value of the sequence.}
\item{PREDICTED}{The predicted last value by the Hidden Markov Model.}
}
\description{
This function tests a Hidden Markov Model for Music Information retriaval by predicting
the last genre of each sequence in the testdata set. Based on the result of this function
the accuracy of a model can be calculated with the function calcAccuracy().
}
\examples{
# Example for the case that all datasets are located in S:/

# Prepare data
jams <- load_jams("S:/", loadExample = TRUE)
jams_with_genre <- add_genres_to_jams(jams, "S:/", loadExample = TRUE)
jam_sequence <- create_time_sequence(jams_with_genre)
splitted_data <- split_data(jam_sequence)
training_dataset <- splitted_data[[1]]
test_dataset <- splitted_data[[2]]

# Train model
hmm <- MIR_hmm(training_dataset)
test_results <- test_model(hmm,test_dataset)
}
