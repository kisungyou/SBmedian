#' Wasserstein Median
#' 
#' @keywords internal
#' @noRd
mwass.euc <- function(splist, maxiter = 121, abstol = 1e-6, show.progress = FALSE){
  ##-----------------------------------------------------------------------------------------------
  ## Check the input
  if ((!is.list(splist))||(length(splist)<2)){
    stop(" * mwass.euc : 'splist' should be a LIST of length larger than 1.")
  }
  if (inherits(splist[[1]], "vector")){
    check_vector(splist, fname="mwass.euc")
    for (i in 1:length(splist)){
      splist[[i]] = matrix(splist[[i]], ncol = 1) # transform to matrices
    }
    vflag = TRUE
  } else if (inherits(splist[[1]], "matrix")){
    check_matrix(splist, fname="mwass.euc")
    vflag = FALSE
  } else {
    stop(" * mwass.euc : elements in 'splist' should ALL be either VECTORS or MATRICES.")
  }
}