## auxiliary functions for checkers
## check_vector
## check_matrix

#----------------------------------------------------------------------
#' @keywords internal
#' @noRd
check_vector <- function(atomlist, fname="mposterior"){
  cond = all(unlist(lapply(atomlist, inherits, "vector"))==TRUE)
  if (!cond){
    stop(paste0("* ",fname," : elements in 'atomlist' should ALL be either VECTORS or MATRICES."))
  }
}
#' @keywords internal
#' @noRd
check_matrix <- function(atomlist, fname="mposterior"){
  cond1 = all(unlist(lapply(atomlist, inherits, "matrix"))==TRUE)
  cond2 = (length(unique(unlist(lapply(atomlist, ncol))))==1)
  if (!(cond1&&cond2)){
    stop(paste0("* ",fname," : elements in 'atomlist' should all be matrices of same DIMENSION (=same number of columns)."))
  }
}