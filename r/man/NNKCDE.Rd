% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nnkcde.R
\name{NNKCDE}
\alias{NNKCDE}
\title{NNKCDE}
\description{
The NNKCDE class. Provides functions for computing and tuning
kernel conditional density estimates using nearest neighbors.
}
\section{Usage}{

\preformatted{fit <- NNKCDE$new(x_train, z_train)

fit$tune(x_validation, z_validation, k_grid, h_grid)
fit$predict(x_test, z_grid, k)
}
}

\section{Arguments}{

\code{x_train} The training covariates; either a vector or a matrix
  in which each row corresponds to an observation.

\code{z_train} The training responses; either a vector or a matrix
  in which each row corresponds to an observation.

\code{k} (optional) The number of neighbors.

\code{h} (optional) The bandwidth for kernel density estimation.
}

\section{Methods}{

\code{$new(x_train, z_train, k=NULL, h=NULL)} Initializes a new
  NNKCDE object.


\code{$tune(x_validation, z_validation, k_grid = NULL, h_grid =
  NULL)} Selects the parameters which minimize the CDE loss; sets
  the attributes k and h accordingly.

\code{$predict(x_test, z_grid, k = NULL, h = NULL} Returns a matrix
  of conditional density estimates cde[ii, jj] where ii indexes the
  observations and jj indexes the z_grid.
}

\examples{
\dontrun{
fit <- NNKCDE$new(x_train, z_train)
fit$tune(x_validation, z_validation, k_grid = c(5, 10, 15, 20))
fit$predict(x_test, z_grid, h = 0.1)
}
}
