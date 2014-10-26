## This set of functions enables the inverse of a marix to be calculated,
## caching the result so that when the inverse is requested again the result
## is returned from the cache rather than being recalculated from scratch.

## This function creates a special "matrix" object that can cache it's inverse

makeCacheMatrix <- function(x = matrix()) {

}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve will retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
