#' Removes the dimension of an object
#'
#' @param x An object with or without dimensions
#' 
#' @param ... Not used.
#'
#' @return The object with the dimension attribute removed.
#'
#' @details
#' This function does `attr(x, "dim") <- NULL`, which automatically also does
#' `attr(x, "dimnames") <- NULL`.
#' However, other attributes such as names attributes are preserved,
#' which is not the case if one do `dim(x) <- NULL`.
#'
#' @export
#' @aliases undim.default
#' @aliases undim.listenv
#' @keywords internal
undim <- function(x, ...) UseMethod("undim")

#' @export
undim.default <- function(x, ...) {  #nolint
  if (is.null(dim(x))) return(x)
  attr(x, "dim") <- NULL
  ## Dimnames seems to be unset above, but in case it changes ...
  attr(x, "dimnames") <- NULL
  x
}

#' @export
undim.listenv <- function(x, ...) {  #nolint
  x <- NextMethod()
  attr(x, "dim.") <- NULL
  attr(x, "dimnames.") <- NULL
  x
}
