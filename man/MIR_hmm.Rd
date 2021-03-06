% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R
\name{MIR_hmm}
\alias{MIR_hmm}
\title{Initialise a hidden markov model for music information retrieval with training data}
\usage{
MIR_hmm(training_data, K = 2, verbose = TRUE, tolerance = 0.001,
  itmax = 300)
}
\arguments{
\item{training_data}{training dataset as returned by the function split_data().}

\item{K}{The number of hidden states of the hidden markov model. See also hmm.discnp documentation for further information.}

\item{verbose}{Determines if the single EM algorithm steps should be printed to console.}

\item{tolerance}{The percentage change in log-likelihood that determines if the convergence citeria is met.}

\item{itmax}{The maximum number of iterations of the EM Algorithm.}
}
\value{
An object of the class MIR_hmm that contains a list of the following hidden markov models:
\item{discnp_hmm}{A Hidden Markov Model from the package hmm.discnp.}
\item{hmm}{A Hidden Markov Model from the package HMM.}
}
\description{
This function initialise a Hidden Markov Model for music information retrieval. Thereby the model is basically a wrapper
for two other HMM objects of different packages. The HMM package and the hmm.discnp package. hmm.discnp is used for fitting
the model to the training dataset while hmm is used to predict next genres.
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
print(hmm)
}
