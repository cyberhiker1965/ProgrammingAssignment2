## This set of functions enables the inverse of a marix to be calculated,
## caching the result so that when the inverse is requested again the result
## is returned from the cache rather than being recalculated from scratch.

## This function creates a special "matrix" object that can cache it's inverse
## It contains functions to:
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  set <- function(y) {
           x <<- y
           mat <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) mat <<- solve
  getinverse <- function() mat
  list(set = set, get = get, setinverse = setinverse, 
        getinverse = getinverse )
  
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve will retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat <- x$getinverse()
  if (!is.null(mat)) {
          message("getting cached data")
          return(mat)
  }
  data <- x$get()
  mat <- solve( data, ...)
  x$setinverse(mat)
  mat
}
