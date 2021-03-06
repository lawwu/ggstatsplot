% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggscatterstats.R
\name{ggscatterstats}
\alias{ggscatterstats}
\title{Scatterplot with marginal distributions}
\usage{
ggscatterstats(data = NULL, x, y, xlab = NULL, ylab = NULL,
  line.size = 1.5, line.color = "blue", marginal = TRUE,
  marginal.type = "histogram", marginal.size = 5, margins = c("both", "x",
  "y"), width.jitter = NULL, height.jitter = NULL, xfill = "#009E73",
  yfill = "#D55E00", centrality.para = NULL, type = "pearson",
  results.subtitle = NULL, title = NULL, caption = NULL, maxit = 500,
  k = 3, axes.range.restrict = FALSE, messages = TRUE)
}
\arguments{
\item{data}{Dataframe from which variables specified are preferentially to be
taken.}

\item{x}{A vector containing the explanatory variable.}

\item{y}{The response - a vector of length the number of rows of \code{x}.}

\item{xlab}{Label for \code{x} axis variable.}

\item{ylab}{Label for \code{y} axis variable.}

\item{line.size}{Size for the regression line.}

\item{line.color}{color for the regression line.}

\item{marginal}{Decides whether \code{ggExtra::ggMarginal()} plots will be
displayed; the default is \code{TRUE}.}

\item{marginal.type}{Type of marginal distribution to be plotted on the axes
(\code{"histogram"}, \code{"boxplot"}, \code{"density"}, \code{"violin"}).}

\item{marginal.size}{Integer describing the relative size of the marginal
plots compared to the main plot. A size of \code{5} means that the main plot is
5x wider and 5x taller than the marginal plots.}

\item{margins}{Character describing along which margins to show the plots.
Any of the following arguments are accepted: \code{"both"}, \code{"x"}, \code{"y"}.}

\item{width.jitter}{Degree of jitter in \code{x} direction. Defaults to 40\% of
the resolution of the data.}

\item{height.jitter}{Degree of jitter in \code{y} direction. Defaults to 40\% of
the resolution of the data.}

\item{xfill}{color fill for x axis distibution (default: \code{"#009E73"}).}

\item{yfill}{color fill for y axis distribution (default: \code{"#D55E00"}).}

\item{centrality.para}{Decides \emph{which} measure of central tendency (\code{"mean"}
or \code{"median"}) is to be displayed as vertical (for \code{x}) and horizontal (for
\code{y}) lines.}

\item{type}{Type of association between paired samples required
("\code{"parametric"}: Pearson's product moment correlation coefficient" or
"\code{"nonparametric"}: Spearman's rho" or "\code{"robust"}: Robust regression using
an M estimator"). Corresponding abbreviations are also accepted: \code{"p"} (for
parametric/pearson's), \code{"np"} (nonparametric/spearman), \code{"r"} (robust),
resp.}

\item{results.subtitle}{Decides whether the results of statistical tests are
to be displayed as subtitle.}

\item{title}{The text for the plot title.}

\item{caption}{The text for the plot caption.}

\item{maxit}{Maximum number of iterations for robust linear regression or
bootstrap samples to compute Spearman's rho confidence intervals (Default:
\code{500}).}

\item{k}{Number of decimal places expected for results.}

\item{axes.range.restrict}{Logical decides whther to restrict the axes values
ranges to min and max values of the \code{x} and \code{y} variables (Default: \code{FALSE}).}

\item{messages}{Decides whether messages references, notes, and warnings are
to be displayed (Default: \code{TRUE}).}
}
\description{
Scatterplots from \code{ggplot2} combined with marginal
histograms/boxplots/density plots with statistical details added as a
subtitle.
}
\examples{

# to get reproducible results from bootstrapping
set.seed(123)

# simple function call with the defaults
ggstatsplot::ggscatterstats(
data = datasets::mtcars,
x = wt,
y = mpg
)

# more detailed function call
ggstatsplot::ggscatterstats(
data = datasets::iris,
x = Petal.Length,
y = Sepal.Length,
centrality.para = 'median',
type = 'robust',
marginal.type = 'density'
)

}
\seealso{
\code{\link{grouped_ggscatterstats}} \code{\link{ggcorrmat}} \code{\link{grouped_ggcorrmat}}
}
\author{
Indrajeet Patil
}
