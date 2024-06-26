% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_kruskal.R
\name{batch_kruskal}
\alias{batch_kruskal}
\title{batch_kruskal}
\usage{
batch_kruskal(data, group, feature = NULL, feature_manipulation = FALSE)
}
\arguments{
\item{data}{A data frame containing the dataset.}

\item{group}{A character specifying the name of the grouping variable.}

\item{feature}{A character vector specifying the names of the feature variables. If not specified, all continuous features will be estimated.}

\item{feature_manipulation}{A logical value indicating whether feature manipulation should be performed. Default value is FALSE.}
}
\value{
A tibble containing the feature names, p-values, adjusted p-values, log10 p-values, and significance stars.
}
\description{
This function is used to efficiently perform the Kruskal-Wallis test on multiple continuous feature variables across different groups, providing statistical information such as p-values, adjusted p-values, and star ratings for significance.
}
\details{
This function performs the Kruskal-Wallis test on multiple continuous feature variables across different groups, providing statistical information such as p-values, adjusted p-values, and star ratings for significance.
}
\examples{

# Loading TCGA-STAD micro environment signature score data
data("sig_stad", package = "IOBR")
# Finding micro environmental scores associated with TCGA molecular subtype
batch_kruskal(data = sig_stad, group = "Subtype", feature = colnames(sig_stad)[69:ncol(sig_stad)])
}
