.floatExpand <- function(x, base){
  .C("floatExpansionR", base=as.integer(base), x=as.double(x), result=list(0L))$result[[1]]
}


#' Float expansion
#' @description Expansion of a number between 0 and 1 in a given integer base.
#' @param x the number to be expanded
#' @param base the base of the expansion (integer)
#' @return The digits of the expansion in a vector.
#' @export
#' @examples
#' floatExpand(0.125)
#' floatExpand(1/3+1/27, base=3)
floatExpand <- function(x, base=2){
  if(x<0 || x>1) stop("x must be between 0 and 1")
  return(.floatExpand(x, base))
}

