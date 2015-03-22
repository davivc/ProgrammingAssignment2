## Makes a list with functions

makeCacheMatrix <- function(pMatrix = matrix()) {
  pInverse <- NULL;
  set <- function(y) {
    pMatrix <<- y;
    pInverse <<- NULL;
  }
  get <- function() {
    pMatrix;
  }
  setmatrix <- function(pSolve) {
    pInverse <<- pSolve;
  }
  getmatrix <- function() {
    pInverse;
  }
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix);
}



## solve matrix and store its inverse

cacheSolve <- function(pCacheMatrix) {
  cachedSolve <- pCacheMatrix$getmatrix();
  if(!is.null(cachedSolve)) {
    message("Getting cached data!");
    return(cachedSolve);
  }
  cachedSolve <- solve(pCacheMatrix$get());
  pCacheMatrix$setmatrix(cachedSolve);
  cachedSolve;
}
